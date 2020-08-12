<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {

	$op1 = $_REQUEST["op1"];
	$k1 = $_REQUEST["k1"];
	$op2 = $_REQUEST["op2"];
	$k2 = $_REQUEST["k2"];
	$op3 = $_REQUEST["op3"];
	$k3 = $_REQUEST["k3"];
	
}


$insertar = "INSERT INTO participacion( opcion, dato, opcion2, dato2, opcion3, dato3) VALUES ('$op1','$k1','$op2','$k2','$op3','$k3')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	
	
	
	echo "Registro Exitoso";


}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>