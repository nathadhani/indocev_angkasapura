<?php

class M_transaction extends Bks_Controller {

    function __construct() {
        $config = array('modules' => 'master_data', 'jsfiles' => array('m_transaction'));
        parent::__construct($config);
        $this->Bksmdl->table = 'm_transaction';
    }
    
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Transaksi List');
        $this->template->set('tsmall', 'Transaksi Setting');
        $this->template->set('icon', 'fa fa-navicon');
        $this->template->build('master_data/m_transaction_v');
    }
    
    function insert() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['title'] = ucwords(strtolower(trim($postData['title'])));
        $postData['description'] = ucwords(strtolower(trim($postData['description'])));
        $postData['status'] = cekStatus($postData);

        $this->db->trans_begin();
        $status = $this->Bksmdl->insert($postData);
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
    
    function update() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $postData['title'] = ucwords(strtolower(trim($postData['title'])));
        $postData['description'] = ucwords(strtolower(trim($postData['description'])));
        $postData['status'] = cekStatus($postData);
        $id = $postData['id'];
        unset($postData['id']);

        $this->db->trans_begin();
        $status = $this->Bksmdl->update($postData, 'id=' . $id);
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
    
    function delete() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();
        $id = json_decode($postData['id']);

        $this->db->trans_begin();
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
    
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->Bksmdl->table = 'v_m_transaction';
        $cpData = $this->Bksmdl->getDataTable();
        $this->Bksmdl->outputToJson($cpData);
    }
    
    function getTransactionId() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $this->Bksmdl->table = 'm_transaction';
        $this->Bksmdl->searchable = array('description', 'title', 'id');
        $this->Bksmdl->select2fields = array('id' => 'id', 'text' => "concat(description,' [', id,']')");
        $result['results'] = $this->Bksmdl->getSelect2(array('status' => '1'));
        $result['more'] = true;
        echo json_encode($result);
    }

}
