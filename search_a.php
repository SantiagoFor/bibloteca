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
 $aut=$_POST['author'];
 echo "<br>";
if ($conexion) {
    echo 'Conexion Exitosa';
} else {
    echo 'Problemas Al Conectar';
}

$consulta = "select * from books where author='$aut'";
$datos = mysqli_query($conexion, $consulta);

echo "<table border='solid'>";
echo "<tr><td>Id Libro</td><td>Nombre</td><td>Autor</td><td>Reseña</td><td>Enlace de Imagen</td><td>Genero</td></tr>";
while ($row = mysqli_fetch_array($datos)) {
	$genero = "select * from gender where id_gender=". $row['id_gender'];
	$id_genero = mysqli_query($conexion, $genero);
    echo '<tr>';
    echo "<td>" . $row['id_book'] . "</td>";
    echo "<td>" . $row['name'] . "</td>";
    echo "<td>" . $row['author'] . "</td>";
    echo "<td><a href=".$row['reviews'].">Reseña</a></td>";
	echo "<td><a href=".$row['read_down'].">Enlace de Imagen</a></td>";
	while($data = mysqli_fetch_array($id_genero)){
										echo "<td>" . $data['gender'] . "</td>";
									}
    
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
										<li>
											<span class="opener">Buscar</span>
											<ul>
												<form  action ="search_a.php" method="post">
												<center><input type="text"  name="author" placeholder="Busqueda por autor"></center><br>
												<center><input type="submit" value="Buscar"></center>
												</form> 
												<form  action ="search_b.php" method="post">
												<center><input type="text"  name="name_book" placeholder="Busqueda por nombre"></center><br>
												<center><input type="submit" value="Buscar"></center>
												</form>
												<form  action ="search_g.php" method="post">
												<center><input type="text"  name="id_gender" placeholder="Busqueda por Genero"></center><br>
												<center><input type="submit" value="Buscar"></center>
												</form>
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