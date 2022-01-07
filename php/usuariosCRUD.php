<?php

header('Content-Type: application/json');

$conexion = new mysqli('localhost', 'root', '', 'escuela');

if ($conexion->connect_errno) {
    die('Error connecting to database');
} else {
    if ($_POST['action'] == 'delete')
        $query = "DELETE FROM users WHERE id_security = " . $_POST['id'];
    
    if ($_POST['action'] == 'create') {
        $user_level = $_POST['role'];
        $complete_name = $_POST['nombre'];
        $user = $_POST['usuario'];
        $password = '1234';
        $email = $_POST['correoP'];
        $email_secundary = $_POST['correoA'];
        $telefono = $_POST['telefono'];

        $query = "INSERT INTO users (user_level, complete_name, user, password, email, email_secundary, telefono) VALUES ($user_level, '$complete_name', '$user', '$password', '$email', '$email_secundary', '$telefono')";
    }

    $conexion->query($query);

    if ($conexion->affected_rows >= 1)
        $mensaje = 'Filas Modificadas: ' . $conexion->affected_rows;
    else
        $mensaje = 'Error: Hubo un error';
    
    echo json_encode($mensaje);
}

function limpiarDatos($cadena) {
    $cadena = trim($cadena);
    $cadena = stripslashes($cadena);
    $cadena = htmlspecialchars($cadena);
    return $cadena;
}