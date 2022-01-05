<?php

header('Content-Type: application/json');

$conexion = new mysqli('localhost', 'root', '', 'escuela');

if ($conexion->connect_errno) {
    die('Error connecting to database');
} else {
    if ($_POST['action'] == 'get') {
        $query = "SELECT * FROM users WHERE users.id_security = " . $_POST['id'];

        $result = $conexion->query($query);

        echo json_encode($result->fetch_assoc());
    }
    if ($_POST['action'] == 'set') {
        $query = "UPDATE users SET complete_name = '" . $_POST['nombre'] . "', user = '" . $_POST['usuario'] . "', password = '" . $_POST['password'] . "', email = '" . $_POST['correoP'] . "', email_secundary = '" . $_POST['correoA'] . "', telefono = '" . $_POST['telefono'] . "' WHERE id_security = " . $_POST['id'];

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
