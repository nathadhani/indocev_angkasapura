<?php

class Transaksi_task extends Bks_Controller {

    function __construct() {
        $config = array('modules' => 'transaksi', 'jsfiles' => array('transaksi_task'));
        parent::__construct($config);        
        $this->auth = $this->session->userdata( 'auth' );
        $this->company_id = $this->auth['company_id'];
    }
    
    function index() {
        $this->libauth->check(__METHOD__);
        $this->template->title('Task');
        $this->template->set('tsmall', 'Transaction');
        $this->template->set('icon', 'fa fa-edit');
        $data['auth'] = $this->auth;
        $this->template->build('transaksi/transaksi_task_v', $data);
    }
    
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();

        $this->Bksmdl->table = 'v_loga';

        $where[0]['field'] = 'company_id';
        $where[0]['data']  = $this->company_id;
        $where[0]['sql']   = 'where';

        $where[1]['field'] = 'status';
        $where[1]['data']  = 1;
        $where[1]['sql']   = 'where';

        $cpData = $this->Bksmdl->getDataTable($where);
        $this->Bksmdl->outputToJson($cpData);
    }

}
