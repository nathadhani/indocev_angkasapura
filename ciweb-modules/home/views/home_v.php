<?php
    $auth = $this->session->userdata('auth');    
    if($auth['usergroup_id'] !== '1'){
        $usergroup_id = $auth['usergroup_id'];
        $userlevel_id = $auth['userlevel_id'];
        $company_id = $auth['company_id'];
        $api_method = $auth['api_method'];
        $api_angkasapura = $auth['api_angkasapura'];
?>
<script type="text/javascript">
    var companyIduser = <?php echo $auth['company_id'];?>;
</script>
<div class="page-content-wrap">    
    <?php 
        if( in_array($userlevel_id, array('2'))) {
    ?>
        <div class="row">        
            <div class="col-md-4">
                <div class="widget widget-default widget-item-icon" onclick="location.href='transaksi/nasabah';">
                    <div class="widget-item-left">
                        <span class="fa fa-id-card" style="margin-left:-5px;"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Trx New</div>
                        <div class="widget-subtitle">New transactions buy / sale</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="transaksi/nasabah" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget widget-default widget-item-icon" onclick="location.href='transaksi/transaksi_task';">
                    <div class="widget-item-left">
                        <span class="fa fa-tasks"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Trx Task</div>
                        <div class="widget-subtitle">Pending transactions buy / sale</div>
                        <?php 
                            if($company_id != null){
                                $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM log_a 
                                                        WHERE status = '1' 
                                                        AND company_id = $company_id 
                                                        LIMIT 1")->result();
                                if(isset($count)) {
                        ?>
                            <div class="widget-int num-count" style="color:red;"><?php echo $count[0]->jumlah; ?></div>                        
                        <?php
                            } else {
                        ?>
                            <div class="informer informer-warning">0</div>
                        <?php 
                                } 
                            } 
                        ?>                    
                    </div>
                    <div class="widget-controls">                                
                        <a href="transaksi/transaksi_task" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget widget-default widget-item-icon" onclick="location.href='transaksi/transaksi_list';">
                    <div class="widget-item-left">
                        <span class="fa fa-list-ol"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Trx List</div>
                        <div class="widget-subtitle">List transactions buy / sale</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="transaksi/transaksi_list" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
        </div>

        <?php 
            if( in_array($userlevel_id, array('2')) && in_array($api_angkasapura, array('AP1'))) {
        ?>
            <div class="row">
                <div class="col-md-4">
                    <div class="widget widget-default widget-item-icon" onclick="location.href='api/api_transaction_input';">
                        <div class="widget-item-left">
                            <span class="fa fa-cloud-upload"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-title">API Reccord</div>
                            <div class="widget-subtitle">Pending transactions API reccord</div>
                            <?php 
                                if($company_id != null){
                                    $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM tr_header
                                                    WHERE status = '1' 
                                                    AND company_id = $company_id 
                                                    LIMIT 1")->result();
                                    if(isset($count)) {
                            ?>
                                <div class="widget-int num-count" style="color:red;"><?php echo $count[0]->jumlah; ?></div>                        
                            <?php
                                } else {
                            ?>
                                <div class="informer informer-warning">0</div>
                            <?php 
                                    } 
                                } 
                            ?>                    
                        </div>
                        <div class="widget-controls">                                
                            <a href="api/api_transaction_input" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="widget widget-default widget-item-icon" onclick="location.href='api/api_ap1_transaction_advice';">
                        <div class="widget-item-left">
                            <span class="fa fa-cloud-upload"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-title">API Advice</div>
                            <div class="widget-subtitle">Transactions API advice</div>
                        </div>
                        <div class="widget-controls">                                
                            <a href="api/api_ap1_transaction_advice" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="widget widget-default widget-item-icon" onclick="location.href='api/api_ap1_transaction_refund';">
                        <div class="widget-item-left">
                            <span class="fa fa-cloud-upload"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-title">API Refund</div>
                            <div class="widget-subtitle">Transactions API refund</div>
                        </div>
                        <div class="widget-controls">                                
                            <a href="api/api_ap1_transaction_refund" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                        </div>
                    </div>
                </div>              
            </div>
        <?php }  ?>

        <?php 
            if( in_array($userlevel_id, array('2')) && in_array($api_angkasapura, array('AP2'))) {
        ?>
            <div class="row">
                <div class="col-md-4">
                    <div class="widget widget-default widget-item-icon" onclick="location.href='api/api_transaction_input';">
                        <div class="widget-item-left">
                            <span class="fa fa-cloud-upload"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-title">API Reccord</div>
                            <div class="widget-subtitle">Pending transactions API record</div>
                            <?php 
                                if($company_id != null){
                                    $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM tr_header
                                                    WHERE status = '1' 
                                                    AND company_id = $company_id 
                                                    LIMIT 1")->result();
                                    if(isset($count)) {
                            ?>
                                <div class="widget-int num-count" style="color:red;"><?php echo $count[0]->jumlah; ?></div>                        
                            <?php
                                } else {
                            ?>
                                <div class="informer informer-warning">0</div>
                            <?php 
                                    } 
                                } 
                            ?>                    
                        </div>
                        <div class="widget-controls">                                
                            <a href="api/api_transaction_input" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="widget widget-default widget-item-icon" onclick="location.href='api/api_ap2_transaction_adjustment';">
                        <div class="widget-item-left">
                            <span class="fa fa-cloud-upload"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-title">API Adjustment</div>
                            <div class="widget-subtitle">Transactions API adjustment</div>
                        </div>
                        <div class="widget-controls">                                
                            <a href="api/api/api_ap2_transaction_adjustment" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="widget widget-default widget-item-icon" onclick="location.href='api/api_ap2_transaction_get';">
                        <div class="widget-item-left">
                            <span class="fa fa-cloud-upload"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-title">API Get Data</div>
                            <div class="widget-subtitle">Get data transactions API</div>
                        </div>
                        <div class="widget-controls">                     
                            <a href="api/api_ap2_transaction_get" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                        </div>
                    </div>
                </div>              
            </div>
        <?php }  ?>

        <div class="row">            
            <div class="col-md-4">
                <div class="widget widget-default widget-item-icon" onclick="location.href='summary/summary_by_date';">
                    <div class="widget-item-left">
                        <span class="fa fa-flag-o"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Summary by date</div>
                        <div class="widget-subtitle">Summary transactions by date</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="summary/summary_by_date" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget widget-default widget-item-icon" onclick="location.href='summary/summary_by_month';">
                    <div class="widget-item-left">
                        <span class="fa fa-flag-o"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Summary by month</div>
                        <div class="widget-subtitle">Summary transactions by month</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="summary/summary_by_month" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget widget-default widget-item-icon" onclick="location.href='summary/summary_by_year';">
                    <div class="widget-item-left">
                        <span class="fa fa-flag-o"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Summary by year</div>
                        <div class="widget-subtitle">Summary transactions by year</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="summary/summary_by_year" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="widget widget-default widget-item-icon" onclick="location.href='stock/stock';">
                    <div class="widget-item-left">
                        <span class="fa fa-gg"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Stock</div>
                        <div class="widget-subtitle">Stock in nominal</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="stock/stock" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="widget widget-default widget-item-icon" onclick="location.href='master_data/rate_daily';">
                    <div class="widget-item-left">
                        <span class="fa fa-gg-circle"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Kurs</div>
                        <div class="widget-subtitle">Kurs by date buy / sale</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="master_data/rate_daily" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="widget widget-default widget-item-icon" onclick="location.href='inventory/inventory';">
                    <div class="widget-item-left">
                        <span class="fa fa-keyboard-o"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Inv New</div>
                        <div class="widget-subtitle">New inventory stock</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="inventory/inventory" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="widget widget-default widget-item-icon" onclick="location.href='inventory/inventory_list';">
                    <div class="widget-item-left">
                        <span class="fa fa-list-ol"></span>
                    </div>
                    <div class="widget-data">
                        <div class="widget-title">Inv List</div>
                        <div class="widget-subtitle">List inventory stock</div>
                    </div>
                    <div class="widget-controls">                                
                        <a href="inventory/inventory_list" class="widget-control-right" data-toggle="tooltip" data-placement="top" title="Expand"><span class="fa fa-expand"></span></a>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>                                    
</div>
<?php
    }
?>