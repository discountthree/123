$(function () {
    //默认隐藏格式错误提示
    $('.hint').hide();

    //用户名校验
    $('#name').blur(function () {
        var reg = /^[a-zA-Z\d]{6,12}$/;
        if (reg.test($(this).val())) {
            $('#name').next('span').hide()
        } else {
            $('#name').next('span').show()
        }
    });

    //邮箱校验
    $('#email').blur(function () {
        var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;

        if (reg.test($(this).val())) {
            $('#email').next('span').hide()
        } else {
            $('#email').next('span').show()
        }
    });

    //密码检验
    $('#password1').blur(function () {
        var reg = /^[a-zA-Z\d]{6,12}$/;
        if (reg.test($(this).val())) {
            $('#password1').next('span').hide()
        } else {
            $('#password1').next('span').show()
        }
    });

    //再次输入密码检验
    $('#password2').blur(function () {
        if ($('#password1').val() == $('#password2').val()) {
            $('#password2').next('span').hide()
        } else {
            $('#password2').next('span').show()
        }
    })

});