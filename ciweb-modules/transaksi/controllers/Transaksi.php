<?php

class Transaksi extends Bks_Controller {
    
    function __construct() {
        $config = array('modules' => 'transaksi', 'jsfiles' => array('transaksi'));
        parent::__construct($config);
        $this->auth = $this->session->userdata( 'auth' );
        $this->userId = $this->auth['id'];
        $this->company_id = $this->auth['company_id'];
    }
    
    function index(){
        $this->libauth->check(__METHOD__);
        $this->template->title('New');
        $this->template->set('tsmall', 'Transaction');
        $this->template->set('icon', 'fa fa-edit');
        $data['auth'] = $this->auth;
        $data['profilusaha'] = $this->Bksmdl->getprofileusaha($this->uri->segment(4), null);
        $this->template->build('transaksi/transaksi_v', $data);
    }    
    
    function generate_code_temp($company_id, $store_id, $tr_id, $tanggal){
        $Number = 1;
        $thn = SUBSTR($tanggal,0,4);
        $bln = SUBSTR($tanggal,5,2);
        $branchcode = sprintf("%02d", $company_id);
        $storecode  =sprintf("%02d", $store_id);
        $trcode = sprintf("%02d", $tr_id);
        $sql = $this->db->query("SELECT max(right(tr_number,4)) as id 
                                 FROM log_a
                                 WHERE company_id = $company_id
                                 AND store_id = $store_id 
                                 AND tr_id = $tr_id
                                 AND YEAR(tr_date) = $thn 
                                 AND MONTH(tr_date) = $bln 
                                 ")->result();
        if (count($sql) > 0) {
            foreach ($sql as $data) {
                $Number = intval($data->id) + 1;
            }
        }
        return SUBSTR($thn,2,2) . $bln . '-' . $branchcode . $storecode . '-' . $trcode . sprintf("%04d", $Number);
    }    
    
    function generate_code_confirm($company_id, $store_id, $tr_id, $tanggal) {
        $Number = 1;
        $thn = SUBSTR($tanggal,0,4);
        $bln = SUBSTR($tanggal,5,2);
        $branchcode = sprintf("%02d", $company_id);
        $storecode  =sprintf("%02d", $store_id);
        $trcode = sprintf("%02d", $tr_id);
        $sql = $this->db->query("SELECT max(right(tr_number,4)) as id 
                                 FROM tr_header 
                                 WHERE company_id = $company_id
                                 AND store_id = $store_id
                                 AND tr_id = $tr_id
                                 AND YEAR(tr_date) = $thn 
                                 AND MONTH(tr_date) = $bln 
                                 ")->result();
        if (count($sql) > 0) {
            foreach ($sql as $data) {
                $Number = intval($data->id) + 1;
            }
        }
        return SUBSTR($thn,2,2) . $bln . '-' . $branchcode . $storecode . '-' . $trcode . sprintf("%04d", $Number);
    }
   
    function insert_header_temp(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);        
        $postData = $this->input->post();

        $tr_id = $postData['tr_id'];
        $postData['company_id'] = $this->company_id;
        if(isset($postData['tr_date'])){
            $postData['tr_date'] = revDate($postData['tr_date']);
        } else {
            $postData['tr_date'] = Date('Y-m-d');
        }        
        $postData['tr_number'] = $this->generate_code_temp($this->company_id, $postData['store_id'], $tr_id, $postData['tr_date']);
        $postData['createdby'] = $postData['user_id'];
        $postData['status'] = '1';
        unset($postData['user_id']);       
        
        $this->db->trans_begin();
        $this->Bksmdl->table = 'log_a';        
        $response = $this->Bksmdl->insert($postData);
        $id = $this->db->insert_id();
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $this->db->trans_commit();
            $json['id'] = $id;
            $json['msg'] = '1';
            echo json_encode($json);
        }
    }
    
    function update_header_temp(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);        
        $postData = $this->input->post();

        $id = $postData['id'];
        $postData['company_id'] = $this->company_id;
        $postData['updatedby'] = $postData['user_id'];
        $postData['status'] = '1';   
        unset($postData['user_id']);   

