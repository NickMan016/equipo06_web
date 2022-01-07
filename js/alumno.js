$(document).ready(function () {

    sesion();
    cargarActividades();

    $.ajax({
        type: "POST",
        url: "php/temas.php",
        data: { filter: 0 },
        success: (response) => {
            const lista_actividades = $("#actividades");
            const actividades_contenido = $("#actividades-contenido");
            const list_select = $("#titulo-select");
            for (let index = 0; index < response.length; index++) {
                const element = response[index];
                const item_select = $('<option>', {
                    value: element.id_actividades,
                    text: element.activity_tittle
                });
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
                list_select.append(item_select);
                lista_actividades.append(item_list);
                actividades_contenido.append(actividad);
            }
        }
    });

    $('ul.menu li a').click(function () {
        const activeTab = $(this).attr('href');

        if (activeTab == '#tab1')
            cargarActividades();
        // if (activeTab == '#tab2')
        //     cargarUsuarios(2);
        if (activeTab == '#tab3')
        cargarEvaluacion();

        if (activeTab == '#tab5')
            actualizarPerfil();
    });

});

function menuActividades(activeTab) {
    $('ul.menu li a').removeClass('active');
    $('.secciones article').hide();
    $(activeTab).show()
}

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
                item_table.append('<td class="center">' + element.id_actividades + '</td>');
                item_table.append('<td class="center">' + element.bloque + '</td>');
                item_table.append('<td>' + element.matirials + '</td>');
                item_table.append('<td>' + element.activity_tittle + '</td>');

                tabla.append(item_table);
            }
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
})

$("#btn-form-duda").click(function (e) {
    e.preventDefault();

    $.ajax({
        type: "POST",
        url: "php/dudas.php",
        data: $('#formulario-duda').serialize(),
        success: (response) => {
            // console.log(response);
            alert(response);
            $('#formulario-duda')[0].reset();
        }
    });
});

$(".btn-form").click(function (e) { 
    e.preventDefault();
    localStorage.removeItem('sesion');
    localStorage.removeItem('dataUser');
    window.location.href = 'index.html';
});