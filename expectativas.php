<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {

	$op1 = $_REQUEST["op1"];
	$kual = $_REQUEST["kual"];
	$op2 = $_REQUEST["op2"];
	$kual2 = $_REQUEST["kual2"];
	
}


$insertar = "INSERT INTO expectativas( opcion, nom, opcion2, nom2) VALUES ('$op1','$kual','$op2','$kual2')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	
	
	
	echo "Registro Exitoso";


}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>