        $this->db->trans_begin();
        $this->Bksmdl->table = 'log_a';
        $response = $this->Bksmdl->update($postData, 'id=' . $id);
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $this->db->trans_commit();
            $json['msg'] = '1';
            echo json_encode($json);
        }
    }    
    
    function insert_detail_temp(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);                
        $postData = $this->input->post();

        $header_id = $postData['header_id'];
        $tr_id = $postData['tr_id'];

        $postData['nominal'] = str_replace('.','', $postData['nominal']);
        $postData['sheet'] = str_replace('.','', $postData['sheet']);        
        $postData['price'] = str_replace('.','', $postData['price']);
        $postData['subtotal'] = str_replace('.','', $postData['subtotal']);
        $postData['createdby'] = $postData['user_id'];
        $postData['updatedby'] = $postData['user_id'];
        $postData['status'] = '1';  
        
        unset($postData['tr_id']);
        unset($postData['user_id']);
        
        $this->db->trans_begin();
        $this->Bksmdl->table = 'log_b';
        $response = $this->Bksmdl->insert($postData);
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $this->db->trans_commit();
            $json['msg'] = '1';
            echo json_encode($json);
        }
    }
    
    function delete_detail_temp(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);        
        $postData = $this->input->post();

        $id = json_decode($postData['id']);
        
        $this->db->trans_begin();
        $this->Bksmdl->table = 'log_b';
        $status = $this->Bksmdl->delete('id', $id);        
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $this->db->trans_commit();
            $json['msg'] = '1';
            echo json_encode($json);
        }
    }
    
    function tampil_header_temp(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $customer_id = json_decode($postData['customer_id']);
        $tr_id = json_decode($postData['tr_id']);
        $id = json_decode($postData['id']);
        $query = $this->db->query("SELECT * FROM v_loga WHERE customer_id = " . $customer_id . " AND tr_id = " . $tr_id . " AND  id= " . $id)->result();
        echo json_encode($query, true);
    }
    
    function tampil_detail_temp(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $customer_id = json_decode($postData['customer_id']);
        $tr_id = json_decode($postData['tr_id']);
        $header_id = json_decode($postData['header_id']);
        $query = $this->db->query("SELECT * FROM v_logb WHERE customer_id = " . $customer_id . " AND tr_id = " . $tr_id . " AND header_id= " . $header_id ." ORDER BY valas_id, price ASC")->result();
        echo json_encode($query, true);
    }
    
    function tampil_nasabah(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $customer_id = json_decode($postData['customer_id']);
        $query = $this->db->query("SELECT * FROM m_customer WHERE id = " . $customer_id . " LIMIT 1")->result();
        echo json_encode($query, true);
    }
    
    function getstockbyid(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $company_id = $postData['company_id']; 
        $store_id = $postData['store_id'];
        $tahun    = (int) Date('Y');
        $bulan    = (int) Date('m');
        $valas_id = $postData['valas_id'];
        $nominal = str_replace('.','', $postData['nominal']);
        $query = $this->db->query("SELECT nominal,
                                          last_stock_sheet, 
                                          IF(last_stock_sheet IS NOT NULL, (nominal * last_stock_sheet),0 ) AS last_stock_amount
                                          FROM v_stock9
                                   WHERE company_id = $company_id 
                                   AND store_id = $store_id                                   
                                   AND stock_year = $tahun 
                                   AND stock_month = $bulan
                                   AND valas_id = $valas_id 
                                   AND nominal = $nominal")->result();
        echo json_encode($query, true);
    }
    
    function getratebyid() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $valas_id = $postData['valas_id'];
        $tr_date  = Date('Y-m-d');
        $tr_id = $postData['tr_id'];        
        if($tr_id == '1'){
            $query = $this->db->query("SELECT rate_buy AS rate_today, 
                                              price_buy_bot AS rate_today_bot, 
                                              price_buy_top AS rate_today_top
                                              FROM v_rate_daily
                                    WHERE company_id = $this->company_id
                                    AND valas_id = $valas_id
                                    AND rate_date = '$tr_date'")->result();
            echo json_encode($query, true);
        } else {
            $query = $this->db->query("SELECT rate_sale AS rate_today,
                                              price_sale_bot AS rate_today_bot,
                                              price_sale_top AS rate_today_top 
                                              FROM v_rate_daily
                                    WHERE company_id = $this->company_id
                                    AND valas_id = $valas_id
                                    AND rate_date = '$tr_date'")->result();
            echo json_encode($query, true);
        }        
    }    
    
    function getshowid(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $ref_id = $postData['ref_id'];
        $query = $this->db->query("SELECT id, tr_id, customer_id FROM tr_header WHERE ref_id = $ref_id")->result();
        echo json_encode($query, true);
    }
    
    function cancel_task(){
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);                
        $postData = $this->input->post();

        $ref_id = json_decode($postData['id']);
        $tr_id = json_decode($postData['tr_id']);

        $this->db->trans_begin();
        $this->db->where(array('id' => $ref_id));
        $this->db->update('log_a', array('status' => 2, 'updated' => date('Y-m-d H:i:s', time()), 'updatedby' => $this->userId) );
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $this->db->where(array('header_id' => $ref_id));
            $this->db->update('log_b', array('status' => 2, 'updated' => date('Y-m-d H:i:s', time()), 'updatedby' => $this->userId) );

            $this->db->trans_commit();
            $json['msg'] = '1';
            echo json_encode($json);
        }            
    }
    
    function confirm_task() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);                
        $postData = $this->input->post();

        $ref_id = $postData['id'];
        $tr_id = $postData['tr_id'];

        $this->db->trans_begin();
        $response = $this->task_insert_tr_header($ref_id, $tr_id);
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $err = $this->db->error();
            $json['msg'] = $err['code'] . '<br>' . $err['message'];
            echo json_encode($json);
        } else {
            $get_header_id = $this->db->select('*')->where('ref_id',$ref_id)->get('tr_header')->result_array();
            $tr_header_id = $get_header_id[0]['id'];
            $company_id = $get_header_id[0]['company_id'];
            $store_id = $get_header_id[0]['store_id'];
            $tr_date = $get_header_id[0]['tr_date'];

            $this->db->where(array('id' => $ref_id));
            $this->db->update('log_a', array('ref_id ' => $tr_header_id ,'status' => 3, 'updated' => date('Y-m-d H:i:s', time()), 'updatedby' => $this->userId) );

            $this->db->where(array('header_id' => $ref_id));
            $this->db->update('log_b', array('status' => 3, 'updated' => date('Y-m-d H:i:s', time()), 'updatedby' => $this->userId) );

            $select = $this->db->select('valas_id,nominal')->where('header_id',$tr_header_id)->get('tr_detail');
            if($select->num_rows()){
                $tahun = (int) SUBSTR($tr_date,0,4);
                $bulan = (int) SUBSTR($tr_date,5,2);
                foreach($select->result_array() as $row) {
                    $valas_id = $row['valas_id'];
                    $nominal  = $row['nominal'];
                    $this->Bksmdl->generate_stock($company_id, $store_id, $tahun, $bulan, $valas_id, $nominal);
                }
            }
    
            $this->db->trans_commit();
            $json['msg'] = '1';
            $json['tr_header_id'] = $get_header_id[0]['id'];
            $json['store_id'] = $get_header_id[0]['store_id'];
            echo json_encode($json);
        }            
    }    


    function task_insert_tr_header($ref_id, $tr_id){
        $cek_h = $this->db->query("SELECT id, company_id, store_id, tr_date FROM tr_header WHERE ref_id = $ref_id")->result();
        if(!isset($cek_h[0]->id) ){
            $select = $this->db->select('*')->where('id',$ref_id)->get('log_a')->result_array();
            if(count($select) > 0) {
                $data = array(                   
                                'ref_id' => $select[0]['id'],
                                'company_id ' => $select[0]['company_id'],
                                'store_id' => $select[0]['store_id'],
                                'customer_id' => $select[0]['customer_id'],
                                'tr_id' => $select[0]['tr_id'],
                                'tr_date' => $select[0]['tr_date'],
                                'tr_number' => $this->generate_code_confirm($select[0]['company_id'], $select[0]['store_id'], $select[0]['tr_id'], $select[0]['tr_date']),
                                'payment_type_id' => $select[0]['payment_type_id'],
                                'tr_description' => $select[0]['tr_description'],
                                'status' => 1,
                                'cashier_id' => $select[0]['cashier_id'],
                                'created' => date('Y-m-d H:i:s', time()),
                                'createdby' => $select[0]['createdby']
                            );
                if(count($data) > 0){
                    $response = $this->db->insert('tr_header', $data);
                    $header_id = $this->db->insert_id();
                    $tr_date = $select[0]['tr_date'];
                    $company_id = $select[0]['company_id'];
                    $store_id = $select[0]['store_id'];
                    $this->task_insert_tr_detail($ref_id, $tr_id, $tr_date, $header_id, $company_id, $store_id);
                }
            }    
        } else {
            $header_id = $cek_h[0]->id;
            $tr_date = $cek_h[0]->tr_date;
            $store_id = $cek_h[0]->store_id;
            $company_id = $cek_h[0]->company_id;
            $this->task_insert_tr_detail($ref_id, $tr_id, $tr_date, $header_id, $company_id, $store_id);
        }    
    }

    function task_insert_tr_detail($ref_id, $tr_id, $tr_date, $header_id, $company_id, $store_id){
        $select = $this->db->select('valas_id, nominal, sheet, price, subtotal, createdby')->where('header_id',$ref_id)->get('log_b');
        if($select->num_rows()){
            $sequence = 1;
            foreach($select->result_array() as $row) {
                $valas_id = $row['valas_id'];
                $nominal = $row['nominal']; 
                $price = $row['price'];                
                $cek_tr_detail = $this->db->query("SELECT valas_id FROM tr_detail WHERE header_id = $header_id AND valas_id = $valas_id AND nominal = $nominal AND price = $price")->result();
                if(count($cek_tr_detail) < 1) {
                    $data = array(                  
                        'sequence' => $sequence,
                        'header_id' => $header_id,
                        'valas_id' => $row['valas_id'],
                        'sheet' => $row['sheet'],
                        'nominal' => $row['nominal'],
                        'price' => $row['price'],
                        'subtotal' => $row['subtotal'],
                        'status' => 1,
                        'created' => date('Y-m-d H:i:s', time()),
                        'createdby' => $row['createdby']
                    );
                    if(count($data) > 0){
                        $response = $this->db->insert('tr_detail', $data);
                    }                    
                }
                $sequence++;
            }
        }    
    }
}
