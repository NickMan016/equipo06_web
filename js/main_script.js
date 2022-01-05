$(document).ready(function () {
    let fecha = document.getElementById('fecha');
    fecha.innerHTML = Date();

    $('ul.menu li a:first').addClass('active');
    $('.secciones article').hide();
    $('.secciones article:first').show();

    $('ul.menu li a').click(function () {
        $('ul.menu li a').removeClass('active');
        $(this).addClass('active');
        $('.secciones article').hide();

        const activeTab = $(this).attr('href');
        $(activeTab).show();
        return false;
    });


    // $('.secciones article').hide();
    // $('#tab6').show();
})

function sesion() {
    if (localStorage.getItem('sesion') == null) {
        window.location.href = 'index.html';
    } else {
        const dataUser = JSON.parse(localStorage.getItem('dataUser'));
        $(".username").text(dataUser.user);
    }
}