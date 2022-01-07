<?php

header('Content-Type: application/json');

$conexion = new mysqli('localhost', 'root', '', 'escuela');

if ($conexion->connect_errno) {
    die('Error connecting to database');
} else {
    if ($_POST['action'] == 'read') {
        $query = "SELECT support.id_support, support.email, support.detail_query, support.attended, activities.activity_tittle FROM support INNER JOIN activities ON support.id_actividad = activities.id_actividades";
        $result = $conexion->query($query);

        $response = [];

        while ($fila = $result->fetch_assoc()) {
            if ($fila['attended'] == "0")
                $fila['attended'] = 'No';
            else
                $fila['attended'] = 'Si';

            array_push($response, $fila);
        }

        echo json_encode($response);
    }

    if ($_POST['action'] == 'create') {
        $id = $_POST['titulo'];
        $correo = $_POST['correo'];
        $descripcion = $_POST['descripcion'];

        $query = "INSERT INTO support (id_actividad, email, detail_query) VALUES($id, '$correo', '$descripcion')";
        $conexion->query($query);

        if ($conexion->affected_rows >= 1)
            $mensaje = 'Filas Modificadas: ' . $conexion->affected_rows;
        else
            $mensaje = 'Error: Hubo un error';

        echo json_encode($mensaje);
    }
}

function limpiarDatos($cadena)
{
    $cadena = trim($cadena);
    $cadena = stripslashes($cadena);
    $cadena = htmlspecialchars($cadena);
    return $cadena;
}
