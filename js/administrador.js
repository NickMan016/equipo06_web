$(document).ready(function () {
    
    sesion();
    cargarUsuarios(1);

    $.ajax({
        type: "POST",
        url: "php/temas.php",
        data: { filter: 0 },
        success: (response) => {
            const lista_actividades = $("#actividades");
            const actividades_contenido = $("#actividades-contenido");
            for (let index = 0; index < response.length; index++) {
                const element = response[index];
                const item_list = $('<li>');
                const actividad = $("<article>", {
                    id: "act" + element.id_actividades,
                    css: { display: "none" }
                });
                item_list.append($('<a>', {
                    text: element.activity_tittle,
                    href: '#act' + element.id_actividades
                }).click(function () {
                    menuActividades($(this).attr('href'));
                }));

                actividad.append($('<div>', {
                    class: 'titulo-table',
                    html: element.activity_tittle
                }));
                actividad.append($('<div>', {
                    class: 'contenedor-actividad',
                    html: element.task_description.replace(/\n/g, "<br/>"),
                }));
                lista_actividades.append(item_list);
                actividades_contenido.append(actividad);
            }
        }
    });

    $('ul.menu li a').click(function () {
        const activeTab = $(this).attr('href');

        if (activeTab == '#tab1')
            cargarUsuarios(1);
        if (activeTab == '#tab2')
            cargarUsuarios(2);
        if (activeTab == '#tab3')
            cargarUsuarios(3);
        if (activeTab == '#tab4')
            cargarUsuarios();

        if (activeTab == '#tab5')
            cargarActividades();
        if (activeTab == '#tab6')
            cargarEvaluacion();

        if (activeTab == '#tab8')
            actualizarPerfil();
    });
});

function menuActividades(activeTab) {
    $('ul.menu li a').removeClass('active');
    $('.secciones article').hide();
    $(activeTab).show()
}

function cargarUsuarios(filter) {
    if (filter == undefined)
        filter = 0

    let tabla;
    $.ajax({
        type: "POST",
        url: "php/usuarios.php",
        data: { filter: filter },
        success: (response) => {

            if (filter == 1)
                tabla = $("#body-admin").empty();
            if (filter == 2)
                tabla = $("#body-profesor").empty();
            if (filter == 3)
                tabla = $("#body-alumno").empty();
            if (filter == 0)
                tabla = $("#body-all").empty();

            for (let index = 0; index < response.length; index++) {
                const element = response[index];
                let item_table = $('<tr>');
                item_table.append('<td>' + element.complete_name + '</td>');
                item_table.append('<td>' + element.email + '</td>');
                // item_table.append('<td>' + element.email_secundary + '</td>');
                item_table.append('<td>' + element.user_level + '</td>');
                item_table.append('<td>' + element.telefono + '</td>');
                item_table.append('<td>' + element.user + '</td>');
                item_table.append('<td>' + element.password + '</td>');
                tabla.append(item_table);
            }
        }
    });
}

function cargarActividades() {
    $.ajax({
        type: "POST",
        url: "php/temas.php",
        data: { filter: 0 },
        success: (response) => {
            console.log(response);
            // const evaluacion = response[0];
            // $("#titulo").text(evaluacion.activity_tittle);
            // $("#contenedor-actividad").html(evaluacion.task_description.replace(/\n/g, "<br/>"));
        }
    });
}

function cargarEvaluacion() {
    $.ajax({
        type: "POST",
        url: "php/temas.php",
        data: { filter: 5 },
        success: (response) => {
            console.log(response);
            const evaluacion = response[0];
            $("#titulo").text(evaluacion.activity_tittle);
            $("#contenedor-actividad").html(evaluacion.task_description.replace(/\n/g, "<br/>"));
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

$(".btn-form").click(function (e) { 
    e.preventDefault();
    localStorage.removeItem('sesion');
    localStorage.removeItem('dataUser');
    window.location.href = 'index.html';
});