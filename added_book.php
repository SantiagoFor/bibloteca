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

$id_book=$_POST['id_book'];
$name_book=$_POST['name'];
$author=$_POST['author'];
$idg=$_POST['id_gender'];
$rev=$_POST['reviews'];
$red=$_POST['read_down'];
$verify = "select * from books where name='$name_book'";
$veri= mysqli_query($conexion, $verify);
if($veri){echo '<script> alert("El libro ya esta registrado");</script>';
    echo '<script> window.location="add_book.html"; </script>';}else{
    $consulta = "insert into books(id_book,name,author,id_gender,reviews,read_down) values ('$id_book','$name_book','$author','$idg','$rev','$red')" ;
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
										<li><a href="index_loger.html">Inicio</a></li>
										
										<li>
											<span class="opener">Libros</span>
											<ul>
												<li><a href="conn_book.php">Libros</a></li>
												<li><a href="add_book.html">Añadir Libros</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Editoriales</span>
											<ul>
												<li><a href="conn_editorial.php">Editoriales</a></li>
												<li><a href="add_editorial.html">Añadir Editoriales</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Generos</span>
											<ul>
												<li><a href="conn_gender.php">Generos</a></li>
												<li><a href="add_gender.html">Añadir Generos</a></li>
											</ul>
										</li>
										
										<li><a href="gameover.php">Salir</a></li>
										
										
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