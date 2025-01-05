<?php

class Api_transaction_input extends Bks_Controller {

    function __construct() {
        $config = array('modules' => 'api', 'jsfiles' => array('api_transaction_input'));
        parent::__construct($config);        
        $this->auth = $this->session->userdata( 'auth' );
        $this->company_id = $this->auth['company_id'];
    }
    
    function index() {
        $this->libauth->check(__METHOD__);
        if($this->auth['api_angkasapura'] == 'AP1'){
            $this->template->title('Transaction Record');
        } else {
            $this->template->title('Transaction Input');
        }        
        $this->template->set('tsmall', 'API');
        $this->template->set('icon', 'fa fa-edit');
        $data['auth'] = $this->auth;
        $this->template->build('api/api_transaction_input_v', $data);
    }
    
    function getData() {
        checkIfNotAjax();
        $this->libauth->check(__METHOD__);
        $postData = $this->input->post();

        $this->Bksmdl->table = 'v_tr_header';

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
