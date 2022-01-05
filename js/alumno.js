$(document).ready(function () {

    sesion();
    cargarActividades();

    $('ul.menu li a').click(function () {
        const activeTab = $(this).attr('href');

        if (activeTab == '#tab1')
            cargarActividades();
        // if (activeTab == '#tab2')
        //     cargarUsuarios(2);
        // if (activeTab == '#tab3')
        //     cargarUsuarios(3);
        // if (activeTab == '#tab4')
        //     cargarUsuarios();

        if (activeTab == '#tab6')
            actualizarPerfil();
    });

});

function cargarActividades() {
    $.ajax({
        type: "POST",
        url: "php/temas.php",
        data: { filter: 0 },
        success: (response) => {
            console.log(response);
            const tabla = $("#body-temas").empty();

            for (let index = 0; index < response.length; index++) {
                const element = response[index];
                const item_table = $('<tr>');
                item_table.append('<td>' + element.id_actividades + '</td>');
                item_table.append('<td>' + element.bloque + '</td>');
                item_table.append('<td>' + element.matirials + '</td>');
                item_table.append('<td>' + element.activity_tittle + '</td>');

                tabla.append(item_table);
            }
        }
    });
}

function actualizarPerfil() {
    const dataUser = JSON.parse(localStorage.getItem('dataUser'));

    $.ajax({
        type: "POST",
        url: "php/perfil.php",
        data: { action: 'get', id: dataUser.id_security },
        success: (response) => {
            console.log(response);
            $("#nombre").val(response.complete_name);
            $("#telefono").val(response.telefono);
            $("#correoP").val(response.email);
            $("#correoA").val(response.email_secundary);
            $("#usuario").val(response.user);
            $("#password").val(response.password);
            $("#id").val(response.id_security);
        }
    });
}

$("#btn-form-perfil").click(function (e) {
    e.preventDefault();

    $.ajax({
        type: "POST",
        url: "php/perfil.php",
        data: $('.formulario-usuario').serialize(),
        success: (response) => {
            alert(response);
        }
    });
});