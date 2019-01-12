$(function () {

    //活动时间
    $(".ctb_right ul li").click(function () {
        // console.log("ee");
        var index = $(this).index();
        // console.log(index)
        $(this).find("b").css("display", "block").parent().parent().siblings().find("b").css("display", "none");
        $(this).find("span").css({
            background: "#fe5400",
            color: "#fff",
            fontSize: "18px",
            borderRadius: "8px"
        }).parent().parent().siblings().find("span").css({background: "none", color: "#999", fontSize: "14px"});
    });

})


