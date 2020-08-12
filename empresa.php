<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {

	$op1 = $_REQUEST["op1"];
	$op2 = $_REQUEST["op2"];
	$op3 = $_REQUEST["op3"];
	$otra = $_REQUEST["otra"];
	$nom = $_REQUEST["nom"];
	$calle = $_REQUEST["calle"];
	$colonia = $_REQUEST["colonia"];
	$cp = $_REQUEST["cp"];
	$ciudad = $_REQUEST["ciudad"];
	$municipio = $_REQUEST["municipio"];
	$esdo = $_REQUEST["esdo"];
	$tele = $_REQUEST["tele"];
	$mail = $_REQUEST["mail"];
}





$insertar = "INSERT INTO datoempresa(tipo, tamaño, actividad, otra, nombre, calle, colonia, cp, ciudad, municipio, estado, telefono, mail) VALUES ('$op1','$op2','$op3', '$otra','$nom','$calle','$colonia','$cp','$ciudad','$municipio','$esdo','$tele','$mail')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	
	
	
	echo "Registro Exitoso";


}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>