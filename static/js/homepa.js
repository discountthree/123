$(function () {
    //头部列表
    $("#mypet").mouseenter(function () {
        $(".mypet").css("display", "block");

    })
    $("#mypet").mouseleave(function () {
        $(".mypet").css("display", "none");
    })
    $("#mycollect").mouseenter(function () {
        $(".mycollect").css("display", "block");
    })
    $("#mycollect").mouseleave(function () {
        $(".mycollect").css("display", "none");
    })

    //商品列表
    $(".dog").mouseenter(function () {

        $(".main_left").css("display", "block");
        $(".goods").css("display", "none");
    })

    $(".sort").mouseenter(function () {

        $(".main_left").css("display", "none");
        $(".goods").css("display", "block");
    })

    $(".goods span").mouseenter(function () {
        $(this).css("border", "1px solid green").siblings().css("border", "none");
        $(this).children("div").css("display", "block");
    })
    $(".goods span").mouseleave(function () {
        $(this).css("border", "none");
        $(this).children("div").css("display", "none");
    })


    //活动时间
    $(".ctb_right ul li").mouseenter(function () {
        // console.log("ee");
        var index = $(this).index();
        console.log(index)
        $(this).find("b").css("display", "block").parent().siblings().find("b").css("display", "none");
        $(this).find("span").css({
            background: "#fe5400",
            color: "#fff",
            fontSize: "18px",
            borderRadius: "8px"
        }).parent().siblings().find("span").css({background: "none", color: "#999", fontSize: "14px"});
        // $(".center1_right").children("div").eq(index).show().siblings().hide();

        $.ajax({
            type: "get",//数据发送的方式（post 或者 get）
            url: "/daily/",//要发送的后台地址
            data: {'index': index},//要发送的数据（参数）格式为{'val1':"1","val2":"2"}
            dataType: "json",//后台处理后返回的数据格式
            success: function (data) {//ajax请求成功后触发的方法
                console.log('请求成功');
            },
            error: function (msg) {//ajax请求失败后触发的方法
                console.log(msg);//弹出错误信息
            }
        });
    });

})


