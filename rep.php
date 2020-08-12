

<!DOCTYPE html>

<html lang="es">

	<head>
		<title>Sistema Integral de Titulación y Egresados</title>
		<meta charset="UTF-8"/>
		<!--Responsive-->
		<meta name="viewport" content="width-device-width, user-scalable=no, inicial-scale=1, maximum-scale=1, minimum scale=1"/>
		<!--Iconos-->
		<link rel="stylesheet" type="text/css" href="css/fontello.css">
		<link rel="stylesheet" href="https://necolas.github.io/normalize.css/7.0.0/normalize.css"/>
    <link rel="stylesheet" href="https://i.icomoon.io/public/temp/8a8afbdc87/UntitledProject/style.css">
		<!--Estilo-->
		<link rel="stylesheet" type="text/css" href="css/estilos.css">
		<link rel="stylesheet" type="text/css" href="css/rep.css">
		<link rel="stylesheet" type="text/css" href="css/fomr.css">
		

		<!--Dinamismo-->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript" src="js/egem.js" defer></script>
		<script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
		
		
		

	</head>

<!--Pagina contenedora-->
	<body>
		<header>
			<!--Contenedor de menu-->
			<div class="contenedor">
				
				<input type="checkbox" id="menu-bar">
				<label class="icon-menu" for="menu-bar"></label>
				<nav class="menu">
					<a href="index.html">Incio</a>
					<a href="infr.html">Titulación</a>
					<a href="rep.html">Repositorio</a>
					<a href="tram.html">Trámites</a>
					<a href="egre.html">Seguimiento de Egresados</a>
					<a href="emp.html">Cuestionario para Empleadores</a>
					
				</nav>
			</div>
		</header>

		<!--Modal Mensaje Emergente-->
		<!--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
		<script src="js/modal.js"></script>-->
		

		<main>
			
			<!--Imagen de Cabecera-->
			<section id="bnnr1">
				<img src="img/bnrc.png">
					<div class="contenedor">
						<h2 >REPOSITORIO</h2><hr>
					</div>
			</section>
		</main>

		<button class="tablink" onclick="openPage('uno',this,'#019733')"id="defaultOpen">Registro de Proyecto</button>
		<button class="tablink" onclick="openPage('dos',this,'#019733')">REPOSITORIO</button>
		

		<div id="uno" class="tabcontent">
			
			<form action="registro.php" method="POST">
				<label>DATOS GENERALES</label><br><br>
				<label>No.Control:</label>
				<input type="text" name="control" size="10" placeholder="2012123003">
				<label>Nombre:</label>
				<input type="text" name="appater" size="20" placeholder="Apellido Paterno">
				<input type="text" name="apmater" size="20" placeholder="Apellido Materno">
				<input type="text" name="nombre" size="25" placeholder="Nombre(s)"><br>
				<label>CURP:</label><input type="text" name="curp" id="" placeholder="FEPM890204HASRRN08">
				<label>Generación:</label><input type="text" name="gene" size="10" placeholder="2016-2020">
				<label>Carrera:</label>
				<input type="text" size="35" name="carrera" id="" placeholder="Nombre de la Carrera sin Abreviaturas"><br>
				<label>Opción:</label>
				<input type="text" size="35" name="opc" id="" placeholder="Escriba aqui">
				<label>Nombre del Proyecto:</label>
				<input type="text" size="35" name="proye" id="" placeholder="Escriba aqui"><br>


				<label>DOMICILIO:</label>
				<input type="text" name="calle" placeholder="Calle">
				<input type="text" name="ext" size="4" placeholder="N.Ext">
				<input type="text" name="int" size="4" placeholder="N.Int">
				<input type="text" name="colonia" placeholder="Colonia"><br>
				
				<input type="text" name="ciudad" placeholder="Ciudad">
				<input type="text" name="municipio" placeholder="Municipio">
				<input type="text" name="esdo" placeholder="Estado"><br>

				<label>Teléfono de casa:</label>
				<input type="text" name="tele" placeholder="(000) 000 000 00 00">
				<label>Celular:</label>
				<input type="text" name="tele2" placeholder="(000) 000 00 0 00 00">
				<label>E-mail:</label>
				<input type="text" name="mail" placeholder="username@dominio.com">
				<label>Facebook:</label>
				<input type="text" name="face"><br>











				<input type="submit" value="Enviar" name="subir" id="boton">

			</form>






		<hr>

			<form action="repositorio.php" method="POST" enctype="multipart/form-data">
				<label>DOCUMENTO DEL PROYECTO:</label><br>
				<input type="file" name="archivo" accept="application/pdf">
				<input type="submit" value="subir" name="subir" id="boton">
			</form>


					
		</div>


		<div id="dos" class="tabcontent">
			
				<h2>PROYECTOS</h2><br><hr>
			<table>
		       <?php
		        include 'config.inc.php';
		        $db=new Conect_MySql();
		            $sql = "select*from repositorio";
		            $query = $db->execute($sql);
		            while($datos=$db->fetch_row($query)){?>
		            <tr>	                
		                <td><a href="archivo.php?id=<?php echo $datos['id_documento']?>"><?php echo $datos['nombre']; ?></a></td>
		            </tr>
		                
		          <?php  } ?>
	        </table>
					
		</div>

		


		<!--Pie de la pagina derechos de autor-->
		<footer>
			<div class="contenedor">
				<p class="copy"><br>Tecnologico de Estudios Superiores de Villa Guerrero &copy; 2020</p>
				<div class="sociales">
					<a class="icon-fac" href="https://www.facebook.com/TECVILLAGUERRERO/"></a>
					<a class="icon-ins" href=""></a>
					<a class="icon-twi" href="https://twitter.com/TESVGMex"></a>
					<a class="icon-you" href=""></a>
				</div>
			</div>
				
		</footer>

	</body>

</html>