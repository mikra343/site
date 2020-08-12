<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {
	//HABILIDADES
	$ha = $_REQUEST["ha"];
	$es = $_REQUEST["es"];
	$le = $_REQUEST["le"];
	$esc = $_REQUEST["esc"];
	//EMPRESA
	$opc = $_REQUEST["opc"];
	$empre = $_REQUEST["empre"];
	$calle = $_REQUEST["calle"];
	$colonia = $_REQUEST["colonia"];
	$cp = $_REQUEST["cp"];
	$ciudad = $_REQUEST["ciudad"];
	$municipio = $_REQUEST["municipio"];
	$esdo = $_REQUEST["esdo"];
	$tele = $_REQUEST["tele"];
	$tele2 = $_REQUEST["tele2"];
	$mail = $_REQUEST["mail"];
	$web = $_REQUEST["web"];
	$jef = $_REQUEST["jef"];
	//DATOS
	$espe=$_REQUEST["espe"];
	$insti=$_REQUEST["insti"];
	
	
	$op = $_REQUEST["op"];
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
}
	//Linea de codigo de la tabla de HABILIDADES que aun no carga simultaneamente
	//$insertar = "INSERT INTO habilidades(habla,escri,lee,escuch) VALUES ('$ha','$es','$le','$esc')";



$insertar = "INSERT INTO ubicacion(activi, indicar, trabajar, emple, requisitos, idioma, antig, ingres, nivel, condicion, rela, sector, tam) VALUES ('$op','$op1','$op2','$op3','$op4','$op5','$op6','$op7','$op8','$op9','$op10','$op11','$op12')";

	$resultado = mysqli_query($conexion,$insertar);

if ($resultado == 1) {

	$insertar2 = "INSERT INTO empresa(organismo, empresa, calle, colonia, cp, ciudad, municipio, estado, tel1, tel2, mail, web, jefe) VALUES ('$opc', '$empre', '$calle','$colonia','$cp','$ciudad','$municipio','$esdo','$tele','$tele2','$mail','$web','$jef')";
		$resultado2 = mysqli_query($conexion,$insertar2);
	
}

if ($resultado2 == true) {


	$insertar3 = "INSERT INTO habilidades(habla, escri, lee, escuch, nombre, institu) VALUES ('$ha','$es','$le','$esc','$espe','$insti')";
	$resultado3 = mysqli_query($conexion,$insertar3);
	echo "Registro Exitoso";
}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

	
 ?>