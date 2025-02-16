<div class="row">
    <div class="col-md-12">
        <form id="mainForm" class="form-horizontal" autocomplete="off">
            <div class="panel panel-default">
                <div class="panel-heading ui-draggable-handle">
                    <h3 class="panel-title"><i class="fa fa-edit"></i>&nbsp;<strong id="ftitle">Add</strong> Data</h3>
                    <ul class="panel-controls">
                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                    </ul>
                </div>
                <div class="panel-body">                                                                        
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group row">
                                <label for="company_id" class="control-label col-lg-4">Branch</label>
                                <div class="col-lg-8">
                                    <select name="company_id"
                                            data-ajax="true" 
                                            data-placeholder="Pilih Cabang..."
                                            data-url="master_data/m_company/getBranch/" 
                                            data-value="" 
                                            data-limit="100"
                                            id="company_id" placeholder="Branch"  class='form-control select2'>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="menu" class="control-label col-lg-4">Airport Code</label>
                                <div class="col-lg-8">
                                    <select name="airport_id"
                                            data-ajax="true" 
                                            data-placeholder="Select Airport..."
                                            data-url="master_data/m_airport/getAirport/" 
                                            data-value="" 
                                            data-limit="100"
                                            id="airport_id" placeholder="Kode Bandara"  class='form-control select2'>
                                    </select>
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label for="menu" class="control-label col-lg-4">Airport Terminial</label>
                                <div class="col-lg-8">
                                    <input type="text" id="airport_terminal" name="airport_terminal" placeholder="Airport Terminal..." class="form-control" data-validation="required">                                    
                                </div>
                            </div><!-- /.form-group -->                   
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row">
                                <label for="menu" class="control-label col-lg-4">Store Name</label>
                                <div class="col-lg-8">
                                    <input type="text" id="store_name" name="store_name" placeholder="Store Name..." class="form-control" data-validation="required">
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label for="menuorder" class="control-label col-lg-4">Store Address</label>
                                <div class="col-lg-8">
                                <input type="text" id="store_address" name="store_address" placeholder="Store Address..." class="form-control" data-validation="required">
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label for="menuorder" class="control-label col-lg-4">Store Reference Id</label>
                                <div class="col-lg-8">
                                <input type="text" id="store_reference_id" name="store_reference_id" placeholder="Store Reference Id..." class="form-control">
                                </div>
                            </div><!-- /.form-group -->
                            <div class="form-group row">
                                <label class="control-label col-lg-4">Status</label>
                                <div>
                                    <div class="input-group col-lg-8">
                                        <span class="input-group-addon">
                                            <input type="checkbox" name="status" id="status" class="icheckbox_minimal-grey checked" checked/>
                                        </span>
                                        <span class="form-control">Active</span>
                                    </div>
                                </div>
                            </div><!-- /.form-group -->
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <button type="submit" class="btn btn-info" style="width:100px;">Submit</button>
                    <button type="reset" class="btn btn-default" style="width:100px;">Reset</button>
                    <button id="btn-get-store-ap" class="btn btn-danger pull-right" style="width:130px;">Get Store (API)</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">                                
                <h3 class="panel-title"><i class="fa fa-table"></i> Data Table</h3>
                <ul class="panel-controls">
                    <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                </ul>                                
            </div>
            <div class="panel-body">
                <div id="mainTable" class="box-body table-responsive">
                    <div style="padding: 0 20px 10px 20px" class="row">
                        <button class="btn btn-default toggle-selected" title="Toggle Selected" data-toggle="tooltip" data-placement="bottom"><i class="fa  fa-align-justify"></i></button> 
                        <button class="btn btn-default delete-selected pull-right" title="Delete Rows" data-toggle="tooltip" data-placement="bottom"><i class="fa  fa-trash"></i></button> 
                    </div>
                    <table class="table table-bordered table-condensed table-hover table-striped dataTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Branch</th>
                                <th>Store Name</th>
                                <th>Store Address</th>
                                <th>Store Reference Id</th>
                                <th>Status</th>
                                <th>Action</th>
                                <th>Api AP</th>
                                <th>Register</th>
                            </tr>
                        </thead>
                        <thead id="searchid">
                            <tr>
                                <td><button class="clrs btn btn-sm btn-info btn-line">Clear</button></td>
                                <td></td>
                                <td></td>
                                <td></td>
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