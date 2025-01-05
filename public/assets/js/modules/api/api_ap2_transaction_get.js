(function ($) {
    $('#company_id').on('change',function(e){
        e.preventDefault()
        if($(this).val() != null && $(this).val() != ''){
            $('#store_id').html('').sel2dma();
            $('#store_id').prop('disabled', false);
            $('#store_id').focus()
            $.ajax({
                url : baseUrl +  'master_data/m_store/getStore',
                type: 'POST',
                data: {'company_id' : $(this).val()},
                datatype: 'json',
                success: function(data){
                    $('#store_id').html(data);
                },
                error: function(){
                    alert("can't get store");  
                }
            });
        } else {    
            $('#store_id').html('').sel2dma();
            $('#store_id').prop('disabled', true); 
        }
    });        
    
    $("#btn-submit").on('click', function (e) {
        e.preventDefault();
        if($('#company_id').val() === null || $('#company_id').val() === ''){
            bksfn.errMsg('Cabang Belum Dipilih!');
        } else if($('#store_id').val() === null || $('#store_id').val() === ''){
            bksfn.errMsg('Store Belum Dipilih!');            
        } else {
            var url = "api/api_ap2_transaction_get/excel/"+$('#tr_date').val()+"/"+$('#company_id').val()+"/"+$('#store_id').val();
            $.ajax({
                url: url,
                type: 'POST',
                data: {},
                beforeSend: function(){
                    $(".ajax-loader").height($(document).height());
                    $('.ajax-loader').css("visibility", "visible");
                },
                success: function() {
                    window.open(url,'_self'); 
                },
                complete: function(){
                    $('.ajax-loader').css("visibility", "hidden");
                }
            }).done(function(data){
                var $a = $("<a>");
                    $a.attr("href",data.file);
                    $("body").append($a);
                    $a.attr("download","temp.xlsx");
                    $a[0].click();
                    $a.remove();
            });   
        }        
    });    
})(jQuery);