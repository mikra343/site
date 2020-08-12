<?php 
	include 'conexion.php';

	

if (isset($_REQUEST['submit'])) {
	$op = $_REQUEST["op"];
	$opc = $_REQUEST["opc"];
	$opci = $_REQUEST["opci"];
	$opcio = $_REQUEST["opcio"];
	$opcion = $_REQUEST["opcion"];
	$opcion2 = $_REQUEST["opcion2"];

}

	//consulta para insertar (lo que esta en parentecis son los campos de la tabla y los que tienen simbolo de "$" son los nombres de los input )


$insertar = "INSERT INTO pertenencia(calidad, plan, oportunidad, enfasisi, satisfac, experiencia) VALUES ('$op','$opc','$opci','$opcio','$opcion','$opcion2')";


//ejecutar consulta
$resultado = mysqli_query($conexion,$insertar);
if ($resultado) {
	
	
	
	echo "Registro Exitoso";


}else {
	echo "Error al registrar proyecto";
}

mysqli_close($conexion);

 ?>