<?php

header('Content-Type: application/json');

$conexion = new mysqli('localhost', 'root', '', 'escuela');

if ($conexion->connect_errno) {
    die('Error connecting to database');
} else {
    $query = "SELECT users.id_security, users.complete_name, users.user, users.password, users.email, users.email_secundary, users.telefono, user_levels.user_level FROM users INNER JOIN user_levels ON users.user_level = user_levels.id_level";
    if ($_POST['filter'] != "0")
        $query .= " WHERE users.user_level = " . $_POST['filter'];

    $result = $conexion->query($query);

    $response = [];

    while ($fila = $result->fetch_assoc()) {
        $password = '';
        for ($i=0; $i < strlen($fila['password']); $i++) {
            $password .= '*';
        }
        $fila['password'] = $password;
        array_push($response, $fila);
    }
    
    echo json_encode($response);
}

function limpiarDatos($cadena) {
    $cadena = trim($cadena);
    $cadena = stripslashes($cadena);
    $cadena = htmlspecialchars($cadena);
    return $cadena;
}
