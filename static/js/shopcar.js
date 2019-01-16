$(function () {

    // 页面刷新判断全选状态
    init()

    function init() {
        var $span = $('.summary').find('span');
        // console.log($span)
        if ($span.hasClass('no')) {
            $('.all').find('span').removeClass('glyphicon glyphicon-ok').addClass('no')
            // console.log('取消全选')
            $('.all').attr('isall','false')
        } else {
            // console.log('全选')
            $('.all').find('span').removeClass('no').addClass('glyphicon glyphicon-ok')
            $('.all').attr('isall','true')
        }
    }


    //修改选中状态
    $('.shopcar .checkbox').click(function () {
        var goodsid = $(this).attr('goodsid');
        var $span = $(this).find('span');
        // console.log('index')
        $.get('/app/changestatus/', {'goodsid': goodsid}, function (response) {
            if (response.status) {
                var is_select = response.is_select;
                if (is_select) {
                    $span.removeClass('no').addClass('glyphicon glyphicon-ok')
                } else {
                    $span.removeClass('glyphicon glyphicon-ok').addClass('no')
                }
            }
            init()
            total()
        })
    });


    //全选或取消全选
    $('.shopcar .all').click(function () {
        var isall = $(this).attr('isall');
        isall = (isall == 'false') ? true : false
        // console.log(isall)
        $(this).attr('isall', isall);

        //样式显示
        var $span = $(this).find('span');

        if (isall) {
            $span.removeClass('no').addClass('glyphicon glyphicon-ok')
        } else {
            $span.removeClass('glyphicon glyphicon-ok').addClass('no')
        }

        // 发起ajax请求
        $.get('/app/changeisall/', {'isall': isall}, function (response) {
            console.log(response);
            if (response.status) {
                // 遍历
                $('.shopcar .list_ul').each(function () {
                    if (isall) {
                        $(this).find('span').removeClass('no').addClass('glyphicon glyphicon-ok')
                    } else {
                        $(this).find('span').removeClass('glyphicon glyphicon-ok').addClass('no')
                    }
                });
                total()
            }
        })
    });

    // 计算总数
    function total() {
        var sum = 0

        // 个数 × 单价 【选中】
        $('.summary').each(function () {
            var $checkbox = $(this).find('.checkbox');
            // console.log($(this))
            var $units = $(this).find('.units');

            if ($checkbox.find('.glyphicon-ok').length) { // 选中
                var num = parseFloat($units.find('.unit').attr('unit'));
                // console.log(typeof (num))
                var price = parseFloat($units.find('.unitprice').attr('unitprice'))
                // console.log(price)
                sum += num * price
            }
        });
        // 显示金额
        // $('.total h3').html(parseInt(sum))
        $('.total h3').html(parseFloat(sum))
    }

});