<?php 
	include 'cone.php';



	if (isset($_REQUEST['proye'])) {
		$proye = $_REQUEST['proye'];
		} else {
		$proye = "";
	}

	if (isset($_REQUEST['control'])) {
		$control = $_REQUEST['control'];
		} else {
		$control = "";
	}

	if (isset($_REQUEST['appater'])) {
		$appater = $_REQUEST['appater'];
		} else {
		$appater = "";
	}

	if (isset($_REQUEST['apmater'])) {
		$apmater = $_REQUEST['apmater'];
		} else {
		$apmater = "";
	}

	if (isset($_REQUEST['nombre'])) {
		$nombre = $_REQUEST['nombre'];
		} else {
		$nombre = "";
	}

	if (isset($_REQUEST['curp'])) {
		$curp = $_REQUEST['curp'];
		} else {
		$curp = "";
	}

	if (isset($_REQUEST['gene'])) {
		$gene = $_REQUEST['gene'];
		} else {
		$gene = "";
	}

	if (isset($_REQUEST['carrera'])) {
		$carrera = $_REQUEST['carrera'];
		} else {
		$carrera = "";
	}

	if (isset($_REQUEST['opc'])) {
		$opc = $_REQUEST['opc'];
		} else {
		$opc = "";
	}


	if (isset($_REQUEST['calle'])) {
		$calle = $_REQUEST['calle'];
		} else {
		$calle = "";
	}

		if (isset($_REQUEST['ext'])) {
		$ext = $_REQUEST['ext'];
		} else {
		$ext = "";
	}

	if (isset($_REQUEST['int'])) {
		$int = $_REQUEST['int'];
		} else {
		$int = "";
	}

		if (isset($_REQUEST['colonia'])) {
		$colonia = $_REQUEST['colonia'];
		} else {
		$colonia = "";
	}

	if (isset($_REQUEST['ciudad'])) {
		$ciudad = $_REQUEST['ciudad'];
		} else {
		$ciudad = "";
	}

		if (isset($_REQUEST['municipio'])) {
		$municipio = $_REQUEST['municipio'];
		} else {
		$municipio = "";
	}

	if (isset($_REQUEST['esdo'])) {
		$esdo = $_REQUEST['esdo'];
		} else {
		$esdo = "";
	}

		if (isset($_REQUEST['tele'])) {
		$tele = $_REQUEST['tele'];
		} else {
		$tele = "";
	}

	if (isset($_REQUEST['tele2'])) {
		$tele2 = $_REQUEST['tele2'];
		} else {
		$tele2 = "";
	}

		if (isset($_REQUEST['mail'])) {
		$mail = $_REQUEST['mail'];
		} else {
		$mail = "";
	}

			if (isset($_REQUEST['face'])) {
		$face = $_REQUEST['face'];
		} else {
		$face = "";
	}



//INSERT INTO domicilio (calle, ne, ni, colonia, poblacion, municipio, entidad, telefono, celular, correo, facebook)

$insertar0 = "INSERT INTO domicilio (calle, ne, ni, colonia, poblacion, municipio, entidad, telefono, celular, correo, facebook) VALUES ('$calle', '$ext', '$int', '$colonia', '$ciudad', '$municipio', '$esdo', '$tele', '$tele2', '$mail','$face')";
	$resultado0 = mysqli_query($conexion,$insertar0);

	if ($resultado0==1) {
			echo "string ".$_POST['calle'];
			echo "Registro Exitoso";
	}




//INSERT INTO `proyecto`(`id_proyecto`, `nombrep`) VALUES ([value-1],[value-2])

$insertar1 = "INSERT INTO proyecto (nombrep) VALUES ('$proye')";
		//ejecutar consulta
		$resultad1 = mysqli_query($conexion,$insertar1);

		/*$last_id = $resultado->insert_id;
		$last_id = mysqli_insert_id($conexion);

		echo " ", $last_id;*/
		
		if ($resultad1==1) { 

				$last_id = mysqli_insert_id($conexion);	

			$insertar2 = "INSERT INTO datospersonales (nc,ap,am,nombre,curp,generacion,carrera,opcion,id_proyecto) VALUES ('$control', '$appater', '$apmater', '$nombre', '$curp', '$gene', '$carrera', '$opc',".$last_id.")";
			$resultado2 = mysqli_query($conexion,$insertar2);
			
			
			echo $last_id;
			echo "<br>";
			echo "Registro Exitoso";
		}else{
			echo "Error al registrar proyecto";

		}
		mysqli_close($conexion);

	

?>