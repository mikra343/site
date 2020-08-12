<?php 
	include 'conexion.php';

	$appater = $_POST["appater"];
	$apmater = $_POST["apmater"];
	$nombre = $_POST["nombre"];
	$control= $_POST["control"];
	$fecha = $_POST["fecha"];
	$curp = $_POST["curp"];
	$sex = $_POST["sex"];
	$civil = $_POST["civil"];
	$calle = $_POST["calle"];
	$colonia = $_POST["colonia"];
	$cp = $_POST["cp"];
	$ciudad = $_POST["ciudad"];
	$municipio = $_POST["municipio"];
	$esdo = $_POST["esdo"];
	$tele = $_POST["tele"];
	$tele2 = $_POST["tele2"];
	$mail = $_POST["mail"];
	$carrera=$_POST["carrera"];
	$feingreso = $_POST["feingreso"];
	$titu = $_POST["titu"];
	$xcen = $_POST["xcen"];
	$porcen = $_POST["porcen"];
	$pack = $_POST["pack"];
	$maestria = $_POST["maestria"];
	$feegreso = $_POST["feegreso"];
	$titu2 = $_POST["titu2"];
	/**********************************************************/


	

	

	//font-family: 'robotomedium';

//consulta para insertar (lo que esta en parentecis son los campos de la tabla y los que tienen simbolo de "$" son los nombres de los input )
$insertar = "INSERT INTO egresado(paterno,materno, nombre, ncontrol, fenacim, curp, sexo,civil, calle, colonia, cp, ciudad,municipio, estado, tel1, tel2, mail,carrera, ingreso, titu,ingles, otro, paquetes, maestria, egreso, titu2) VALUES ('$appater','$apmater','$nombre','$control','$fecha','$curp','$sex','$civil','$calle','$colonia','$cp','$ciudad','$municipio','$esdo','$tele','$tele2','$mail','$carrera','$feingreso','$titu','$xcen','$porcen','$pack','$maestria','$feegreso','$titu2')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	$titulo="GRACIAS!!!";
	$error="SU REGISTRO SE REALIZO SATISFACTORIAMENTE GRACIAS POR TOMARSE EL TIEMPO";
	$me_link="INGRESAR AQUI";
	$link="egre.html";
	echo '<script>alert("'.$error.'");</script>';
	header ("Location:egre.html?tit=$titulo&mensaje=$error&sub=$me_link&redi=$link");
	

	

}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);










