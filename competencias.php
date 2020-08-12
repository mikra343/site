<?php 
	include 'conexion.php';
	
if (isset($_REQUEST['submit'])) {

	$a = $_REQUEST["a"];
	$b = $_REQUEST["b"];
	$c = $_REQUEST["c"];
	$d = $_REQUEST["d"];
	$e = $_REQUEST["e"];
	$f = $_REQUEST["f"];
	$g = $_REQUEST["g"];
	$h = $_REQUEST["h"];
	$i = $_REQUEST["i"];
	$j = $_REQUEST["j"];
	$k = $_REQUEST["k"];
	$l = $_REQUEST["l"];
	$m = $_REQUEST["m"];
	$n = $_REQUEST["n"];
	$o = $_REQUEST["o"];
	$p = $_REQUEST["p"];
	$q = $_REQUEST["q"];
	
	$exc = $_REQUEST["exc"];
	$mb = $_REQUEST["mb"];
	$bue = $_REQUEST["bue"];
	$reg = $_REQUEST["reg"];
	$mal = $_REQUEST["mal"];
	$mensaje = $_REQUEST["mensaje"];
	$mensaje2 = $_REQUEST["mensaje2"];



}


$insertar = "INSERT INTO competencias(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, exce, mubu, buen, reg, mal, mejoras, comen) VALUES ('$a','$b','$c','$d','$e','$f','$g','$h','$i','$j','$k','$l','$m','$n','$o','$p', '$q','$exc','$mb','$bue','$reg','$mal','$mensaje','$mensaje2')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	
	echo "Registro Exitoso";


}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>