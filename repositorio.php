<?php
include_once 'config.inc.php';
if (isset($_POST['subir'])) {
    $nombre = $_FILES['archivo']['name'];
    $tipo = $_FILES['archivo']['type'];
    $tamanio = $_FILES['archivo']['size'];
    $ruta = $_FILES['archivo']['tmp_name'];
    $destino = "documentos/" . $nombre;
    if ($nombre != "") {
        if (copy($ruta, $destino)) {
           
            $db=new Conect_MySql();
            $sql = "INSERT INTO repositorio(tamanio,tipo,nombre) VALUES('$tamanio','$tipo','$nombre')";
            $query = $db->execute($sql);
            if($query){
                echo "Se guardo correctamente";
            }
        } else {
            echo "Error";
        }
    }
}
?>