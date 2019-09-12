

$(function () {

    var $el = $('.dialog');
    $el.hDialog();
    // $('#HBox').show();
    $.goTop();
    
    // $('#chneoalxfxaybxmybr').play();
    

    $('.hotschool_box2 .hostb2_item').eq(0).addClass('active');
    $('.list_ul .list_bvel').eq(0).addClass('active');
    $('#m_information .m_infor_nav .m_in_item').eq(0).addClass('active');
    $('#m_information .m_info_list ul').eq(0).addClass('open');

    if ($(".box_checked input[type='checkbox']").is(':checked')) {

        $('.checkimg').show();

        $('.box_check').hide();

    } else {

        $('.checkimg').hide();

        $('.box_check').show();

    }

});

$(".box_checkinput").click(function () {
    if ($(".box_checked input[type='checkbox']").is(':checked')) {

        $('.checkimg').show();

        $('.box_check').hide();

    } else {

        $('.checkimg').hide();

        $('.box_check').show();

    }

})

$('#m_information .m_infor_nav .m_in_item').click(function () {

    $(this).addClass('active').siblings().removeClass('active');

})

$('.hotschool_box2 .hostb2_item').hover(function () {

    $(this).addClass('active').siblings().removeClass('active');

})
$('#m_information .m_infor_nav .m_in_item').each(function (i) {

    $(this).click(function () {

        $('#m_information .m_info_list ul').each(function (j, val) {

            if (i == j) {

                $(this).addClass('open').siblings().removeClass('open');

            }

        })

    })

})


$('.hostb2_topnav .hostb2_item').each(function (i) {

    $(this).hover(function () {
        $('.list_ul .list_bvel').each(function (j, val) {

            if (i == j) {

                $(this).addClass('active').siblings().removeClass('active');

            }

        })

    })

})