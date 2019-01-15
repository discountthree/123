$(function () {

    var is_select = true
    $('#checkbox').click(function () {
        if (is_select){
            $(this).children('input').attr('checked', '')
            console.log('已移除')
        } else {
            $(this).children('input').attr('checked', 'checked')
            console.log('已添加')
        }
        is_select = !is_select
    })

});