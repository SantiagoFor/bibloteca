-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2020 a las 20:56:30
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `library`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_book` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `mail`, `password`, `id_book`) VALUES
(1, 'correo@hotmail.com', 'maximocontrol', 11),
(2, 'correo@gmail.com', 'thecontroler', 11);
-- --------------------------------------------------------

--
-- Estr

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(25) DEFAULT NULL,
  `reviews` varchar(100) DEFAULT NULL,
  `read_down` varchar(100) DEFAULT NULL,
  `id_gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id_book`, `name`, `author`, `reviews`, `read_down`, `id_gender`) VALUES
(1, 'los juegos del hambre', 'Suzanne Collins', 'http://www.eltemplodelasmilpuertas.com/critica/juegos-hambre-juegos-hambre/245/', 'https://marcardiferencias.files.wordpress.com/2013/04/1-los-juegos-del-hambre.pdf', 1),
(2, 'en llamas', 'Suzanne Collins', '', 'https://marcardiferencias.files.wordpress.com/2013/04/2-los-juegos-del-hambre-en-llamas.pdf', 1),
(3, 'sinsajo', 'Suzanne collins', '', 'https://marcardiferencias.files.wordpress.com/2013/04/3-los-juegos-del-hambre-sinsajo.pdf', 1),
(4, 'soy el numero cuatro', 'James Frey', 'https://www.entrelectores.com/libros/pittacus-lore/soy-el-numero-cuatro-pittacus-lore', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZNlNJeG5tQW51clk/view', 1),
(5, 'el poder de seis', 'James Frey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZVEtkMXQtRWlkc28/view', 1),
(6, 'el ascenso de nueve', 'James Frey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZTm53cUFkRUNCZ2c/view', 1),
(7, 'la caida de cinco', 'James Frey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZamFYZjFjWVk3c2s/view', 1),
(8, 'la venganza de siete', 'James Frey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZRnRsWjdXT1NubW8/view', 1),
(9, 'el destino de diez', 'James Frey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZVnFOYi0wc1lrUWc/view', 1),
(10, 'unidos como uno', 'James Frey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZdTlkdUxWMVJZLTg/view', 1),
(11, 'la quinta ola', 'rick jancey', 'https://solodejatellevar-juvenil.blogspot.com.co/2015/08/resena-la-quinta-ola-de-rick-yancey-la.html', 'https://drive.google.com/file/d/0BzfhH6zGgc55a2JjT3RKdk9vbms/view', 6),
(12, 'el mar infinito', 'rick jancey', '', 'http://llevatetodo.com/libros/0729.pdf', 6),
(13, 'la ultima estrella', 'rick jancey', '', 'https://drive.google.com/file/d/0Bx_ZZWguVPJZS2VQQkVXX1FxbEE/view', 6),
(14, 'divergente', 'veronica roth', 'https://www.entrelectores.com/libros/veronica-roth/divergente', 'https://drive.google.com/file/d/0B8AmVPn-GUMkOXFnY2x5MjEyQms/view', 1),
(15, 'insurgente', 'veronica roth', 'http://elfinal-delahistoria.blogspot.com.co/2014/06/resena-insurgente-divergente-2-de.html', 'http://data.over-blog-kiwi.com/0/71/45/45/201308/ob_76f96a901e1b5b81b6a1f44bc0dd635d_insurgent-2.pdf', 1),
(16, 'leal', 'veronica roth', 'http://www.sdelibros.com/2014/08/resena-leal-veronica-roth.html', 'https://drive.google.com/file/d/0B8AmVPn-GUMkdjA5QmZFdGROMkE/view', 1),
(17, 'los olvidados', 'michael grant', 'http://www.sagaolvidados.com/sinopsis-olvidados/', 'https://drive.google.com/file/d/0ByQcT6nxzWdNdXVPNy1ZQzZhMzQ/view', 5),
(18, 'hambre', 'michael grant', 'http://tormentadelibro.blogspot.com.co/2014/09/resena-127-hambre-olvidados-2-michael.html', 'https://drive.google.com/open?id=0ByQcT6nxzWdNaEpySXI4UnpQS28', 5),
(19, 'mentiras', 'michael grant', 'http://tormentadelibro.blogspot.com.co/2014/09/resena-131-mentiras-michael-grant.html', 'https://drive.google.com/open?id=0ByQcT6nxzWdNcF9UZWkwS1JxYkU', 5),
(20, 'plaga', 'michael grant', 'http://tormentadelibro.blogspot.com.co/2014/09/resena-132-plaga-michael-grant.html', 'https://drive.google.com/open?id=0ByQcT6nxzWdNQnZveVZMLUl6UTg', 5),
(21, 'miedo', 'michael grant', 'http://tormentadelibro.blogspot.com.co/2014/10/resena-miedo-michael-grant.html', 'https://drive.google.com/open?id=0ByQcT6nxzWdNdXlyY0JyUktFbkU', 5),
(22, 'luz', 'michael grant', 'http://tormentadelibro.blogspot.com.co/2014/11/resena-luz-olvidados-6-michael-grant.html', 'https://drive.google.com/open?id=0ByQcT6nxzWdNRTR0akswaHRISUE', 5),
(23, 'el general en su laberinto', 'gabriel garcia marquez', 'http://resenyasliterarias.blogspot.com.co/2011/06/el-general-en-su-laberinto-gabriel.html', 'http://www.lectulandia.com/book/el-general-en-su-laberinto/', 8),
(24, 'las mil y una noches', 'anonimo', 'http://literatura.itematika.com/libro/9/las-mil-y-una-noches.html', 'http://www.alejandriadigital.com/wp-content/uploads/2015/12/Las-Mil-y-Una-Noches-en-un-solo-volumen-', 8),
(25, 'el codigo da vinci', 'dan brown', 'http://opusdei.es/es-es/article/resena-sobre-el-codigo-da-vinci/', 'https://onedrive.live.com/?authkey=%21ACQBneOFFNaATlY&cid=DB5C32E81FB56E87&id=DB5C32E81FB56E87%21120', 9),
(26, 'la cabaña', 'William P. Young', 'http://serchotm.blogspot.com.co/2015/05/resena-la-cabana-de-w-paul-young.html', 'http://elfantasticomundo-deloslibros.blogspot.com.co/2014/08/la-cabana-de-w-paul-young-pdf.html', 1),
(27, 'Sin libros', '', '', '', 11),
(28, 'la odisea', 'homero', 'http://www.bibliotecaviva.cl/recomendados/recomendado/resena-la-odisea-2/', 'http://bibliotecadigital.ilce.edu.mx/Colecciones/ObrasClasicas/_docs/Odisea.pdf', 12),
(29, 'relatos de un naufrago', 'gabriel garcia marquez', 'http://disfrutando-the-vita.blogspot.com.co/2013/10/resena-relato-de-un-naufrago-gabriel.html', 'http://www.instituto127.com.ar/Bibliodigital/GarciaMarquez-Relatodeunnaufrago.pdf', 13),
(30, 'correr o morir', 'James Dashner', 'https://hipertextual.com/analisis/the-maze-runner-resena', 'https://docs.google.com/file/d/0B0GJJrGR5h4sUE5WQWtyQ1g1anc/view', 1),
(31, 'mi lucha', 'adolfo hitler', 'http://pijamasurf.com/2014/08/la-resena-de-george-orwell-a-mi-lucha-de-adolf-hitler-y-su-vertiginosa', 'https://drive.google.com/open?id=0ByQcT6nxzWdNV3BtWGxDQjNuMEk', 14),
(32, 'asesinato en bardsley mews', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNNG1ER3Q5OGJnYTA', 15),
(33, 'asesinato en el campo de golf', 'agatha chritie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNZGsxdDZIVXNSWjQ', 15),
(34, 'como crece tu jardin', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNYWVUcVBmSS1MWnM', 15),
(35, 'despues del funeral', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNOFdEU2tlRFhOMWs', 15),
(36, 'doble culpabilidad', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNWEhHV0o3bDBIVEU', 15),
(37, 'doble pista', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNeVR4RFFUa0xPTlU', 15),
(38, 'donde esta el testamento', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNS1A0ek1PS0RVeEU', 15),
(39, 'el caso de la dama acogojada', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNYWNDdkt5UEJfeGM', 15),
(40, 'el caso de la doncella perfecta', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNbXlEOU00Rmh4dlk', 15),
(41, 'el club de los martes', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNV1QybXR3OWpIQW8', 15),
(42, 'la muerte de lord edgware', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNamdsWTBRMHc0S1U', 15),
(43, 'las manzanas', 'agatha christie', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNUVg4T05qWGNLWEE', 15),
(44, 'sobre la teoria de la relatividad', 'albert einstein', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNTEVfcDFiT3RYS2s', 11),
(45, 'mis creencias', 'albert einstein', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNakJHZUlyN0EzNm8', 11),
(46, 'este es mi pueblo', 'albert einstein', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNdlRIc21UVzk4Umc', 11),
(47, 'los tres mosqueteros', 'alejandro dumas', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNdjlDS1BsdEJHaFE', 6),
(48, 'los tres mosqueteros(continuacion)', 'alejandro dumas', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNZF9VaDlGTU1HazQ', 6),
(49, 'la dama de las camelias', 'alejandro dumas', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNR0pTc215ZzBUbzg', 13),
(50, 'el hombre de la mascara de hierro', 'alejandro dumas', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNT1RHREhyUXR3SEk', 13),
(51, 'el conde de montecristo', 'alejandro dumas', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNczhsa0wyTTJsTUE', 6),
(52, 'la araucana', 'alonso de erilla y zuñiga', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNSWF5by1SMDNfbnc', 16),
(53, 'analisis fundamental financiero', 'anonimo', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNRExzVXdMRFA4NUk', 17),
(54, 'el planeta loco', 'anderson y leiber', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNOGdMbi1wMEdzN28', 1),
(55, 'entrevista con el vampiro', 'anne rice', 'https://es.wikipedia.org/wiki/Entrevista_con_el_vampiro', 'https://drive.google.com/open?id=0ByQcT6nxzWdNUWsyZ3licFNMSEU', 13),
(56, 'la momia', 'anne rice', 'https://es.wikipedia.org/wiki/La_momia_(novela)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNdnk4aklZYVZFbHc', 13),
(57, 'cazadores de sombras ciudad de hueso', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Ciudad_de_hueso', 'https://drive.google.com/open?id=0ByQcT6nxzWdNUlA3bnFFNEN4YTQ', 13),
(58, 'cazadores de sombras ciudad de ceniza', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Ciudad_de_ceniza', 'https://drive.google.com/open?id=0ByQcT6nxzWdNNlVYUGdibEdBd1k', 13),
(59, 'cazadores de sombras ciudad de cristal', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Ciudad_de_cristal_(Cazadores_de_sombras)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNWTdkeExCY2pEODg', 17),
(60, 'cazadores de sombras ciudad de angeles caidos', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Ciudad_de_los_%C3%A1ngeles_ca%C3%ADdos', 'https://drive.google.com/open?id=0ByQcT6nxzWdNb0J1VW9Vd2pxTmM', 17),
(61, 'cazadores de sombras almas perdidas', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Ciudad_de_las_almas_perdidas', 'https://drive.google.com/open?id=0ByQcT6nxzWdNanZHa0Q5MWxXUzA', 17),
(62, 'cazadores de sombras ciudad de fuego celestial', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNSUNfODc1Q3lJN1E', 17),
(63, 'codex cazadores de sombras', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTTFl2R25DWlhqU28', 17),
(64, 'cazadores de sombras angel mecanico', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/%C3%81ngel_mec%C3%A1nico', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTNERGSUwxcGh3Nmc', 17),
(65, 'cazadores de sombras principe mecanico', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Pr%C3%ADncipe_mec%C3%A1nico', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTdllCTnBmZkItLW8', 17),
(66, 'cazadores de sombras princesa mecanica', 'Cassandra Clare', 'https://es.wikipedia.org/wiki/Princesa_mec%C3%A1nica', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTYUhodW9vUjB5TVk', 17),
(67, 'cazadores de sombras lo que realmente sucedio en peru', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTVnNEeGlsSGczVkE', 17),
(68, 'cazadores de sombras la reina fugitiva', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTTHh4S0NNVk1jZUE', 17),
(69, 'cazadores de sombras Vampires, Scones & Edmund Herondale', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTQXA5VFRxdVdDOXM', 17),
(70, 'cazadores de sombras the midnight heir', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTUnR1ekJNR0lVTGs', 17),
(71, 'cazadores de sombras el ascenso del hotel dumort', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTZGxKbjBmbkRCZkk', 17),
(72, 'cazadores de sombras saving raphael santiago', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTZzF2OVJvN0tZOVE', 17),
(73, 'cazadores de sombras la caida del hotel dumort', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTeHRPWjJXdnRmaDQ', 17),
(74, 'cazadores de sombras que comprarle al cazador de sombras que lo tiene todo', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTblp6VW9PUEhYODQ', 17),
(75, 'cazadores de sombras The Last Stand of the New York Institute', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTbVBld0l3dVV3QUk', 17),
(76, 'cazadores de sombras El curso del verdadero amor ', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTVnpxeXhxbUx3VTQ', 17),
(77, 'cazadores de sombras the voicemail of magnus bane', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTeUZ4YTZGVnNPZ0E', 17),
(78, 'cazadores de sombras lady midnight', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0ByGNeb_s7O8kQzBHNzlNLU10Y2c', 17),
(79, 'cazadores de sombras historias de la academia 1', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTR3AzWi1rODRRREU', 17),
(80, 'cazadores de sombras historias de la academia 2', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTT3hHWThhcnVJSlE', 17),
(81, 'cazadores de sombras historias de la academia 3', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTNkxlTmtfMF9aZ00', 17),
(82, 'cazadores de sombras historias de la academia 4', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTTklibkQ1TEN4RzQ', 17),
(83, 'cazadores de sombras historias de la academia 5', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTRF9vTzhUSDFqeU0', 17),
(84, 'cazadores de sombras historias de la academia 6', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTb2oybXd6MHZDcmc', 17),
(85, 'cazadores de sombras historias de la academia 7', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTSjhkbzZ3UURvbE0', 17),
(86, 'cazadores de sombras historias de la academia 8', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTWmxUQ01GdGhTWEk', 17),
(87, 'cazadores de sombras historias de la academia 9', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTTFZaZFFiMVptU2c', 17),
(88, 'cazadores de sombras historias de la academia 10', 'Cassandra Clare', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTU1lnbGdfT1czU1E', 17),
(89, 'fuego cruzado no te escondo nada', 'Sylvia Day', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTTFpPR1g3Z2hwMzQ', 13),
(90, 'fuego cruzado reflejada en ti', 'Sylvia Day', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTcVVjcGxPaXlnZ1U', 13),
(91, 'fuego cruzado atada a ti', 'Sylvia Day', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTZk9ZakJGaUcxTzA', 13),
(92, 'fuego cruzado cautivada por ti', 'Sylvia Day', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTWi1jMUNXNEktSTQ', 13),
(93, 'fuego cruzado somos uno', 'Sylvia Day', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTM3h5N2VwdWlJOVE', 13),
(94, 'siete años para pecar', 'Sylvia Day', '', 'https://drive.google.com/open?id=0B0A_jLK_ZVLTblQ4RHItVXBPam8', 13),
(95, 'cuentos africanos', 'anonimo', 'https://es.wikipedia.org/wiki/Libro_de_cuentos_africanos_(ASb)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNWHgwQmNiYWNjc2M', 11),
(96, 'el arte de la seduccion', 'anonimo', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNaFpPZ2tvOGlRU0k', 11),
(97, 'la historia de la matematicas', 'anonimo', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNN2tfVEhhZ0xhSzQ', 11),
(98, 'la vida de lazarillo tormes', 'anonimo', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNc0dGQXhMOGhERVU', 13),
(99, 'mitologia universal', 'anonimo', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNMGRkR25qOGZucWc', 11),
(100, 'robin hood', 'anonimo', 'https://es.wikipedia.org/wiki/Robin_Hood', 'https://drive.google.com/open?id=0ByQcT6nxzWdNX2FVV1pleWUxbjA', 13),
(101, 'el principito', 'antoine de saint-exupéry', 'https://es.wikipedia.org/wiki/El_principito', 'https://drive.google.com/open?id=0ByQcT6nxzWdNc3BTUG5rcUpBWW8', 13),
(102, 'la recopilacion', 'Anton Chejov', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNbnp6OUlzT0FRRmM', 11),
(103, 'el cartero de neruda', 'antonio skarmeta', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNeEZHM3FqWEtIZms', 6),
(104, 'etica a nicomaco', 'aristoteles', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNbFVoTXA3ZWkxazA', 18),
(105, 'la etica', 'aristoteles', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNWW5lTXc3MDcwa1E', 18),
(106, 'la gran moral', 'aristoteles', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNenZ4TThLeFhEaEk', 18),
(107, 'metafisica', 'aristoteles', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNeDdsR3dYejFRSEk', 19),
(108, 'moral de eudemo', 'aristoteles', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNaHdtMVlreXJWMms', 20),
(109, 'poetica', 'aristoteles', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNLWVoOHlGajRtR1U', 6),
(110, 'politica', 'aristoteles', 'https://es.wikipedia.org/wiki/Pol%C3%ADtica_(Arist%C3%B3teles)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNeDRSZGlUMHVZbEk', 18),
(111, 'alba de saturno', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNY0NZeEJ2WnBTY28', 1),
(112, 'antes del eden', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNTHlrdVVad2g4aFk', 13),
(113, ' venus prime 3 el juego del escondite', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNRjFxcTNpaFJHWDA', 1),
(114, 'el muro de oscuridad', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNS3ZrMHRUNXMxdTQ', 1),
(115, 'una odisea espacial', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNSFhnTkw0UUY0Ym8', 1),
(116, 'la odisea 2', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNV0dlb0dfRWg5TUE', 1),
(117, 'la odisea 3', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNY0hPalNBX3JfdUU', 1),
(118, 'la odisea final', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNbW85STNQZ2s4OFE', 1),
(119, 'alcanza el mañana', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNU2MwRWhNVWhXS2s', 1),
(120, 'cita con rama', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNUzRkdnIzMDk1dFU', 1),
(121, 'claro de tierra', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNWVhwMWtOcGdseDQ', 1),
(122, 'crimen en marte', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNRzNnbGVOdmZGMnM', 1),
(123, 'cuentos del planeta tierra', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNOXI5aC16UHVpUjA', 1),
(124, 'el fin de la infancia', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNeVI1c29iS3o0ZWs', 1),
(125, 'el martillo de Dios', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNSDhmcTdKaV9zQ0U', 1),
(126, 'el viento del sol', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNTVlQZFVVVXA0Y0U', 1),
(127, 'en las profundidades', 'arthur clarke', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNT3JnMldnWnpZclk', 1),
(128, 'la ciudad y las estrellas', 'arthur clarke', 'https://es.wikipedia.org/wiki/La_ciudad_y_las_estrellas', 'https://drive.google.com/open?id=0ByQcT6nxzWdNbHF1djhRWkpJR28', 1),
(129, 'las arenas de marte', 'arthur clarke', 'https://es.wikipedia.org/wiki/Las_arenas_de_Marte', 'https://drive.google.com/open?id=0ByQcT6nxzWdNQThGbXJIdVQ2SVk', 1),
(130, 'el jardin de rama', 'arthur clarke y gentry le', 'https://es.wikipedia.org/wiki/El_jard%C3%ADn_de_Rama', 'https://drive.google.com/open?id=0ByQcT6nxzWdNaDRtd3J0dUMzeWs', 13),
(131, 'rama 2', 'arthur clarke y gentry le', 'https://es.wikipedia.org/wiki/Rama_II_(novela)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNaWdPOVZwbVRZSE0', 13),
(132, 'rama revelada', 'arthur clarke y gentry le', 'https://es.wikipedia.org/wiki/Rama_revelada', 'https://drive.google.com/open?id=0ByQcT6nxzWdNcVpocDc0S2l0MGc', 13),
(133, 'venus prime 1 maxima tension', 'arthur clarke y Paul Preu', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNQVprRzBpVVRnSW8', 13),
(134, 'venus prime 2 torbellino', 'arthur clarke y Paul Preu', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNU2YwRlpQZnk3ZjQ', 13),
(135, 'venus prime 4 el encuentro con medusa', 'arthur clarke y Paul Preu', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNZDdUcjBDUUU4TGs', 13),
(136, 'el mundo perdido', 'arthur conan doyle', 'https://es.wikipedia.org/wiki/El_mundo_perdido', 'https://drive.google.com/open?id=0ByQcT6nxzWdNeXZsRWRZWW5TeTg', 13),
(137, 'el sabueso de los baskerville', 'arthur conan doyle', 'https://es.wikipedia.org/wiki/El_sabueso_de_los_Baskerville', 'https://drive.google.com/open?id=0ByQcT6nxzWdNY0dqOTFRcFVJNTA', 13),
(138, 'el signo de los cuatro', 'arthur conan doyle', 'https://es.wikipedia.org/wiki/El_signo_de_los_cuatro', 'https://drive.google.com/open?id=0ByQcT6nxzWdNenk2Mm96NG93bkE', 13),
(139, 'espanto en las alturas', 'arthur conan doyle', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNYzlIZGV6TmZBd3M', 13),
(140, 'estudio escarlata', 'arthur conan doyle', 'https://es.wikipedia.org/wiki/Estudio_en_escarlata', 'https://drive.google.com/open?id=0ByQcT6nxzWdNNFhBem00emNpZ1U', 13),
(141, 'la catacumba nueva', 'arthur conan doyle', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNZk5lcTJsQVZEaTg', 13),
(142, 'las aventuras de sherlock holmes', 'arthur conan doyle', '', 'https://es.wikipedia.org/wiki/Las_aventuras_de_Sherlock_Holmes', 13),
(143, 'sherlock holmes', 'arthur conan doyle', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNdDJlX2ZJQjFKS2s', 13),
(144, 'la ciencia secreta', 'arthur conan doyle', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNY09RTVlpeU5QVDA', 13),
(145, 'el descenso al maelstrom', 'edgar allan poe', 'https://es.wikipedia.org/wiki/Un_descenso_al_Maelstr%C3%B6m', 'https://drive.google.com/open?id=0ByQcT6nxzWdNenZIX2dCUnBoN0E', 1),
(146, 'comunismo y religion', 'Bob avakian', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNbERKRFhWSDZfdnM', 21),
(147, 'entierro de las ratas', 'bram stocker', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNQ054TE9JWHpnd2s', 10),
(148, 'dracula', 'bram stocker', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNN3c4NmhfS1Rmc0U', 10),
(149, 'lazos de amor', 'brian weiss', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNTFFTTWxMa0FNT1k', 4),
(150, 'mensajes de los sabios', 'brian weiss', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNVTNRU1VSall0dUk', 22),
(151, 'muchas vidas muchos maestros', 'brian weiss', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNS0lPRXByWEo1aVU', 22),
(152, 'solo el amor es real', 'brian weiss', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNQm1BM1hMQnQ4dGs', 22),
(153, 'la caza de los hackers', 'bruce Sterling', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNLXBsLW5GbmZFQ28', 23),
(154, 'contacto', 'carl sagan', 'https://es.wikipedia.org/wiki/Contact_(novela)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNYjRsbFA2UkV1Zmc', 13),
(155, 'cosmos', 'carl sagan', 'https://es.wikipedia.org/wiki/Cosmos_(libro)', 'https://drive.google.com/open?id=0ByQcT6nxzWdNUWVzQ05sSWxONzA', 24),
(156, 'el cerebro de broca', 'carl sagan', 'https://es.wikipedia.org/wiki/El_cerebro_de_Broca', 'https://drive.google.com/open?id=0ByQcT6nxzWdNRkc4NWxxY3oyMkU', 25),
(157, 'la carga del escepticismo', 'carl sagan', '', 'https://drive.google.com/open?id=0ByQcT6nxzWdNTlM0THNBeXRYWnM', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` int(11) NOT NULL,
  `name_editorial` varchar(50) NOT NULL,
  `url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id_editorial`, `name_editorial`, `url`) VALUES
