$(function () {

    // 记录点击下标
    var liIndex = $.cookie('liIndex');
    // console.log(liIndex)
    if (liIndex) {
        //console.log(liIndex)
        $('.ctb-li').eq(liIndex).find("b").css("display", "block");
        $('.ctb-li').eq(liIndex).find("span").css({
            background: "#fe5400",
            color: "#fff",
            fontSize: "18px",
            borderRadius: "8px"
        });
    } else {
        $('.ctb-li:first').find("b").css("display", "block");
        $('.ctb-li:first').find("span").css({
            background: "#fe5400",
            color: "#fff",
            fontSize: "18px",
            borderRadius: "8px"
        });
    }

    // 记录点击下标
    $('.ctb-li').click(function () {
        $.cookie('liIndex', $(this).index(), {path: '/'});
    })

});


