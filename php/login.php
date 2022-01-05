<?php

header('Content-Type: application/json');

$conexion = new mysqli('localhost', 'root', '', 'escuela');

if ($conexion->connect_errno) {
    die('Error connecting to database');
} else {
    $user = limpiarDatos($_POST['usuario']);
    $password = limpiarDatos($_POST['password']);
    $role = limpiarDatos($_POST['role']);

    $result = $conexion->query("SELECT * FROM users WHERE user = '$user' AND password = '$password' AND user_level = '$role'");

    echo json_encode($result->fetch_assoc());
}

function limpiarDatos($cadena) {
    $cadena = trim($cadena);
    $cadena = stripslashes($cadena);
    $cadena = htmlspecialchars($cadena);
    return $cadena;
}
