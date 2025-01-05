<style>
    #mainTable_filter{display:none;}    
    .field-icon {
        float: right;
        margin-left: -25px;
        margin-top: 10px;
        margin-right: 5px;
        size:100px;
        position: relative;
        z-index: 2;
    }

    div.picwrapper {
        width:100%;
        text-align:center;
    }
    div.pic {
        display:inline-block;
    }
    div.pic .imgBI {
        max-width: 120px;
        height: 120px;
        margin: 5px 5px 0 0;
    }

    div.pic .imgPPATK {
        max-width: 120px;
        height: 120px;
        margin: 5px 5px 0 0;
    }
</style>
<div class="row">
    <div class="col-md-12">        
        <form class="form-horizontal" autocomplete="off">                                        
            <div class="panel panel-default tabs">                            
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Customer Profile</a></li>
                    <li><a href="#tab-second" role="tab" data-toggle="tab">Information</a></li>
                </ul>
                <div class="panel-body tab-content">
                    <div class="tab-pane active" id="tab-first">
                    <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <form class="form-horizontal" autocomplete="off">
                                        <div class="panel-body">
                                            <p>Look for data first, before inputting new data. so there's no double data!</p>              
                                            <div class="form-group">
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <!-- <div class="input-group-addon">
                                                            <span for="text_search" class="fa fa-search"></span>
                                                        </div> -->
                                                        <input type="text" id="text_search" name="text_search" class="form-control" placeholder="Ketik kata yang mau di cari" data-validation="required"/>
                                                        <span class="fa fa-fw fa-close field-icon toggle-close"></span>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default" id="btn_search" name="btn_search"><i class="fa fa-search"></i>Search</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <button id="btn_add" name="btn_add" class="btn btn-info btn-block" style="width:100px;"><span class="fa fa-plus"></span> New Data</button>
                                                </div>                        
                                            </div>                                                    
                                        </div>
                                        <div class="panel-body">
                                            <div class="box-body table-responsive">
                                                <span id="task-table">*) click row to edit data</span>
                                                <!-- <table id="mainTable" data-order='[[ 0, "asc" ]]' style="width:100%" class="table table-bordered table-condensed table-hover table-striped dataTable"> -->
                                                <table id="mainTable" style="width:100%" class="table table-bordered table-condensed table-hover table-striped dataTable">
                                                    <thead>
                                                        <tr>
                                                            <th style="text-align:center; vertical-align: middle">Customer Name</th>
                                                            <th style="text-align:center; vertical-align: middle">Address</th>
                                                            <th style="text-align:center; vertical-align: middle">Celluler</th>
                                                            <th style="text-align:center; vertical-align: middle">Identity Type</th>
                                                            <th style="text-align:center; vertical-align: middle">Identity Type Number</th>
                                                            <th style="text-align:center; vertical-align: middle">Status</th>
                                                        </tr>
                                                    </thead>                 
                                                    <tbody></tbody>
                                                </table>                    
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>                                                                   
                    </div>
                    <div class="tab-pane" id="tab-second">
                    <div class="row">
                            <div class="col-md-12">
                                <form class="form-horizontal" autocomplete="off">
                                    <div class="panel-body">
                                        <div style="text-align:center;font-family: Montserrat,Arial,sans-serif;">
                                            <span style="font-weight:bold;font-size:20px;color:red;">
                                                Cek dan lengkapi data profil nasabah saat melakukan transaksi :
                                            </span>
                                            <span style="font-size:14px;">
                                                <br>Data Identitas KTP / SIM / Visa / Passport dan Nomor telpon yang dapat dihubungi ( harus sama dengan orang yang melakukan transaksi)
                                            </span>
                                        </div>
                                        <br>
                                        <div style="text-align:center;font-family: Montserrat,Arial,sans-serif;">                        
                                            <span style="font-weight:bold;font-size:20px;color:red;">Peraturan Bank Indonesia :</span>
                                            <br>
                                            <span style="font-weight:bold;font-size:14px;">
                                                    1. PBI Nomor 18/20/PBI/DKSP tanggal 7 oktober 2016, perihal jumlah transaksi valuta asing terhadap rupiah per nasabah :
                                            </span>
                                            <span style="font-size:14px;">
                                                <br>- Tidak melebihi batas (Threshold) USD 25,000 per bulan
                                                <br>- Jika melebihi batas wajib memiliki underlying transaksi
                                            </span>    
                                            <br>
                                            <br>
                                            <span style="font-weight:bold;font-size:14px;">
                                                2. PBI Nomor 19/10/PBI/2017 tentang penerapan anti pencucian uang dan pencegahan pendanaan terorisme bagi penyelenggara jasa sistem pembayaran selain bank dan penyelenggara kegiatan usaha penukaran valuta asing bukan bank.
                                            </span>   
                                            <br>
                                            <br>
                                            <span style="font-weight:bold;font-size:14px;">
                                                3. PBI Nomor 22/20/PBI/2020 tentang perlindungan konsumen bank indonesia :
                                            </span>
                                            <span style="font-size:14px;">                      
                                                <br>- Penyelenggara wajib memiliki sumber daya manusia yang kompeten untuk menerapkan prinsip perlindungan konsumen                        
                                            </span>    
                                        </div>                                        
                                        <!-- <div class="picwrapper">
                                            <div class="pic">
                                                <img src="assets/img/logo_bi.png" alt="" class="imgBI">
                                            </div>
                                            <div class="pic">
                                                <img src="assets/img/logo_ppatk.png" alt="" class="imgPPATK">
                                            </div>
                                        </div> -->
                                    </div>
                                </form>
                            </div>
                        </div>                                        
                   </div>                    
                </div>                
            </div>        
        </form>        
    </div>
</div>