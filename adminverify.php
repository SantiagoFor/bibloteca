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
$mail=$_POST['mail'];
$pasw=$_POST['pass'];
$cont=0;
$consulta = "select * from admin where mail='$mail' and password='$pasw'";
$datos = mysqli_query($conexion, $consulta);
while ($row = mysqli_fetch_array($datos)) {
    $cont++;
}
if($cont==0){
    echo '<script> alert("Usuario o contraseña incorrectos.");</script>';
    echo '<script> window.location="adminlog.php"; </script>';
}else{
    $row = mysqli_fetch_array($consulta);
    $_SESSION["mail"] = $mail; 
    echo 'Iniciando sesión para '.$_SESSION['mail'].' <p>';
    echo '<script> window.location="index_admin.html"; </script>';
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