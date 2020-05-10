<?php

$db_host="localhost";
$db_nombre="inmob";
$db_usuario="root";
$db_contra="";

try {
    $conexion=mysqli_connect($db_host, $db_usuario, $db_contra, $db_nombre);
    mysqli_set_charset($conexion, "utf8");
   
  } catch (PDOException $e) {
    echo "No se ha podido establecer conexión con el servidor de bases de datos.<br>";
    die ("Error: " . $e->getMessage());
  }




?>