(1, 'molino', 'http://www.editorialmolino.com/home-es.html'),
(2, 'HarperCollins', 'http://harpercollinsespanol.com/'),
(3, 'santillana', 'http://www.santillana.com.co/www/'),
(4, 'V&R', 'http://www.vreditoras.com/'),
(5, 'la oveja negra', 'http://www.editorialovejanegra.com/index.php'),
(6, 'rba', 'http://www.rba.es/'),
(7, 'Hodder & Stoughton', 'https://www.hodder.co.uk/'),
(8, 'umbriel', 'http://www.umbrieleditores.com/es-es/inicio.htmlhttp://www.umbrieleditores.com/es-es/inicio.html'),
(9, 'alianza', 'http://www.alianzaeditorial.es/'),
(10, 'el tiempo', 'http://www.eltiempo.com/noticias/el-tiempo-casa-editorial'),
(11, 'desconocida', ''),
(12, 'alo', 'http://alo.co/cultura-y-opinion/alo-648-editorial'),
(13, 'televisa', 'http://store.editorialtelevisa.com.co/index.php'),
(14, 'el espectador', 'http://www.elespectador.com/opinion/editorial-0'),
(15, 'cromos', 'http://www.cromos.com.co/tags/editorial'),
(16, 'semana', 'http://www.semana.com/buscador?query=editorial'),
(17, 'atlantida', 'http://www.atlantidalibros.com.ar/'),
(18, 'tusquets', 'http://www.planetadelibros.com/editorial/tusquets-editores/59');

