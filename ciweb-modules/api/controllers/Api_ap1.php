<?php

class Api_ap1 extends Bks_Controller {

    function __construct() {
        $config = array('modules' => 'api', 'jsfiles' => array(''));
        parent::__construct($config);
        $ApiMdl = New Apimdl;
        $this->auth = $this->session->userdata( 'auth' );
        $this->userId = $this->auth['id'];
    }
    
    function ap1_sha1(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $postData['id'];
        $method = $postData['method'];
        $get_store = $this->db->select('')->where(array('id' => $id))->get('v_m_company_store')->result();
        if(count($get_store) > 0){
            $merchant_name =  $get_store[0]->store_reference_name;
            $date = Date('Ymd');
            $param = $method.'|'.$merchant_name.'|'.$date;
            $sha1 = sha1($param);
            $json['parameter'] = $param;
            $json['sha1'] = $sha1;
            $json['base64key'] = 'k3yPR0D#P1!16807';
            echo json_encode($json);
        } else {
            $result = json_encode(array('Msg' => 'data store IS NULL.!'));
            echo $result;
        }
    }

    function ap1_encrypt_store(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $postData['id'];
        $sign = $postData['sign'];        
        $get_store = $this->db->select('')->where(array('id' => $id, 'register_status' => '0'))->get('v_m_company_store')->result();
        if(count($get_store) > 0){
            $merchant_name =  $get_store[0]->store_reference_name;
            $terminal = $get_store[0]->store_reference_terminal;
            $merchant_address = $get_store[0]->store_reference_address;
            $airport = $get_store[0]->airport_code;
            $merchant_type = $get_store[0]->company_type;
            if($merchant_name !== null && $terminal !== null){
                $data = array(
                            'merchant_name' => $merchant_name,
                            'merchant_address' => $merchant_address,
                            'terminal' => $terminal,
                            'airport' => $airport,
                            'merchant_type' => $merchant_type,
                            'sign' => $sign
                        );
                $data = json_encode($data);
                echo $data;
            } else {
                $result = json_encode(array('merchant_name' => 'store name IS NULL.!', 'terminal' => 'terminal IS NULL.!'));
                echo $result;
            }
        } else {
            $result = json_encode(array('Msg' => 'data store IS NULL.!'));
            echo $result;
        }
    }

