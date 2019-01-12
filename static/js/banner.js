$(function () {
    // swiper pagination初始化
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 30,
        loop: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false,
        paginationBulletRender: function (swiper, index, className) {
            return '<span class="' + className + '">' + (index + 1) + '</span>';
        }
    });

    $('#banner').mouseenter(function () {
        $('.swiper-button-prev').show();
        $('.swiper-button-next').show()
    });
    $('#banner').mouseleave(function () {
        $('.swiper-button-prev').hide();
        $('.swiper-button-next').hide()
    });
});