-- --------------------------------------------------------	

--
-- Estructura de tabla para la tabla `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(1, 'ciencia ficcion'),
(2, 'literatura juvenil'),
(3, 'terror'),
(4, 'Romance'),
(5, 'sobrenatural'),
(6, 'Drama histórico'),
(7, 'Cuento'),
(8, 'realismo magico'),
(9, 'misterio'),
(10, 'suspenso'),
(11, 'desconocido'),
(12, 'epopeya'),
(13, 'novela'),
(14, 'filosofia politica'),
(15, 'misterio'),
(16, 'poesia'),
(17, 'finanzas'),
(18, 'filosofia'),
(19, 'metafisica'),
(20, 'ensayo'),
(21, 'comunismo'),
(22, 'autoayuda'),
(23, 'tecnologia'),
(24, 'astronomia'),
(25, 'cientifico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `journals`
--

-- Volcado de datos para la tabla `journals`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_book` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `name`, `last_name`, `mail`, `password`, `id_book`) VALUES
(1, 'esteban', 'chavez', 'estabien@gmail.com', 'pasw', 1),
(2, 'carlos', 'patiño', 'calitos44@hotmail.co', 'pasw', 2),
(3, 'karla', 'sanchez', 'sankar@gmail.com', 'pasw', 3),
(4, 'natalia', 'gomez', 'natgom@hotmail.com', 'pasw', 4),
(5, 'nicolas', 'arias', 'nicar@gmail.com', 'pasw', 5),
(6, 'daniel', 'fajardo', 'danfar@hotmail.com', 'pasw', 6),
(7, 'juan david', 'cortes', 'juanco@gmail.com', 'pasw', 7),
(8, 'viviana', 'rodriguez', 'viro10@hotmail.com', 'pasw', 8),
(9, 'lucas', 'zapata', 'luczap@gmail.com', 'pasw', 9),
(10, 'jorge', 'villalobos', 'jorgevil@hotmail.com', 'pasw', 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD KEY `id_book` (`id_book`);

--
-- Indices de la tabla `audiobooks`
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_gender` (`id_gender`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id_editorial`);
  

--
-- Indices de la tabla `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indices de la tabla `journals`
--
--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_book` (`id_book`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audiobooks`
--
--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id_editorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `journals`
--
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`);

--
-- Filtros para la tabla `audiobooks`
--
--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_gender`) REFERENCES `gender` (`id_gender`);

--
-- Filtros para la tabla `editorial`
--
--
-- Filtros para la tabla `journals`
--
--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
