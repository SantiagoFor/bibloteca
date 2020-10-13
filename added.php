<!DOCTYPE HTML>
<html>
	<head>
		<title>Biblioteca </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />

	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1>Biblioteca</h1>
											
										</header>
									</div>
									
								</section>

							

							<!-- Section -->
								<section>
									<?php

$conexion = mysqli_connect("localhost", "root", "", "library");
if ($conexion) {
    echo 'Conexion Exitosa';
} else {
    echo 'Problemas Al Conectar';
}

$id=$_POST['id_user'];
$name=$_POST['name'];
$last=$_POST['last_name'];
$mail=$_POST['mail'];
$pass=$_POST['password'];
$idb=27;
$verify = "select * from users where mail='$mail'";
$veri= mysqli_query($conexion, $verify);
if($veri){echo '<script> alert("El correo ya esta registrado");</script>';
    echo '<script> window.location="add.html"; </script>';}else{
    $consulta = "insert into users(id_user,name,last_name,mail,password,id_book) values ('$id','$name','$last','$mail','$pass','$idb')" ;
}
echo "<br>";
$datos = mysqli_query($conexion, $consulta);
if ($consulta) {
    echo 'Registro Exitoso';
} else {
    echo 'Problemas Al Registro';
}
?>
								</section>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
									<li><a href="login.php">Iniciar Sesion</a></li>
									<li><a href="adminlog.php">Administrador</a></li>
                                    <li><a href="add.html">Registrate</a></li>
									<li><a href="index.html">Inicio</a></li>
									<li><a href="conn_book.php">Libros</a></li>
									<li><a href="conn_editorial.php">Editoriales</a></li>
									<li><a href="conn_gender.php">Generos</a></li>
									
									
                                                                                
								</nav>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Contacto</h2>
									</header>
									
									<ul class="contact">
										<li class="fa-envelope-o"><a href="">correo@correo.com</a></li>
										<li class="fa-phone">313.333-33-33</li>
										<li class="fa-home">Google</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright"><br><center>All rights reserved®.</center ></p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>