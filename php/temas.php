<?php

header('Content-Type: application/json');

$conexion = new mysqli('localhost', 'root', '', 'escuela');

if ($conexion->connect_errno) {
    die('Error connecting to database');
} else {
    if ($_POST['filter'] == "5")
        $query = "SELECT activities.id_actividades, activities.activity_tittle, activities.task_description, catmatirial.matirials FROM activities INNER JOIN catmatirial ON activities.material_type = catmatirial.id_matirial WHERE catmatirial.id_matirial = " . $_POST['filter'];
    else
        $query = "SELECT * FROM activities WHERE material_type != 5";

    $result = $conexion->query($query);

    $response = [];

    while ($fila = $result->fetch_assoc()) {
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
