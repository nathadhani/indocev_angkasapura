var sisa_stock_amount = 0;
var sisa_stock_sheet = 0;
var xtr_id = (decrypt(tr_uri_code) === 'buy' ? 1 : decrypt(tr_uri_code) === 'sale' ? 2 : 0);
$("#xtrxbuy").hide();
$("#xtrxsale").hide();
if(xtr_id == 1){
    $("#xtrxbuy").show();
} else if(xtr_id == 2){
    $("#xtrxsale").show();
}

back_to_page_ini();    

function reset_form_header(){    
    $("#customer_name").html('');
    $("#store_name").html('');
    $("#store_address").html('');
    $("#user_id").html('').sel2dma();
    $("#cashier_id").html('').sel2dma();
    $("#payment_type_id").html('').sel2dma();
}

function reset_form_input(){
    $("#stock_nominal").html('');
    $("#stock_sheet").html('');
    $("#stock_amount").html('');

    $("#valas_id").html('').sel2dma();    
    $("#valas_code").html('');

    $("#nominal").val('');
    $("#sheet").val('');
    $('#total_amount').html('');
    $("#price").val('');
    $("#subtotal").val('');
    $("#btn-add-detail-data").focus();
}

function tampil_data_nasabah(){
    if ($("#ftitle").html().substr(0, 3) == "Add") {
        if( typeof(customerId) !== 'undefined') {
            if(customerId !== null && customerId !== '') {
                $.ajax({
                    url: baseUrl + 'transaksi/transaksi/tampil_nasabah',
                    type: 'POST',
                    data: {'customer_id' : customerId},
                    datatype: 'json',
                    success: function(data){
                        if (data !== '[]'){   
                            var d = JSON.parse(data)[0];
                            $("#customer_name").html(d.customer_name);
                        } else {
                            $("#customer_name").html('');
                            customerId = null;
                        }    
                    },
                    error: function(xhr){                        
                        alertify.error("error");
                        StringtoFile(xhr.responseText, 'error');
                    }
                });
            }
        }
    }    
}    

function getValasTrx(company_id, store_id){
    if( typeof(id_log_a) != 'undefined' && id_log_a !== null && id_log_a !== '' ) {
        // $("#valas_id").html('').sel2dma();
        // $.ajax({
        //     url : baseUrl +  'master_data/m_valas/getValasTrx',
        //     type: 'POST',
        //     data: {'company_id' : company_id , 'store_id' : store_id, 'tr_id' : xtr_id},
        //     datatype: 'json',
        //     success: function(data){
        //         $('#valas_id').prop('disabled', false);      
        //         $('#valas_id').html(data);
        //     },
        //     error: function(xhr){
        //         alertify.error("error");
        //         StringtoFile(xhr.responseText, 'error');
        //     }
        // });
        $('#valas_id').prop('disabled', false);
    }    
}

