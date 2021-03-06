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

$consulta = "select * from books";
$datos = mysqli_query($conexion, $consulta);

echo "<table border='solid'>";
echo "<tr><td>Id Libro</td><td>Nombre</td><td>Autor</td><td>Reseña</td><td>Enlace de Imagen</td><td>Id Genero</td></tr>";
while ($row = mysqli_fetch_array($datos)) {
    echo '<tr>';
    echo "<td>" . $row['id_book'] . "</td>";
    echo "<td>" . $row['name'] . "</td>";
    echo "<td>" . $row['author'] . "</td>";
    echo "<td><a href=".$row['reviews'].">Reseña</a></td>";
    echo "<td><a href=".$row['read_down'].">Enlace de Imagen</a></td>";
    echo "<td>" . $row['id_gender'] . "</td>";
}

echo '</table>';
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
									<li><a href="conn_bookp.php">Libros</a></li>
									<li><a href="conn_editorialp.php">Editoriales</a></li>
									<li><a href="conn_genderp.php">Generos</a></li>
									
                                                                                
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