$(function () {

    // 默认减号和数字隐藏
    $('#minus').hide();
    $('#num').hide();


    // 加操作
    $('#plus').click(function () {
        var goodsid = $(this).attr('goodsid');
        // ajax请求
        $.get('/app/addshopcar/', {'goodsid': goodsid}, function (response) {
            console.log(response);
            if (response.status == -1) {
                // 未登录,跳转登录页面
                window.open('/app/login/', target = '_self')
            } else if (response.status == 1) {
                // 添加到购物车成功
                $('#minus').show();
                $('#num').show().html(response.num);
            }
        })
    });

    //减操作
    $('#minus').click(function () {
        var goodsid = $(this).attr('goodsid');
        $.get('/app/delshopcar/', {'goodsid': goodsid}, function (response) {
            console.log(response)
            if (response.status == 1) {
                // if (response.num > 0) {
                //     $('#num').html(response.num)
                // } else {
                //     $('#minus').hide();
                //     $('#num').hide();
                // }

                if (response.num <= 0) {
                    $('#minus').hide();
                    $('#num').hide();
                } else {
                    $('#num').html(response.num)
                }
            }
        })
    })
});