function tampil_header(){
    reset_form_header();    
    if( typeof(id_log_a) != 'undefined' && id_log_a !== null && id_log_a !== '' ) {    
        if( typeof(customerId) !== 'undefined' && customerId !== null && customerId !== '') {
            $.ajax({
                url: baseUrl + "transaksi/transaksi/tampil_header_temp",
                type: 'POST',
                data: {'customer_id' : customerId, 'tr_id' : xtr_id, 'id' : id_log_a},
                datatype: 'json',
                success: function(data){
                    if (data !== '[]' && data.length > 0){
                        var d = JSON.parse(data)[0];             
                        $('#btn-simpan-header').prop('disabled', false);                        
                        $('#btn-add-row-detail').prop('disabled', false);                        

                        $("#created_by").html('Created by : '+d.createdby_name +' | '+d.created);
                        if(d.status == '2'){
                            $("#cancel_by").html('Canceled by : '+d.updatedby_name +' | '+d.updated);
                        }

                        $("#tr_number").html(': '+d.tr_number);
                        $("#tr_datex").html(': '+bksfn.revDate(d.tr_date));

                        $("#customer_name").html(d.customer_name);

                        $("#tr_date").val(bksfn.revDate(d.tr_date));
                        if (d.store_id != null) {
                            $("#store_id").html('<option value="' + d.store_id + '">' + d.store_name + ' [' + d.store_address + ']' + '</option>').sel2dma();
                            $('#store_id').prop('disabled', false);
                            getValasTrx(d.company_id, d.store_id);
                        } else {
                            $('#store_id').removeAttr('disabled');
                            $("#store_id").html('').sel2dma();
                            $('#valas_id').prop('disabled', true);                  
                            $("#valas_id").html('').sel2dma();
                        }

                        if (d.createdby != null) {
                            $("#user_id").html('<option value="' + d.createdby + '">' + d.createdby_name + '</option>').sel2dma();
                            $('#user_id').prop('disabled', false);
                        } else {
                            $('#user_id').removeAttr('disabled');
                            $("#user_id").html('').sel2dma();                            
                        }
                        if (d.cashier_id != null) {
                            $("#cashier_id").html('<option value="' + d.cashier_id + '">' + d.cashier_name + '</option>').sel2dma();
                            $('#cashier_id').prop('disabled', false);
                        } else {
                            $('#cashier_id').removeAttr('disabled');
                            $("#cashier_id").html('').sel2dma();                            
                        }
                        if (d.payment_type_id != null) {
                            $("#payment_type_id").html('<option value="' + d.payment_type_id + '">' + d.payment_type_name + ' [' + d.payment_type_id + ']' + '</option>').sel2dma();
                            $('#payment_type_id').prop('disabled', false);
                        } else {
                            $('#payment_type_id').removeAttr('disabled');
                            $("#payment_type_id").html('').sel2dma();                            
                        }

                        $("#ftitle").html(lstatus_name(d.status, d.id));
                        tampil_detail(d.status);
                    } else{                        
                        reset_form_header();
                        var url = "transaksi/nasabah/index/";
                        window.open(url,'_self');
                    }               
                },
                error: function(xhr){
                    alertify.error("error");
                    StringtoFile(xhr.responseText, 'error');
                }
            });
        }        
    }        
}

