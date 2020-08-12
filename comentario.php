<?php 
	include 'conexion.php';
	
	if (isset($_REQUEST['submit'])) {
		$mensaje = $_REQUEST["mensaje"];
	}


$insertar = "INSERT INTO comentario(comen) VALUES ('$mensaje')";

//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	echo "string ".$_REQUEST['mensaje'];
	echo "<br>";
	echo "Registro Exitoso";


}else {
	echo "string ".$_REQUEST['mensaje'];
	echo "<br>";
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>