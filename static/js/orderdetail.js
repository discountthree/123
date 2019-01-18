$(function () {

    console.log('你好')

    $('.end-right').click(function () {
        var orderid = $(this).attr('orderid')
        $.get('/app/pay/', {'orderid': orderid}, function (response) {
            console.log(response)
            if (response.status){
                window.open(response.alipay_url, target='_self')
            }
        })
    })

});