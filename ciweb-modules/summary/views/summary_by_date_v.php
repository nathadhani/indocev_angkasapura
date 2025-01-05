<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">                                
                            <div class="col-lg-12">
                                <label for="company_id" style="display:block">Branch</label>
                                <select name="company_id"
                                        data-ajax="true" 
                                        data-placeholder="-- Pilih Cabang --"
                                        data-url="master_data/m_company/getRegion/" 
                                        data-value="" 
                                        data-limit="100"                                                
                                        id="company_id" placeholder="Region"
                                        class='form-control select2'
                                        >
                                </select>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">                                
                            <div class="col-lg-12">
                                <label for="store_id" style="display:block">Store</label>
                                <select class='form-control select2' name="store_id" id="store_id" disabled="true">
                                    <option value=""> -- Pilih Store --</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <div class="col-lg-8">
                                <label for="periode" style="display:block">Period</label>
                                <input style="width:100px;" type="text" id="tr_date" name="tr_date" placeholder="Tanggal..." class="form-control dp" data-date-format="DD MMMM YYYY" value="<?=date('d-m-Y');?>">
                            </div>
                            <div class="col-lg-4">
                                <label for="btn-submit" style="display:block"></label><br>
                                <a style="width:100px;display:block" id="btn-submit" title="Filter Data" href="#" class="btn btn-info">Submit</a>                                
                            </div>
                        </div>                            
                    </div>
                    <div class="col-md-2"></div>
                    <a id="btn-excel" title="Download" href="#" class="btn btn-default pull-right"><i class="fa fa-download"></i></a>
                </div>

                <br>
                <div class="row">
                    <div class="col-md-4">
                        <h5>Period  : <strong id="ftitle"></strong></h5>
                    </div>
                    <div class="col-md-4">
                        <h5>Total Trx. <b style="color:blue;">Buy</b>  : <strong id="total_buy"></strong> ( <strong id="count_buy"></strong> )</h5> 
                    </div>
                    <div class="col-md-4">
                        <h5>Total Trx. <b style="color:red;">Sale</b> : <strong id="total_sales"></strong> ( <strong id="count_sales"></strong> )</h5>
                    </div>
                </div>                
                
                <div class="row table-responsive" id="mainTable" >
                    <div class="col-md-12">
                        <table class="table table-bordered table-condensed table-hover table-striped dataTable">
                            <thead>
                                <tr>
                                    <th rowspan="2" style="vertical-align:middle;text-align:center;">#</th>
                                    <th rowspan="2"style="vertical-align:middle;text-align:center;">Currency</th>
                                    <th colspan="2" style="vertical-align:middle;text-align:center;background-color:blue;color:white;">Buy</th>
                                    <th colspan="2" style="vertical-align:middle;text-align:center;background-color:red;color:white;">Sale</th>
                                </tr>
                                <tr>
                                    <th style="vertical-align:middle;text-align:center;">Amount</th>
                                    <th style="vertical-align:middle;text-align:center;">Equivalent</th>
                                    <th style="vertical-align:middle;text-align:center;">Amount</th>
                                    <th style="vertical-align:middle;text-align:center;">Equivalent</th>
                                </tr>
                            </thead>
                            <thead id="searchid">
                                <tr>
                                    <td><button class="clrs btn btn-info btn-sm btn-line">Clear</button></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</div>