    function ap1_encrypt_trx_reccord(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $postData['id'];
        $sign = $postData['sign'];
        if($id !== null){
            $status_trx = 1;
            $get_tr_header = $this->db->select('*')
                                           ->where(array('id'=>$id, 'status' => $status_trx))
                                           ->get('v_tr_header')
                                           ->result_array();
            if(count($get_tr_header) > 0){
                $store_id = $get_tr_header[0]['store_id'];
                $get_store = $this->db->query("SELECT * FROM v_m_company_store WHERE id = $store_id")->result();
                if(count($get_store) > 0){                    
                    $tr_number = $get_tr_header[0]['tr_number'];
                    $merchant_name = $get_store[0]->store_reference_name;
                    $terminal = $get_store[0]->store_reference_terminal;
                    if($merchant_name !== null && $terminal !== null){
                        $get_tr_detail = $this->db->select('sequence,
                                                       valas_id,
                                                       valas_code,
                                                       valas_name,
                                                       (nominal * sheet) AS amount,
                                                       price,
                                                       subtotal')
                                                ->where(array('header_id'=>$id, 'status' => $status_trx))
                                                ->get('v_tr_detail');    
                        if(count($get_tr_detail) > 0){                     
                            $data_item = [];
                            $subtotal = 0;
                            foreach($get_tr_detail->result_array() as $row) {
                                $subtotal = $subtotal + (float) $row['subtotal'];
                                $item = array(                  
                                            'uom' => 'sheet',
                                            'category_code' => '0',
                                            'qty' => $row['amount'],
                                            'name' => $row['valas_name'],
                                            'vat' => '0',
                                            'tax' => '0',
                                            'disc' => '0',
                                            'category' => '0',
                                            'sku' => '1',
                                            'unit_price' => $row['price'],
                                            'barcode' => $row['valas_code'],
                                        );
                                array_push($data_item, $item);                                                        
                            }
                            $data = array(
                                'amount' => "$subtotal",                            
                                'item' => $data_item,
                                'vat_fee' => '0',
                                'service_fee' => '0',
                                'sign' => $sign,
                                'merchant_name' => $merchant_name,
                                'airport_destination' => '',
                                'cashier_name' => $get_tr_header[0]['cashier_name'],
                                'terminal' => $terminal,
                                'shopping_type' => 'ITEM',
                                'trx_date' => $get_tr_header[0]['created'],
                                'order_code' => $tr_number,
                                'payment_type' => $get_tr_header[0]['payment_type_name'],
                                'tax_fee' => '0',
                                'flight_no' => '',
                                'nationality' => '',
                                'rate' => '1',
                                'total_amount' => "$subtotal",
                                'currency' => 'IDR',
                                'disc' => '0'
                            );                        
                            $data = json_encode($data);
                            echo $data;
                        } else {
                            $result = json_encode(array('Msg' => 'data detail IS NULL.!'));
                            echo $result;            
                        }                        
                    } else {
                        $result = json_encode(array('merchant_name' => 'store name IS NULL.!', 'terminal' => 'terminal IS NULL.!'));
                        echo $result;                        
                    }                
                } else {
                    $result = json_encode(array('Msg' => 'data store IS NULL.!'));
                    echo $result;
                }                
            } else {
                $result = json_encode(array('Msg' => 'data header IS NULL.!'));
                echo $result;
            }
        } else {
            $result = json_encode(array('Msg' => 'id IS NULL.!'));
            echo $result;
        }        
    }

    function ap1_encrypt_trx_advice(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $postData['id'];
        $sign = $postData['sign'];
        if($id !== null){
            $status_trx = 3;
            $get_tr_header = $this->db->select('*')
                                           ->where(array('id'=>$id, 'status' => $status_trx))
                                           ->get('v_tr_header')
                                           ->result_array();
            if(count($get_tr_header) > 0){
                $store_id = $get_tr_header[0]['store_id'];
                $get_store = $this->db->query("SELECT * FROM v_m_company_store WHERE id = $store_id")->result();
                if(count($get_store) > 0){
                    $tr_number = $get_tr_header[0]['tr_number'];
                    $merchant_name = $get_store[0]->store_reference_name;
                    $data = array(    
                        'order_code' => $tr_number,
                        'sign' => $sign,
                        'merchant_name' => $merchant_name
                    );                    
                    $data = json_encode($data);                    
                    echo $data;
                } else {
                    $result = json_encode(array('Msg' => 'store id not found.!'));
                    echo $result;
                }
            }
        } else {
            $result = json_encode(array('Msg' => 'id isnull.!'));
            echo $result;
        }
    }

    function ap1_encrypt_trx_refund(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $postData['id'];
        $sign = $postData['sign'];
        if($id !== null){            
            $get_tr_header = $this->db->select('*')
                                            ->where(array('id'=>$id))
                                            ->where_in('status', ['3','4'])
                                            ->get('v_tr_header')
                                            ->result_array();
            if(count($get_tr_header) > 0){
                $store_id = $get_tr_header[0]['store_id'];
                $get_store = $this->db->query("SELECT * FROM v_m_company_store WHERE id = $store_id")->result();
                if(count($get_store) > 0){                    
                    $tr_number = $get_tr_header[0]['tr_number'];
                    $merchant_name = $get_store[0]->store_reference_name;
                    $data = array(
                        'order_code' => $tr_number,
                        'sign' => $sign,
                        'merchant_name' => $merchant_name
                    );                       
                    $data = json_encode($data);
                    echo $data;                           
                } else {
                    $result = json_encode(array('Msg' => 'store id not found.!'));
                    echo $result;
                }
            }
        } else {
            $result = json_encode(array('Msg' => 'id isnull.!'));
            echo $result;
        }        
    }

    function ap1_post_api(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();        

        $id = null;
        if(isset($postData['id'])){
            $id = $postData['id'];
        }
        
        $method = null;
        if(isset($postData['method'])){
            $method = $postData['method'];
        }

        $dataenc = null;
        if(isset($postData['dataenc'])){
            $dataenc = str_replace("'","",$postData['dataenc']);
        }

        if($method === 'register'){            
            // $url = 'https://ap1.yindjin.tech:16807/register/'; // Trial
            // $url = 'https://ap1.yindjin.tech:16814/register/'; // UAT
            $url = 'https://poss.ap1.co.id:16807/register/'; // Production

        } else if($method === 'trxrecord'){
            // $url = 'https://ap1.yindjin.tech:16807/trxrecord/'; // Trial
            // $url = 'https://ap1.yindjin.tech:16814/trxrecord/'; // UAT
            $url = 'https://poss.ap1.co.id:16807/trxrecord/'; // Production            

        } else if($method === 'trxadvice'){
            // $url = 'https://ap1.yindjin.tech:16807/trxadvice/'; // Trial
            // $url = 'https://ap1.yindjin.tech:16814/trxadvice/'; // UAT
            $url = 'https://poss.ap1.co.id:16807/trxadvice/'; // Production

        } else if($method === 'refundtrx'){
            // $url = 'https://ap1.yindjin.tech:16807/refundtrx/'; // Trial
            // $url = 'https://ap1.yindjin.tech:16814/refundtrx/'; // UAT
            $url = 'https://poss.ap1.co.id:16807/refundtrx/'; // Production
        }
        
        if(strlen($dataenc) > 0){
            if($url){                
                $result = $this->Apimdl->callcurl($url, $dataenc, null);                       
                echo $result;
            }
        } else {
            echo 'data encrypt empty.!';
        }        
    }

    function ap1_api_getresult(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = $postData['id'];
        $result = $postData['result'];
        $method = $postData['method'];
        $resArr = json_decode($result,true);
        $resp_code = $resArr['rc'];
        $resp_Message = $resArr['rcMessage'];
        $resp_timestamp = $resArr['timestamp'];
        $this->db->insert('trx_api_ap1_log',
                            array(
                                'header_id' => $id,
                                'method' => $method,
                                'ap1_rc_code' => $resp_code,
                                'ap1_rc_message' => $resp_Message,
                                'ap1_timestamp' => date_format(date_create($resp_timestamp),"Y/m/d H:i:s"),
                                'created' => date('Y-m-d H:i:s', time()),
                                'createdby' => $this->userId
                                )
                        );
        if($resp_code === '00' || $resp_code === '07'){
            /* 00 - Success */
            /* 07 - Duplicate Data */
            if($method === 'trxrecord'){
                $status_trx = 3;
            }
            if($method === 'trxadvice'){
                $status_trx = 4;
            }
            if($method === 'refundtrx'){
                $status_trx = 2;
            }
            if(isset($status_trx)){
                $this->db->trans_begin();
                $this->db->where(array('id' => $id));
                $this->db->update('tr_header', array('status' => $status_trx, 'updated' => date('Y-m-d H:i:s', time()), 'updatedby' => $this->userId) );

                $this->db->where(array('header_id' => $id));
                $this->db->update('tr_detail', array('status' => $status_trx, 'updated' => date('Y-m-d H:i:s', time()), 'updatedby' => $this->userId) );        

                if ($this->db->trans_status() === FALSE) {
                    $this->db->trans_rollback();
                    $err = $this->db->error();
                    $json['msg'] = $err['code'] . '<br>' . $err['message'];
                } else {
                    $this->db->trans_commit();
                }
            }   
        }        
    }    

}
