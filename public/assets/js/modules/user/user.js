(function ($) {
    if( usergroupId == 1) {
        $("#ftitle").html('Add');
    } else {
        $("#ftitle").html('Edit');
    }

    //--- Form Submit
    $("#mainForm").submit(function (e) {
        e.preventDefault();
        $(':submit', this).attr('disabled', true);
    }).on('reset', function (e) {        
        if( usergroupId == 1) {
            $("#ftitle").html('Add');
        } else {
            $("#ftitle").html('Edit');
        }   

        $("#username").focus();
        $("#fullname").html('');
        $("#email").html('');
        $("#celluler").html('');
        $("#status").iCheck('checked');

        if( usergroupId == 1) {
            $("#company_id").html('').sel2dma();
            $("#region").html('').sel2dma();
            $("#usergroup_id").html('').sel2dma();
            $("#userlevel_id").html('').sel2dma();    
        }

        $('#password').prev().addClass('mandatory');
        $('#password').attr('data-validation', 'required');
        $(':submit').removeAttr('disabled');
    });

    //--- Validasi
    $.validate({
        form: "#mainForm",
        validateOnBlur: false,
        onError: function () {
            $('.help-block').remove();
            bksfn.errMsg("Please fill form");
        },
        onSuccess: function () {
            if( usergroupId == 1) {
                var company_id = $("#company_id").val();
            } else {
                var company_id = companyId;
            }  
            if ($("#ftitle").html().substr(0, 4) == "Edit") {
                //--- Edit
                $.post('user/update', $("#mainForm").serialize() + "&id=" + $("body").data("id") + "&company_id=" + company_id, function (obj) {
                    if (obj.msg == 1) {
                        $("#mainForm")[0].reset();
                        $('#mainTable table').DataTable().ajax.reload();
                        alertify.success("Edit Data Success");
                    } else {
                        bksfn.errMsg(obj.msg);
                    }
                }, "json").fail(function () {
                    bksfn.errMsg();
                });
            } else {
                if( usergroupId == 1) {
                    //--- Insert
                    $.post('user/insert', $("#mainForm").serialize() + "&company_id=" + company_id, function (obj) {
                        if (obj.msg == 1) {
                            $("#mainForm")[0].reset();
                            $('#mainTable table').DataTable().ajax.reload();
                            alertify.success("Insert Data Success");
                        } else {
                            bksfn.errMsg(obj.msg);
                        }
                    }, "json").fail(function () {
                        bksfn.errMsg();
                    });
                } else {
                    $.ajax({
                        url: baseUrl + 'user/getcountuserbyCompanyId',
                        type: 'POST',
                        data: {'company_id' : companyId},
                        datatype: 'json',
                        success: function(data){
                            if (data !== undefined) {
                                if (data !== '[]'){
                                    var d = JSON.parse(data);
                                    if(Number(d.count_users) < Number(d.user_limits) ){
                                        //--- Insert
                                        $.post('user/insert', $("#mainForm").serialize() + "&company_id=" + company_id, function (obj) {
                                            if (obj.msg == 1) {
                                                $("#mainForm")[0].reset();
                                                $('#mainTable table').DataTable().ajax.reload();
                                                alertify.success("Insert Data Success");
                                            } else {
                                                bksfn.errMsg(obj.msg);
                                            }
                                        }, "json").fail(function () {
                                            bksfn.errMsg();
                                        });
                                    } else {
                                        $("#mainForm")[0].reset();
                                        alertify.error('maaf jumlah user dibatasi, hanya ' + d.user_limits + ' akun saja.!');
                                    }
                                }
                            }
                        },
                        error: function(xhr){
                            alertify.error(xhr.responseText);
                        }
                    });
                }                                
            }
        }
    });    

    //--- getData Datatables
    var t = $('#mainTable table').DataTable({
        serverSide: true,
        processing: true,
        autoWidth: false,
        sDom: 'it<"row"lp>',
        lengthMenu: [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
        ajax: {
            url: baseUrl + 'user/getData',
            type: 'POST'
        },
        columns: [
            {data: "#", className: "dt-body-center", width: "5%", orderable: false, searchable: false},
            {data: 'username', render: function (data, type, row, meta) {                    
                    return data;                    
                }
            },            
            {data: 'fullname'},    
            {data: 'email', render: function (data, type, row, meta) {
                     return (data === null ? '' : data);
                }
            },
            {data: 'celluler'},
            {data: 'userlevelname'},
            {data: 'company_address'},
            {data: 'userlevel_id', render: function (data, type, row, meta) {
                var act = (row.lastlog !== null) ? row.lastlog : '';
                return act;
            }},          
            {data: 'status', className: "dt-body-center", width: "5%", render: function (data, type, row, meta) {
                    var act = (data == '1') ? '<span class="label label-success"><i class="fa fa-check"></i></span>' : '<span class="label label-danger"><i class="fa fa-times"></i></span>';
                    return act;
                }
            },            
            {data: 'id', className: "dt-body-center", orderable: false, width: "5%", render: function (data, type, row, meta) {
                    if( userlevelId == 1){
                        return '<a title="Edit" href="#"><i class="fa fa-edit"></i></a>';
                    } else {
                        return '';
                    }                    
                }
            },
            {data: 'id', visible: false},
            {data: 'company_id', visible: false},
            {data: 'company_name', visible: false},
            {data: 'company_city', visible: false},
            {data: 'region', visible: false},
            {data: 'region_code', visible: false},
            {data: 'usergroup_id', visible: false},
            {data: 'usergroupname', visible: false},
            {data: 'userlevel_id', visible: false},
            {data: 'lastlog', visible: false},
        ],
        order: [[7, 'asc'],[1, 'asc']]
    });
    //--- Select Row , Toggle Row & Delete
    $('#mainTable').selectDTBks(t, 'user/delete');

    // Setup - add a text input to each header cell
    $('#searchid td').each(function () {
        if ($(this).index() != 0 && $(this).index() != 7 && $(this).index() != 9) {
            $(this).html('<input style="width:100%" type="text" placeholder="Search" data-id="' + $(this).index() + '" />');
        }
        if ($(this).index() == 8) {
            $(this).html('<select style="width:100%" type="text"><option value="">-</option><option value="1">Active</option><option value="0">Not Active</option><select/>');
        }
    });
    $('#searchid input').keyup(function () {
        t.columns($(this).data('id')).search(this.value).draw();
    });
    $('#searchid select').change(function () {
        t.columns(8).search(this.value).draw();
    });
    $(".clrs").click(function () {
        $('#searchid input').val('');
        $('#searchid select').val('');
        t.search('')
        t.columns().search('').draw();
    });    

    //--- Edit Data
    $('#mainTable').on('click', 'a[title^=Edit]', function (e) {
        e.preventDefault();
        $("#mainForm")[0].reset();
        window.scroll(0, 0);
        if ($("#mainForm .panel-body").css('display') == 'none') {
            $("#mainForm .panel-controls a").click();
        }
        var elm = $(this).closest("tr");
        var d = t.row(elm).data();
        $("#ftitle").html('Edit');
        $("#username").val(d.username).focus();
        $('#password').prev().removeClass('mandatory');
        $('#password').removeAttr('data-validation');

        $("#fullname").val(d.fullname);

        if( usergroupId == 1) {
            if (d.company_id != null) {
                $("#company_id").html('<option value="' + d.company_id + '">' + d.company_address + '</option>').sel2dma();
            } else {
                $("#company_id").html('').sel2dma();
            }
            
            if (d.region_code != null) {
                region_code = JSON.parse(d.region_code);
                // console.log(region_code);    
                $("#region").html('').sel2dma();    
                $.each(region_code, function (i, val) {
                    $("#region").append(`<option value="${val.id}">${val.company_addres} [${val.id}]</option>`);    
                    $("#region-container").find("span.select2-container ul.select2-selection__rendered").append(`<li class="select2-selection__choice" title="${val.company_addres} [${val.id}]"><span class="select2-selection__choice__remove" role="presentation">×</span>${val.company_addres} [${val.id}]</li>`);
                });    
                $("input.select2-search__field").attr('placeholder', '');
                $("input.select2-search__field").css("width", "0");
                $("ul.select2-selection__rendered").append('<span class="select2-selection__clear">×</span>');
            }    
            if (d.region != null) {
                $("#region").val(d.region.split(','));
            }
        }

        if (d.usergroup_id != null) {
            $("#usergroup_id").html('<option value="' + d.usergroup_id + '">' + d.usergroupname + '</option>').sel2dma();
        } else {
            $("#usergroup_id").html('').sel2dma();
        }

        if (d.userlevel_id != null) {
            $("#userlevel_id").html('<option value="' + d.userlevel_id + '">' + d.userlevelname + '</option>').sel2dma();
        } else {
            $("#userlevel_id").html('').sel2dma();
        }

        $("#email").val(d.email);
        $("#celluler").val(d.celluler);
        
        $("#status").iCheck(d.status == 1 ? 'check' : 'uncheck');
        $("body").data("id", d.id);
    });    

})(jQuery);