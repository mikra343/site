<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {

	//Datos de la ubicacion laboral JPvTcy72tb7DnW4
	//viyu(b^xInQaqET5e3QC 
	$op1 = $_REQUEST["op1"];
	$op2 = $_REQUEST["op2"];
	$op3 = $_REQUEST["op3"];
	$otros = $_REQUEST["otros"];
	$mensaje = $_REQUEST["mensaje"];
	//Datos Egresado por la empresa
	$carrera = $_REQUEST["carrera"];
	$mando1 = $_REQUEST["mando1"];
	$mando2 = $_REQUEST["mando2"];
	$supervisor = $_REQUEST["supervisor"];
	$tecnico = $_REQUEST["tecnico"];
	$otro = $_REQUEST["otro"];
}




		$insertar = "INSERT INTO ubilaboral(numero, congruen, requisi, otro, demanda) VALUES ('$op1','$op2','$op3','$otros','$mensaje')";
		$resultado = mysqli_query($conexion,$insertar);

		if ($resultado == 1) {

		$insertar2 = "INSERT INTO datoegresado(carrera, mando1, mando2, supervisor, tecnico, otro) VALUES ('$carrera','$mando1','$mando2','$supervisor','$tecnico','$otro')";

			$resultado = mysqli_query($conexion,$insertar2);
		echo "Registro Exitoso";
			
			
		}else {
			echo "Error al registrar proyecto";
		}

		mysqli_close($conexion);
 ?>