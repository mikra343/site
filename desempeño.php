<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {

	$op1 = $_REQUEST["op1"];
	$op2 = $_REQUEST["op2"];
	$op3 = $_REQUEST["op3"];
	$op4 = $_REQUEST["op4"];
	$op5 = $_REQUEST["op5"];
	$op6 = $_REQUEST["op6"];
	$op7 = $_REQUEST["op7"];
	$op8 = $_REQUEST["op8"];
	$op9 = $_REQUEST["op9"];
	$op10 = $_REQUEST["op10"];
	$op11 = $_REQUEST["op11"];
	$op12 = $_REQUEST["op12"];
	$op13 = $_REQUEST["op13"];
}


$insertar = "INSERT INTO desempeño(eficiencia, formacion, utilresi, asparea, asptitu, asplabo, resolver, posicion, conoidiomas, referencias,personalidad, liderazgo, otro) VALUES ('$op1','$op2','$op3','$op4','$op5','$op6','$op7','$op8','$op9','$op10','$op11','$op12','$op13')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	
	
	
	echo "Registro Exitoso";


}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>