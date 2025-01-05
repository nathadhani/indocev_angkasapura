(function ($) {
    var storeId = '';
    var xtr_id = (decrypt(tr_uri_code) === 'buy' ? 1 : decrypt(tr_uri_code) === 'sale' ? 2 : 0);
    back_to_page_show();

    function back_to_page_show(){
        tampil_header(id_tr_header);
        tampil_detail(id_tr_header);        
    }

    function tampil_header(id){
        if( typeof(customerId) !== 'undefined') {
            if(customerId !== null && customerId !== '') {
                $.ajax({
                    url: baseUrl + "transaksi/transaksi_show/tampil_header",
                    type: 'POST',
                    data: {'customer_id' : customerId, 'tr_id' : xtr_id, 'id' : id},
                    datatype: 'json',
                    success: function(data){
                        if (data !== '[]'){
                            var d = JSON.parse(data)[0];
                            $("body").data("id", d.id);
                            $("#tr_number").html(': '+d.tr_number);
                            $("#tr_date").html(': '+bksfn.revDate(d.tr_date));
                            $("#ftitle").html(lstatus_name(d.status));
                            
                            $("#created_by").html('Created by : '+d.createdby_name +' | '+d.created);
                            if(d.status == '2'){
                                $("#cancel_by").html('Canceled by : '+d.updatedby_name +' | '+d.updated);
                            }                            

                            $("#customer_name").html(d.customer_name);
                            $("#payment_name").html(d.payment_type_name);

                            $("#store_name").html(d.store_name);
                            $("#store_address").html(d.store_address);                            
                            $("#counter_name").html(d.createdby_name);
                            $("#cashier_name").html(d.cashier_name);

                            storeId = d.store_id;
                        } else{                        
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

    function tampil_detail(header_id){
        if( typeof(customerId) !== 'undefined') {
            if(customerId !== null && customerId !== '') {
                $('#table-detail tbody').empty();
                var counter = document.getElementById('table-detail').rows.length;
                $.ajax({
                    url: baseUrl + 'transaksi/transaksi_show/tampil_detail',
                    type: 'POST',
                    data: {'customer_id' : customerId, 'tr_id' : xtr_id, 'header_id' : header_id},
                    dataType: 'json',
                    success: function (data) {
                        if (data !== '[]' && data.length > 0){
                            var totalpricex = 0;
                            $.each(data, function (i, d) {                 
                                totalpricex += Number(d.subtotal);
                                var rows =`<tr id="` + counter + `">
                                            <td width="5%" style="text-align:center;vertical-align:middle">
                                                ` + counter + `
                                            </td>
                                            <td width="30%" style="vertical-align: middle;color:black">
                                                ` + d.valas_code + ' - ' + d.valas_name +`                       
                                            </td>
                                            <td width="10%" style='text-align:center;'>
                                                ` + bksfn.toRp(d.nominal) + `
                                            </td>
                                            <td width="10%" style='text-align:center;'>
                                                ` + bksfn.toRp(d.sheet) + `
                                            </td>
                                            <td width="15%" style='text-align:center;'>
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
                        }else{
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

    function lstatus_name(status_id) {
        var status_Id =  Number(status_id);
        var lstatus = '';
        $("#pinfo").hide();
        switch(status_Id) {
            case 1:
                lstatus += 'Confirm';
                if(Number(Apimethod) == 1){
                    $("#btn-submit").show();
                    $("#btn-cancel").show();
                    if(ApiAP === 'AP1'){
                        $("#btn-advice").hide();
                    }                
                    $("#pinfo").show();
                }                
                break;
            case 2:
                lstatus += 'Canceled';
                $("#btn-submit").hide();
                $("#btn-cancel").hide();
                $("#btn-pdf").hide();
                $("#btn-dot-matrix").hide();
                $("#btn-advice").hide();
                $("#pinfo").hide();
                break;
            case 3:
                lstatus += 'API - Record';
                $("#btn-submit").hide();                
                $("#pinfo").show();
                if(ApiAP === 'AP1'){
                    $("#btn-advice").show();
                    $("#btn-cancel").show();
                    $("#pinfo").show();
                }            
                $("#pinfo_apirecord").hide();    
                break;
            case 4:
                lstatus += 'API - Advice';
                $("#btn-submit").hide();
                $("#btn-advice").hide();
                $("#btn-cancel").show();
                $("#pinfo").show();
                $("#pinfo_apirecord").hide();
                $("#pinfo_apiadvice").hide();
                break;
            default:
                lstatus = '';
        }
        return lstatus;
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
                alertify.error("can't open page");
            }
        }); 
    });

    $("#btn-submit").on('click', function (e) {
        e.preventDefault();
        if(ApiAP === 'AP1'){
            alertify.confirm("are you sure, API - Transaction Reccord ?", function (x) {
                if (x) {
                    api_ap1_trx_reccord(storeId, id_tr_header);
                }   
            });            
        }
        if(ApiAP === 'AP2'){
            alertify.confirm("are you sure, API - Transaction Input ?", function (x) {
                if (x) {
                    api_ap2_trx_reccord(id_tr_header);
                }
            });
        }
    });
    
    $("#btn-advice").on('click', function (e) {
        e.preventDefault();
        if(Number(Apimethod) == 1){
            if(ApiAP === 'AP1'){
                alertify.confirm("are you sure, API - Transaction Advice ?", function (x) {
                    if (x) {
                        api_ap1_trx_advice(storeId, id_tr_header);
                    }
                });
            }
        }
    });

    $("#btn-cancel").on('click', function (e) {
        e.preventDefault();
        if(Number(Apimethod) == 1){
            if(ApiAP === 'AP1'){
                alertify.confirm("are you sure, API - Transaction Refund ?", function (x) {
                    if (x) {
                        api_ap1_trx_refund(storeId, id_tr_header);                        
                    }
                });
            }
            if(ApiAP === 'AP2'){
                alertify.confirm("are you sure, API - Transaction Adjustment ?", function (x) {
                    if (x) {
                        api_ap2_trx_refund(id_tr_header);                        
                    }
                });
            }      
        } else {
            alertify.confirm("are you sure, CANCEL transaction ?", function (x) {
                if (x) {
                    $.ajax({
                        url: baseUrl + 'transaksi/transaksi_show/cancel_trx',
                        type: 'POST',
                        data: {'id' : id_tr_header},
                        datatype: 'json',
                        success: function() {
                            back_to_page_show();
                            alertify.success('CANCEL Transaction Success!');
                        },
                        error: function(xhr){
                            alertify.error("error");
                            StringtoFile(xhr.responseText, 'error');
                            back_to_page_show();
                        }
                    });                                                    
                } else {
                    back_to_page_show();
                }   
            });
        }            
    });   
    

    $("#btn-pdf").on('click', function (e) {
        e.preventDefault();
        // alertify.confirm("export to Pdf Trx. No " + document.getElementById('tr_number').innerText + " ?", function (e) {    
        //     if (e) {                
                var url = "transaksi/transaksi_show/printpdf/" + id_tr_header + "/" + xtr_id;
                $.ajax({
                    url: url,
                    type: 'POST',
                    success: function(resp){
                        window.open(url,'blank');                                                                             
                    },
                    error: function(xhr){
                        alertify.error("error can't print");
                        StringtoFile(xhr.responseText, 'error');
                    }
                });                                       
        //     }    
        // });  
    });

    $("#btn-dot-matrix").hide();
    $(".dotmatrix").hide();
    $("#btn-dot-matrix").on('click', function (e) {
        e.preventDefault();
        alertify.confirm("Print Trx. No " + document.getElementById('tr_number').innerText + " ?", function (e) {    
            if (e) {
                var url = "transaksi/transaksi_show/printdotmatrix/" + id_tr_header + "/" + xtr_id;                
                $.ajax({
                    url: url,
                    type: 'POST',
                    success: function(resp){                                            
                        if (resp) {
                            console.log(resp);
                            let result;
                            try {
                                result = JSON.parse(resp);
                                if(result.msg){
                                    alertify.alert(result.msg);
                                } else {
                                    alertify.alert(resp);        
                                }
                            } catch (err) {
                                alertify.error(err.message);
                                StringtoFile(resp, 'error');        
                            }                            
                        }                                                     
                    },
                    error: function(xhr){
                        alertify.error("error can't print");
                        StringtoFile(xhr.responseText, 'error');
                    }
                });                                       
            }    
        });  
    });
        
})(jQuery);