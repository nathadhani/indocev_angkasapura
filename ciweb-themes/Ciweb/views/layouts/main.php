    <?php
    $auth = $this->session->userdata('auth');
    $usergroup_id = $auth['usergroup_id'];
    $userlevel_id = $auth['userlevel_id'];    
    $company_id = $auth['company_id'];
    $api_method = $auth['api_method'];
    // phpinfo();exit;    
?>
<?php echo $template['partials']['header']; ?>
<?php 
    if(in_array($userlevel_id, array('1'))) {
        echo $template['partials']['sidebar'];
    }
?>
<!--<?php/* echo $template['partials']['sidebar']; */?>-->

<!-- PAGE CONTENT -->
<div class="page-content">
    <?php 
        if( in_array($userlevel_id, array('2'))) {
    ?>
        <!-- START X-NAVIGATION VERTICAL -->
        <ul class="x-navigation x-navigation-horizontal">
            <!-- LOGO -->
            <li class="xn-logo">            
                <a href=".">
                    <span style="font-weight:bold; font-size:15px; font-family:'Arial Black';">
                        EPOS
                    </span>
                    <small> - Money Changer</small>
                </a>
                <a href="#" class="x-navigation-control"></a>
            </li>
            <!-- END LOGO -->

            <!-- MENU DROPDOWN -->       
            <?php 
                if(in_array($userlevel_id, array('1'))) {
            ?>
                <li class="xn-openable">
                    <a href="#"><span class="fa fa-angle-down"></span><span style="margin-left:-10px;">Pages</span></a>
                    <ul class="animated zoomIn">
                        <?php echo Modules::run('menu/_createMenu_sidebar', $auth['usergroup_id']) ?>         
                    <!-- </ul>
                </li> -->
            <?php 
                }
            ?>    
            <!-- END MENU DROPDOWN -->        

            <!-- SIGN OUT -->
            <li class="xn-icon-button pull-right">
                <a href="auth/logout" title='Sign Out'><span class="fa fa-sign-out" style="font-size:20px;font-weight;bold;"></span></a>
            </li>
            <!-- END SIGN OUT -->                                        

            <!-- ICON MENU -->
            <li class="xn-icon-button">
                <a href="." title="Home" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-home"></span></a>                        
            </li>

            <li class="xn-icon-button">
                <a href="user/change_pass" title="Change Password" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-unlock"></span></a>                        
            </li>
            <li class="xn-icon-button">
                <a href="dashboard/dashboard" title="Dashboard" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-bar-chart"></span></a>                        
            </li>

            <li class="xn-icon-button">
                <a href="transaksi/transaksi_task" title="Trx Task" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-tasks"></span></a>
                <?php 
                    if($company_id != null){
                        $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM log_a 
                                                WHERE status = '1' 
                                                AND company_id = $company_id 
                                                LIMIT 1")->result();
                        if(isset($count)) {
                ?>
                    <div class="informer informer-warning"><?php echo $count[0]->jumlah; ?></div>
                <?php
                    } else {
                ?>
                    <div class="informer informer-warning">0</div>
                <?php 
                        } 
                    } 
                ?>        
            </li>
            <li class="xn-icon-button">
                <a href="api/api_transaction_input" title="API Record" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-cloud-upload"></span></a>
                <?php
                    if($company_id != null){
                        $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM tr_header
                                                WHERE status = '1' 
                                                AND company_id = $company_id 
                                                LIMIT 1")->result();
                        if(isset($count)) {
                ?>
                    <div class="informer informer-warning"><?php echo $count[0]->jumlah; ?></div>
                <?php
                    } else {
                ?>
                    <div class="informer informer-warning">0</div>
                <?php 
                        } 
                    } 
                ?>        
            </li>
            <!-- END ICON MENU -->
        </ul>    
        <!-- END X-NAVIGATION VERTICAL -->                      
    <?php } else { ?>
        <!-- START X-NAVIGATION VERTICAL -->
        <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
            <!-- TOGGLE NAVIGATION -->
            <li class="xn-icon-button">
                <a href="#" class="x-navigation-minimize" title="Minimize"><span class="fa fa-dedent"></span></a>
            </li>
            <!-- END TOGGLE NAVIGATION -->        
            <li class="xn-icon-button">
                <a href="user/change_pass" title="Change Password" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-unlock"></span></a>                        
            </li>
            <?php 
                if( in_array($userlevel_id, array('1')) && $api_method != null) {
            ?>
                <li class="xn-icon-button">
                    <a href="stock/stockcalculate" title="Calculate Stock" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-calculator"></span></a>
                </li>
                <li class="xn-icon-button">
                    <a href="transaksi/transaksi_task" title="Trx Task" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-tasks"></span></a>
                    <?php 
                        if($company_id != null){
                            $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM log_a 
                                                    WHERE status = '1' 
                                                    AND company_id = $company_id 
                                                    LIMIT 1")->result();
                            if(isset($count)) {
                    ?>
                        <div class="informer informer-warning"><?php echo $count[0]->jumlah; ?></div>
                    <?php
                        } else {
                    ?>
                        <div class="informer informer-warning">0</div>
                    <?php 
                            } 
                        } 
                    ?>        
                </li>
                <li class="xn-icon-button">
                    <a href="api/api_transaction_input" title="API Record" data-toggle="tooltip" data-placement="bottom"><span class="fa fa-cloud-upload"></span></a>
                    <?php
                        if($company_id != null){
                            $count = $this->db->query("SELECT COUNT(status) AS jumlah FROM tr_header
                                                    WHERE status = '1' 
                                                    AND company_id = $company_id 
                                                    LIMIT 1")->result();
                            if(isset($count)) {
                    ?>
                        <div class="informer informer-warning"><?php echo $count[0]->jumlah; ?></div>
                    <?php
                        } else {
                    ?>
                        <div class="informer informer-warning">0</div>
                    <?php 
                            } 
                        } 
                    ?>        
                </li>
            <?php }  ?>
            <li class="xn-icon-button pull-right">
                <a href="auth/logout" title='Sign Out'><span class="fa fa-sign-out" style="font-size:20px;font-weight;bold;"></span></a>
            </li>
        </ul>
        <!-- END X-NAVIGATION VERTICAL -->
    <?php } ?>
    
    <!-- START BREADCRUMB -->
    <ul class="breadcrumb">
        <!-- <li>
            <a href=".">Main Menu</a>
        </li>
        <?php if (isset($tsmall)) echo '<li class="">' . $tsmall . '</li>';?>
        <?php if (isset($tparent)) echo '<li class="">' . $tparent . '</li>';?>
        <li class="">
            <?php if (isset($template['title'])) echo $template['title'];?>
        </li> -->
        <?php 
            if( $userlevel_id == '1' && $usergroup_id == '1') {
                echo dayList(). ', ' . date('d F Y');
            } else {
                echo 'Welcome : ' . $auth['fullname'] . '<span class="pull-right"> ' . dayList(). ', ' . date('d F Y') . '</span>';
            }
        ?>    
    </ul>
    <!-- END BREADCRUMB -->

    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <?php echo $template['body']; ?>
    </div>
    <!-- END PAGE CONTENT WRAPPER -->
</div>            
<!-- END PAGE CONTENT -->

<?php echo $template['partials']['footer']; ?>