function tampil_detail(statusTrx){
    reset_form_input();
    $("#pinfo").hide(); 
    if( typeof(customerId) !== 'undefined' && customerId !== null && customerId !== '') {    
        $('#table-detail tbody').empty();
        var counter = document.getElementById('table-detail').rows.length;
        $.ajax({
            url: baseUrl + 'transaksi/transaksi/tampil_detail_temp',
            type: 'POST',
            data: {'customer_id' : customerId, 'tr_id' : xtr_id, 'header_id' : id_log_a},
            dataType: 'json',
            success: function (data) {                
                if (data !== '[]' && data.length > 0){
                    var totalpricex = 0;
                    $.each(data, function (i, d) {
                        totalpricex += Number(d.subtotal);
                        if(d.status === '1'){                            
                            var rows =`<tr id="` + counter + `">
                                        <td width="5%" style="text-align:center;vertical-align:middle">
                                            ` + counter + `
                                        </td>
                                        <td width="35%" style="vertical-align: middle;color:black">
                                            ` + d.valas_code + ' - ' + d.valas_name +`
                                            <a style="color:red; cursor:pointer" title="hapus" onClick="delete_line_detail(` + d.id + `)"> / <i>remove<i></a>
                                        </td>
                                        <td width="10%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.nominal) + `
                                        </td>
                                        <td width="10%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.sheet) + `
                                        </td>
                                        <td width="10%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.nominal * d.sheet) + `
                                        </td>
                                        <td width="15%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.price) + `
                                        </td>
                                        <td width="15%" style='text-align:right;'>
                                            ` + bksfn.toRp(d.subtotal) + `
                                        </td>                         
                                    </tr>`
                            $('#table-detail tbody').append(rows);
                        } else {
                            var rows =`<tr id="` + counter + `">
                                        <td width="5%" style="text-align:center;vertical-align:middle">
                                            ` + counter + `
                                        </td>
                                        <td width="35%" style="vertical-align: middle;color:black">
                                            ` + d.valas_code + ' - ' + d.valas_name +`                                            
                                        </td>
                                        <td width="10%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.nominal) + `
                                        </td>
                                        <td width="10%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.sheet) + `
                                        </td>
                                        <td width="10%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.nominal * d.sheet) + `
                                        </td>
                                        <td width="15%" style='text-align:center;'>
                                            ` + bksfn.toRp(d.price) + `
                                        </td>
                                        <td width="15%" style='text-align:right;'>
                                            ` + bksfn.toRp(d.subtotal) + `
                                        </td>                         
                                    </tr>`
                            $('#table-detail tbody').append(rows);
                        }
                        counter++;
                    });
                    var rowsx =`<tr>
                                    <td colspan="6" style='vertical-align:middle;text-align:center;background-color:#e3e4e6;font-weight:bold;font-size:14px;'>
                                    <i>Say</i> : ` + bksfn.terBilang(totalpricex) + `
                                    </td>
                                    <td style='text-align:center;background-color:#f1f5f9;font-weight:bold;font-size:15px;'>
                                        Rp. ` + bksfn.toRp(totalpricex) + `
                                    </td>                         
                                </tr>`
                    $('#table-detail tbody').append(rowsx);
                    if(statusTrx === '1') {
                        $("#btn-confirm").show();
                        $("#btn-cancel").show();
                        $("#pinfo").show();
                        $("#pinfo_confirm").show();
                    }
                }else{
                    reset_form_input();
                    $("#btn-confirm").hide();
                    $("#btn-cancel").show();
                    $("#pinfo").show();
                    $("#pinfo_confirm").hide();
                }
            },
            error: function(xhr){                
                alertify.error("error");
                StringtoFile(xhr.responseText, 'error');
            }
        });        
    }         
}

function delete_line_detail($id){
    if( typeof($id) != 'undefined' && $id !== null && $id !== '' ) {
        $.ajax({
            url : baseUrl +  'transaksi/transaksi/delete_detail_temp',
            type: 'POST',
            data: {'id' : $id },
            datatype: 'json',
            success: function(data){
                back_to_page_ini();
                alertify.success("Delete Item Success");
            },
            error: function(xhr){                
                alertify.error("error");
                StringtoFile(xhr.responseText, 'error');
            }
        });
    }       
}

function add_item(){    
    $.post('transaksi/transaksi/insert_detail_temp', $("#form_detail").serialize() + "&header_id=" + id_log_a + "&tr_id=" + xtr_id + "&user_id=" + $("#user_id").val() , function (obj) {
        if (obj.msg == 1) {
            reset_form_input();
            back_to_page_ini()
            alertify.success("Insert Data Item Success");                
        } else {
            bksfn.errMsg(obj.msg);
        }
    }, "json").fail(function (xhr) {        
        alertify.error("error");
        StringtoFile(xhr.responseText, 'error');
    });    
}

$('#valas_id').on('change',function(){
    if($(this).val() != null && $(this).val() != ''){
        getratebyid();
    } else {
        $('#price').val('');
    }
});

$("#nominal").keyup(function(e) {
    e.preventDefault();
    $(this).val(formatRupiah($(this).val()));    
    subtotal_input();    
});

$("#sheet").keyup(function(e) {
    e.preventDefault();
    $(this).val(formatRupiah($(this).val()));
    subtotal_input();
    getstockbyid();
    getratebyid();
});    

$("#price").keyup(function(e) {
    e.preventDefault();
    $(this).val(formatRupiah($(this).val()));
    subtotal_input();    
});

function subtotal_input() {
    var xnominal = parseInt(price_to_number($('#nominal').val()));
    var xsheet = parseInt(price_to_number($('#sheet').val()));
    var xtotal_amount = ((xnominal * xsheet));
    $('#total_amount').html(formatRupiah(xtotal_amount.toString()));

    var xprice  = parseInt(price_to_number($('#price').val()));
    var xtotal  = (xtotal_amount * xprice);
    $('#subtotal').val(formatRupiah(xtotal.toString()));
}

$("#btn-add-row-detail").on('click', function (e) {
    e.preventDefault();
    if (id_log_a !== null && id_log_a !== '') {
        if( $("#user_id").val() === null || $("#user_id").val() === '' ) {
            bksfn.errMsg("dibuat oleh belum di pilih!");
            $("#user_id").focus();
        } else if ( $("#valas_id").val() === null || $("#valas_id").val() === '' ){
            bksfn.errMsg("mata uang belum di pilih!");
            $("#valas_id").focus();
        } else if( $("#nominal").val() === 0 || $("#nominal").val() === '' ) {
            bksfn.errMsg("jumlah nominal mata uang belum di input!");
            $("#nominal").focus();    
        } else if( $("#sheet").val() === 0 || $("#sheet").val() === '' ) {
            bksfn.errMsg("jumlah lembar mata uang belum di input!");
            $("#sheet").focus();
        } else if( $("#price").val() === 0 || $("#price").val() === '' ){
            bksfn.errMsg("rate belum di input!");
            $("#price").focus();
        } else {
            var cek_price = parseInt(price_to_number($('#price').val()));
            var cek_price_asli = parseInt(price_to_number($('#price_asli').val()));
            var cek_price_bot = parseInt(price_to_number($('#price_bot').val()));
            var cek_price_top = parseInt(price_to_number($('#price_top').val()))

            if( cek_price_asli > 0 && (cek_price < (cek_price_asli - cek_price_bot )) ){
                alertify.alert('Rate tidak boleh kurang dari ' + formatRupiah((cek_price_asli - cek_price_bot).toString()) + ' !');
                $("#price").val(bksfn.toRp(cek_price_asli));
            } else if( cek_price_asli > 0 && (cek_price > (cek_price_asli + cek_price_top )) ){
                alertify.alert('Rate tidak boleh lebih dari ' + formatRupiah((cek_price_asli + cek_price_top).toString()) + ' !');
                $("#price").val(bksfn.toRp(cek_price_asli));
            } else {
                getstockbyid();
                if(xtr_id == 1){ // Trx Buy                        
                    add_item();
                }
                if(xtr_id == 2){ // Trx Sale
                    if(sisa_stock_sheet > 0){
                        var sheet_input = parseInt(rupiah_to_number( ($("#sheet").val() == null || $("#sheet").val() == '' ? 0 : $("#sheet").val()) ));
                        if( sisa_stock_sheet < sheet_input ){
                            alertify.alert('Stok kurang, hanya tersedia ' + sisa_stock_sheet + ' lembar !');
                            $("#sheet").val(sisa_stock_sheet);
                            subtotal_input();
                            return false;                                                                                                                                                            
                        }
                        if( sisa_stock_sheet >= sheet_input ){
                            add_item();                                            
                        }
                    } else {
                        alertify.alert('Stok kosong!');
                        return false;
                    }                    
                }
            }                                    
        }
    } else {
        bksfn.errMsg("save data terlebih dahulu!");
    }    
});

function getstockbyid(){    
    $.ajax({
        url: baseUrl + 'transaksi/transaksi/getstockbyid',
        type: 'POST',
        data: {'company_id' : companyId, 'store_id' : $("#store_id").val(), 'valas_id' : $("#valas_id").val(), 'nominal' : $("#nominal").val() },
        datatype: 'json',
        success: function(data){
            if (data !== undefined) {
                if (data !== '[]'){   
                    var d = JSON.parse(data)[0];
                    sisa_stock_sheet = (d.last_stock_sheet === null ? 0 : d.last_stock_sheet);
                    sisa_stock_amount = (d.last_stock_amount === null ? 0 : d.last_stock_amount);
                    if(sisa_stock_sheet > 0){
                        $("#stock_nominal").html(bksfn.toRp(d.nominal));
                        $("#stock_sheet").html(bksfn.toRp(sisa_stock_sheet));
                        $("#stock_amount").html(bksfn.toRp(sisa_stock_amount));
                    }                                                                    
                }
            }
        },
        error: function(xhr){            
            alertify.error("error");
            StringtoFile(xhr.responseText, 'error');
        }
    });
}

$("#customer_name").on('click', function (e) {
    e.preventDefault();
    var url = "transaksi/nasabah_form/index/"+customerId;
    $.ajax({
        url: url,
        type: 'POST',
        success: function() {            
            window.open(url,'_blank'); 
        },
        error: function(){            
            alertify.error("can't open page.!");
        }
    }); 
});

function lstatus_name(status_id, id) {
    var status_Id =  Number(status_id);
    var lstatus = '';
    $("#pinfo").hide();
    switch(status_Id) {
        case 1:
            lstatus += 'Task';
            break;
        case 2:
            lstatus += 'Canceled';
            $("#btn-simpan-header").hide();
            $(".form_detail_input").hide();
            $("#btn-confirm").hide();
            $("#btn-cancel").hide();
            $("#pinfo").hide();

            $('#user_id').prop('disabled', true);
            $('#cashier_id').prop('disabled', true);
            $('#store_id').prop('disabled', true);
            $('#payment_type_id').prop('disabled', true);        
            break;
        case 3:
            lstatus += 'Confirm';
            $("#btn-simpan-header").hide();
            $(".form_detail_input").hide();
            $("#btn-confirm").hide();
            $("#btn-cancel").hide();
            $("#pinfo").hide();

            $('#user_id').prop('disabled', true);
            $('#cashier_id').prop('disabled', true);
            $('#store_id').prop('disabled', true);
            $('#payment_type_id').prop('disabled', true);        

            back_to_page_show(id);
            break;
        default:
            lstatus = '';
    }
    return lstatus;
}

function back_to_page_ini(){
    const datex = new Date();
    var currentDate = datex.toISOString().slice(0,10);
    $("#tr_datex").html(': '+bksfn.revDate(currentDate));        

    $("#btn-confirm").hide();
    $("#btn-cancel").hide();  
    $("#pinfo").hide();        
    
    $('#cashier_id').prop('disabled', true);
    $('#store_id').prop('disabled', true);
    $('#payment_type_id').prop('disabled', true);

    $('#btn-simpan-header').prop('disabled', true);
    $('#valas_id').prop('disabled', true);
    $('#btn-add-row-detail').prop('disabled', true);
    if( typeof(id_log_a) != 'undefined' && id_log_a !== null && id_log_a !== '' ) {
        if( typeof(customerId) !== 'undefined' && customerId !== null && customerId !== '') {
            $("#btn-cancel").show();
            let url = '';
            if( xtr_id == 1 ){
                url = call_page_task_buy(customerId, id_log_a);
            } else {
                url = call_page_task_sale(customerId, id_log_a);
            }    
            if(url !== ''){
                $.ajax({
                    url: url,
                    type: 'POST',
                    success: function(data) {            
                        if (data !== '[]') {                        
                            tampil_header();
                        }
                    },
                    error: function(xhr){
                        alertify.error("error");
                        StringtoFile(xhr.responseText, 'error');
                    }
                });
            }                        
        }
    } else {
        reset_form_header();
        reset_form_input();
        $("#ftitle").html('Add');
        var url = '';
        if( xtr_id == 1 ){
            url = call_page_task_buy(customerId, null);
        } else {
            url = call_page_task_sale(customerId, null);
        }
        if(url !== ''){
            $.ajax({
                url: url,
                type: 'POST',
                success: function() {                
                    tampil_data_nasabah();
                },
                error: function(xhr){
                    alertify.error("error");
                    StringtoFile(xhr.responseText, 'error');
                }
            });
        }
    }                          
}

function back_to_page_task(){
    var url = "transaksi/transaksi_task/index/";
    if(url){
        $.ajax({
            url: url,
            type: 'POST',
            success: function() {
                window.open(url,'_self'); 
            },
            error: function(){
                alertify.error("can't open page.!");
            }
        });    
    }
}

function back_to_page_show($ref_id){
    $.ajax({
        url: baseUrl + 'transaksi/transaksi/getshowid',
        type: 'POST',
        data: {'ref_id' : $ref_id},
        datatype: 'json',
        success: function(data){
            if (data !== undefined) {
                if (data !== '[]'){   
                    var d = JSON.parse(data)[0];
                    if(d.customer_id !== null && d.customer_id !== '' && d.customer_id !== null && d.customer_id !== ''){
                        var url = '';
                        if(Number(d.tr_id) == 1){
                            url = call_page_show_buy(d.customer_id, d.id);
                        } else {
                            url = call_page_show_sale(d.customer_id, d.id);
                        }
                        if(url !== ''){
                            $.ajax({
                                url: url,
                                type: 'POST',
                                success: function() {
                                    window.open(url,'_self'); 
                                },
                                error: function(){
                                    alertify.error("can't open page.!");
                                }
                            });    
                        }
                    } else {
                        back_to_page_task();
                    }         
                }
            } else {
                back_to_page_task();
            }
        },
        error: function(xhr){
            alertify.error("error");
            StringtoFile(xhr.responseText, 'error');
        }
    });    
}


function getratebyid(){
    $.ajax({
        url: baseUrl + 'transaksi/transaksi/getratebyid',
        type: 'POST',
        data: {'valas_id' : $("#valas_id").val(), 'tr_id' : xtr_id},
        datatype: 'json',
        success: function(data){
            if (data !== undefined) {
                if (data !== '[]' && data.length > 0){
                    var d = JSON.parse(data)[0];
                    var xrate_today = (d.rate_today === null ? 0 : d.rate_today);
                    var xrate_today_bot = (d.rate_today_bot === null ? 0 : d.rate_today_bot);
                    var xrate_today_top = (d.rate_today_top === null ? 0 : d.rate_today_top);
                    if(Number(xrate_today) > 0){
                        $("#price").val(bksfn.toRp(xrate_today));
                        $("#price_asli").val(bksfn.toRp(xrate_today));                
                        if(Number(xrate_today_bot) > 0){
                            $("#price_bot").val(bksfn.toRp(xrate_today_bot));
                        }
                        if(Number(xrate_today_top) > 0){
                            $("#price_top").val(bksfn.toRp(xrate_today_top));
                        }
                    }                 
                }
            }    
        },
        error: function(xhr){
            alertify.error("error");
            StringtoFile(xhr.responseText, 'error');
        }
    });
}

$('#user_id').on('change',function(){
    if($(this).val() != null && $(this).val() != ''){
        $('#cashier_id').prop('disabled', false);
        $('#cashier_id').focus();
    } else {
        $('#cashier_id').prop('disabled', true);
    }
});

$('#cashier_id').on('change',function(){
    if($(this).val() != null && $(this).val() != ''){
        $('#store_id').prop('disabled', false);
        $('#store_id').focus();
    } else {
        $('#store_id').prop('disabled', true);
    }
});

$('#store_id').on('change',function(){
    if($(this).val() != null && $(this).val() != ''){
        $('#payment_type_id').prop('disabled', false);
        $('#payment_type_id').focus()
    } else {
        $('#payment_type_id').prop('disabled', true);
    }
});

$('#payment_type_id').on('change',function(){
    if($(this).val() != null && $(this).val() != ''){
        $('#btn-simpan-header').prop('disabled', false);
        $('#btn-simpan-header').focus()
    } else {
        $('#btn-simpan-header').prop('disabled', true);
    }
});

$('#btn-simpan-header').on('click', function (e) {
    e.preventDefault();
    if( $("#store_id").val() === null || $("#store_id").val() === '' ) {
        bksfn.errMsg("Stor belum di pilih!");
        $("#user_id").focus();
    } else if( $("#user_id").val() === null || $("#user_id").val() === '' ) {
        bksfn.errMsg("Konter belum di pilih!");
        $("#user_id").focus();
    } else if( $("#cashier_id").val() === null || $("#cashier_id").val() === '' ) {
        bksfn.errMsg("Kasir belum di pilih!");
        $("#cashier_id").focus();
    } else if( $("#payment_type_id").val() === null || $("#payment_type_id").val() === '' ) {
        bksfn.errMsg("Tipe Pembayaran belum di pilih!");
        $("#payment_type_id").focus();
    } else {
        if ($("#ftitle").html().substr(0, 3) == "Add") {            
            $.post('transaksi/transaksi/insert_header_temp', $("#form_header").serialize() + "&customer_id=" + customerId + "&tr_id=" + xtr_id + "&store_id=" + $("#store_id").val() , function (obj) {
                if (obj.msg == 1) {              
                    id_log_a = obj.id;             
                    alertify.success("Insert Data Success");                    
                    var url = '';
                    if( xtr_id == 1 ){
                        url = call_page_task_buy(customerId, id_log_a);
                    } else {
                        url = call_page_task_sale(customerId, id_log_a);
                    }
                    if(url !== ''){
                        $.ajax({
                            url: url,
                            type: 'POST',
                            success: function() {
                                window.open(url,'_self'); 
                            },
                            error: function(){
                                alertify.error("can't open page.!");
                            }
                        });    
                    }                       
                } else {
                    reset_form_header();
                    reset_form_input();
                    bksfn.errMsg(obj.msg);
                }
            }, "json").fail(function (xhr) {                
                alertify.error("error");
                StringtoFile(xhr.responseText, 'error');
            });
        }
        if (id_log_a !== null && id_log_a !== '') {
            $.post('transaksi/transaksi/update_header_temp', $("#form_header").serialize() + "&id=" + id_log_a + "&user_id=" + $("#user_id").val() + "&store_id=" + $("#store_id").val(), function (obj) {
                if (obj.msg == 1) {
                    back_to_page_ini();
                    alertify.success("Edit Data Success");
                } else {
                    reset_form_input();
                    bksfn.errMsg(obj.msg);
                }
            }, "json").fail(function (xhr) {
                alertify.error("error");
                StringtoFile(xhr.responseText, 'error');
            });
        }            
    }
});

$("#btn-cancel").on('click', function (e) {
    e.preventDefault();
    alertify.confirm("Are you sure, CANCEL transaction ?", function (x) {
        if (x) {           
            $.ajax({
                url: baseUrl + 'transaksi/transaksi/cancel_task',
                type: 'POST',
                data: {'id' : id_log_a, 'tr_id' : xtr_id},
                datatype: 'json',
                success: function() {
                    alertify.success('CANCEL Transaction Success!');
                    back_to_page_task();
                },
                error: function(xhr){
                    alertify.error("error");
                    StringtoFile(xhr.responseText, 'error');
                }
            });     
        }    
    });    
});

$("#btn-confirm").on('click', function (e) {
    e.preventDefault();
    if( document.getElementById('table-detail').rows.length < 1 ) {
        bksfn.errMsg("Mata uang belum diinput!");        
    } else {
        alertify.confirm("are you sure, CONFIRM transaction ?", function (x) {
            if (x) {
                $.ajax({
                    url: baseUrl + 'transaksi/transaksi/confirm_task',
                    type: 'POST',
                    data: {'id' : id_log_a, 'tr_id' : xtr_id},
                    datatype: 'json',
                    success: function(data) {
                        if(data.length > 0){
                            if(Number(Apimethod) == 1){
                                var d = JSON.parse(data);
                                if(d.tr_header_id !== null && d.tr_header_id !== ''){
                                    var storeId = d.store_id;
                                    var id_tr_header = d.tr_header_id;
                                    if(ApiAP === 'AP1'){
                                        api_ap1_trx_reccord(storeId, id_tr_header);
                                    }
                                    if(ApiAP === 'AP2'){
                                        api_ap2_trx_reccord(id_tr_header);
                                    }
                                }
                            }    
                            tampil_header();
                            alertify.success('confirm transaction success!');
                        } else {
                            back_to_page_task();
                        }                        
                    },
                    error: function(xhr){
                        alertify.error("error");
                        StringtoFile(xhr.responseText, 'error');
                    }
                });
            }
        });
    }        
});
