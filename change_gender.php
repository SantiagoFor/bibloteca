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
$consulta = "select * from gender";
$datos = mysqli_query($conexion, $consulta);


echo "<table border='solid'>";
echo "<tr><td>Id Genero</td><td>Genero</td></tr>";
while ($row = mysqli_fetch_array($datos)) {
    echo '<tr>';
    echo "<td>" . $row['id_gender'] . "</td>";
    echo "<td>" . $row['gender'] . "</td>";
    echo "<td><a href='changes_g.php?codgender=".$row['id_gender']."'>Cambiar</a></td>";
	echo "<td><a href='drop_gender.php?codgender=".$row['id_gender']."'>Eliminar</a></td>";
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
										<li><a href="index_admin.html">Inicio</a></li>
										
										<li>
											<span class="opener">Libros</span>
											<ul>
												<li><a href="conn_booka.php">Libros</a></li>
												<li><a href="add_booka.html">Añadir Libros</a></li>
												<li><a href="change_book.php">Cambiar Libros</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Editoriales</span>
											<ul>
												<li><a href="conn_editoriala.php">Editoriales</a></li>
												<li><a href="add_editoriala.html">Añadir Editoriales</a></li>
												<li><a href="change_editorial.php">Cambiar Editoriales</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Generos</span>
											<ul>
												<li><a href="conn_gendera.php">Generos</a></li>
												<li><a href="add_gendera.html">Añadir Generos</a></li>
												<li><a href="change_gender.php">Cambiar Generos</a></li>
											</ul>
										</li>
										<li>
											<span class="opener">Usuarios</span>
											<ul>
												<li><a href="conn.php">Usuarios</a></li>
												<li><a href="add.html">Añadir Usuario</a></li>												
												<li><a href="change.php">Cambiar Usuario</a></li>
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