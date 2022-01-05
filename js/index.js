$(document).ready(function () {
    
});

$('#btn-login').click(function (e) {
    e.preventDefault();
    const form = $('#formulario').serialize();

    $.ajax({
        type: "POST",
        url: "php/login.php",
        data: form,
        success: (response) => {
            console.log(response);
            if (response == null) {
                alert('Datos Incorrectos');
            } else {
                localStorage.setItem('sesion', true);
                localStorage.setItem('dataUser', JSON.stringify(response));

                if (response.user_level == 1)
                    window.location.href = 'administrador.html';
                if (response.user_level == 2)
                    window.location.href = 'profesor.html';
                if (response.user_level == 3)
                    window.location.href = 'alumno.html';
            }
        }
    });
});