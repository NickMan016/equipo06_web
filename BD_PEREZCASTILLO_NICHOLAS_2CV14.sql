-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2022 a las 17:06:23
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities`
--

CREATE TABLE `activities` (
  `id_actividades` bigint(20) UNSIGNED NOT NULL,
  `bloque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_type` int(11) NOT NULL,
  `activity_tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attached_files` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `activities`
--

INSERT INTO `activities` (`id_actividades`, `bloque`, `material_type`, `activity_tittle`, `task_description`, `attached_files`, `user`, `created_at`, `updated_at`) VALUES
(1, '3', 1, '1. Los zapatos', '1. Formen equipos. Dos compañeros deben tener zapatos con agujetas. ¿Quién tendrá las aguejtas más largas?\r\n2. Busquen una manera de comprobar lo.\r\n\r\n¿Cómo comparar las agujetas?\r\n\r\nUne con una línea cada agujeta con su zapato. Las más largas para las botas, las medianas para los zpatas de futbol y las chicas para los tenis.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(2, '3', 1, '2. Las porterías', '1. Colore de amarillo, las porterías grandes, de rojo las medianas y de azul las pequeñas.\r\n\r\n2. Usa un pedazp de cordón para comprobar tu respuesta.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(3, '3', 1, '3. ¿Cuál carretera es más larga?', 'Salgan a patio. Por equipos, corten tres hilos largos como cda una de las carreteras que pintó su maestro.\r\n\r\n*¿Cuál es la carretera más corta?\r\n*¿Cuál es la carretera más larga?\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(4, '3', 1, '4. ¿Cuánto he crecido?', '1. Trabajen en equipos. Corten una tira igua de larga que su estatura.\r\n2. Escriban su nombre en la tira y compárenla con la que se hicieorn en la lección. *¿Cuál es tu estatura?* (página 56).\r\n3. Ahora, corten una tira del tamaño de la diferencia entre las dos tiras. ¡Eso es lo que han crecido!\r\n4. Ordenen las tiras de los que han crecido los integrantes de su equipo, de la más corta a la más larga.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(5, '3', 2, '1. Ruedan o no ruedan', '1. Trabajen en equipos. Del Rincón de las matemáticas tomen tres objetos que indique el maestro.\r\n2. En el patio, tracen una linea recta. Desde ahí por turnos, empeujarán un objeto sobre el piso.\r\n3. Observen qué ocurre con cada cuerpo geométrico, dibújenlo y respondan si rueda o no rueda.\r\n4. Lean las siguientes características y unan con una línea la descripción que corresponda con el objeto.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(6, '3', 2, '2. Una caja para cada galleta', '1. En la panaderia El buen pan elaboraron galletas de formas diferentes. Para las galletas cuadradas tienen esa caja.\r\n2. Necesitan que les ayudes a elegir las cajas para las demás galeltas. Une con una línea la caja que corresponda con la forma de cada galleta. *¿Hay cajas para todos los tipos de galletas?\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(7, '3', 2, '3. Las Huellas misteriosas', '1. En equipos, busquen algún objeto cuya huella tenga alguna de las formas que se muestran.\r\n2. Dibujan un objeto para cada huella.\r\n3. Busquen en revistas tres imágenes de objetos cuyas huellas tengan fomra de rectángulo. Recórtenlas y péguenlas en su cuardeno.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(8, '3', 2, '4. Nuestro parque', '1. Formen equipos y busquen cajas, envases, pinturas y pinceles en el Rincón de las matemáticas.\r\n2. Construyan una maqueta de un parque con varias zonas.\r\n	Al observar la maqueta desde arriba, se deben ver las huellas de las diferentes zonas del parque:\r\n		- el museo en forma de circulo;\r\n		- la biblioteca en forma de cuadrado;\r\n		- la cada de la cultura, en forma de rectángulo;\r\n		- el foro al aire libre, en forma de triángulo.\r\n3. Dibujo el parque que construyen en tu equipo.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(9, '3', 3, '1. La misma cantidad', 'Por equipos, recibirán un vaso con agua y otro vacio. \r\n\r\nSirvan agaua en el vaso vacío para que los dos tengan la misma cantidad.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(10, '3', 3, '2. ¡A guardar la masa!', '1. Trabajen en equipos con la masa y los recipientes.\r\n2. Llenen al ras los tres recipientes con masa.\r\n3. Saquen las tres porciones de masa y, sin mezclarlas, hagan una figura con cada porción.\r\n4. Intecambien recipientes y figuras con otro equipo.\r\n5. Observen el material que reciben del otro equipo.\r\n6. Para comprobar lo, guarden la masa en cada recipiente.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(11, '3', 4, '1. A diseñar manteles', 'Imagina que en el grupo forman una cooperativa qu se dedica a la elaboración de manteles.\r\n\r\nEn parejas, elaboren dos tipos de manteles: uno grande, en una hoja tamaño carta, y uno pequeño, en media hoja, sigan las indicaciones.\r\n\r\nMantel grande:\r\n	- Figuras grande y pequeñas de tres lados.\r\n	- Figuras con lados rectos.\r\n	- Figuras con lados curvos.\r\n	- Circulo dentro de un cuadrado.\r\n	\r\nMantel pequeño:\r\n	- Figuras grandes y pequeños de cuatro lados.\r\n	- Tods las figuras tendrán lados rectos.\r\n	-  Cuadrado dentro de un triángulo.\r\n	\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(12, '3', 4, '2. ¡A juntar manteles!', '1. En parejas recibirán una tarjeta con un pedido que deberán surtir con manteles pequeños y grandes.\r\n2. En cuentre diferentes maneras en las que podrían reunir esa cantidad de manteles.\r\n3. Registren cuatro respuestas en la siguiente tabla.\r\n\r\n		Manteles grandes|Manteles pequeños|Total\r\n		\r\n	*¿Cuántos manteles más necesitan para juntar 100 piezas?\r\n	*Si ya tienen 25 manteles, ¿cuántos faltan o sobran para surtir el pedidio?\r\n	*Pregunten a otra pareja: ¿cuántos manteles necesitan juntar? ¿Quién debe juntar más manteles?\r\n	\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(13, '3', 4, '3. La venta de manteles', 'En parejas recibirán dos tarjetas con pedidos de manteles grandes y pequeños.\r\n1.	Pondrán a la venta sus manteles: a 1 peso los pequeños y a 10 pesos los grandes.\r\n		* ¿Cuánto dinero obtendrían con la venta?\r\n\r\n2. Intercambien sus tarjetas con otra pareja y calculen cuánto dinero recibirían en cada caso. Háganlo cuatro veces.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(14, '3', 4, '4. ¿Nos alcanza?', 'En parejas, recibirán una tarjeta con la cantidad de dinero a juntar con la venta de manteles grandes y pequeños.\r\n\r\n1. Encuentren diferentes maneras de reunir esa cantidad.\r\n2. Completen la tabla con opciones distintas (6 respuestas).\r\n		\r\n		Manteles grandes|Manteles pequeños|Venta total (pesos)\r\n		\r\n	*¿En qué caso necesitan producir menos manteles?\r\n	*¿En que caso necesitan producir más manteles?\r\n	\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL),
(15, '3', 4, '5. Un mural de manteles.', 'Formen equipos para preparar la exposición de los manteles.\r\n\r\n1. Acomoden los manteles por tamaños en dos paredes del salón y enumérenlos. Cada fila debe tener la misma cantidad de manteles.\r\n\r\n2. Cada equipo acomodará la mitad de los manteles en un mural.\r\n	*¿Cuántos manteles caben en cada fila?\r\n	*¿Cuántos caben por cada columna?\r\n	*¿Cuántas pizas caben en cada pared?', '', 0, NULL, NULL),
(16, '3', 4, '6. El diseño favorito', '¡Ha llegado el momento de mostrar sus diseños!\r\n\r\n1. Hagan una encuesta para saber qué diseño es el que prefiere la mayoría de los visitantes. ¿Qué pregunta deben hacerles?\r\n2. En equipos, tomen una hoja y divíndanla en 4 partes. A cada visitante le entragarón una de esas partes para que escriba su respuesta. Guarden las respuestas en una bolsa.\r\n3. Al finalizar la exposición revisen la bolsa con las respuestas e identifiquen el diseño favorito de los visitantes. \r\n	* El diseño favorito es el número: ________\r\n		Obtuvo _____ votos.\r\n	* El segundo diseño favorito es el número: ________\r\n		La cantidad de votos fue: _________', '', 0, NULL, NULL),
(17, '3', 5, 'Evaluación', '1. Armando y Laura pusieron agua en tres vasos.\r\n	El primero es el más lleno. Los otros dos tiene la misma cantidad de liquido. Dibuja el agua en cada vaso.\r\n\r\n2. Dibueja una huella que deja alguna de las caras de los siguientes cuerpos.\r\n\r\n	Prisma rectángular | Prisma triángular | Prisma circular\r\n	\r\n3. Escribe los números que faltan.\r\n\r\n	41-		-43-	-45-46-		-		-		-50\r\n	\r\n	25+ 	=30\r\n	\r\n	80-		=70\r\n	\r\n4. Escribe ocho maneras de oabtener el número 100 usando sumas y restas.\r\n\r\n5. Viridiana ordenó las actividades de la semana así:\r\n\r\n	    Lunes	     |    Miércoes   |  Martes  	|	   Jueves       |   Viernes \r\n	Aprendiendo a  |    Partido	   |  Clases    |	Evaluación de 	| Pláticas de\r\n	leer y esceibir| de baloncesto |  de arte   |  matemáticas    |  ecología\r\n\r\n		*Su maestro le dijo que hay un error en el orden. ¿Cuál es?\r\n		\r\n		\r\n		Lo que aprendí en Matemáticas en primer grado fue:\r\n', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catmatirial`
--

CREATE TABLE `catmatirial` (
  `id_matirial` bigint(20) UNSIGNED NOT NULL,
  `matirials` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `catmatirial`
--

INSERT INTO `catmatirial` (`id_matirial`, `matirials`, `created_at`, `updated_at`) VALUES
(1, 'Trayecto 6. Más sobre las longuitudes', NULL, NULL),
(2, 'Trayecto 7. Figuras en cuerpos geometricos.', NULL, NULL),
(3, 'Trayecto 8. Más capacidad', NULL, NULL),
(4, 'Trayecto 9. Cooperativa de manteles', NULL, NULL),
(5, 'Evaluación', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support`
--

CREATE TABLE `support` (
  `id_support` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `detail_query` text NOT NULL,
  `attended` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `support`
--

INSERT INTO `support` (`id_support`, `id_actividad`, `email`, `detail_query`, `attended`) VALUES
(7, 1, 'correo@correo.com', 'Porque zapatos???', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlevelpermissions`
--

CREATE TABLE `userlevelpermissions` (
  `userlevelid` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_security` bigint(20) UNSIGNED NOT NULL,
  `user_level` int(11) NOT NULL,
  `complete_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_secundary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_security`, `user_level`, `complete_name`, `user`, `password`, `remember_token`, `email`, `email_verified_at`, `email_secundary`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nicholas Pérez', 'NicoAdmin', '1234', NULL, 'npcastillo73@gmail.com', NULL, 'nico@correo.com', '5513595890', NULL, NULL),
(2, 2, 'Ivan Martinez', 'IvanMtz', '1234', NULL, 'ivanmtz@gmail.com', NULL, '', '', NULL, NULL),
(3, 3, 'Nadia Paniagua', 'Nadia', '1234', NULL, 'nadiapaniagua@gmail.com', NULL, '', '5543164828', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_levels`
--

CREATE TABLE `user_levels` (
  `id_level` bigint(20) UNSIGNED NOT NULL,
  `user_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `user_levels`
--

INSERT INTO `user_levels` (`id_level`, `user_level`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', NULL, NULL),
(2, 'Profesor', NULL, NULL),
(3, 'Alumno', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id_actividades`) USING BTREE;

--
-- Indices de la tabla `catmatirial`
--
ALTER TABLE `catmatirial`
  ADD PRIMARY KEY (`id_matirial`) USING BTREE;

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indices de la tabla `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_support`);

--
-- Indices de la tabla `userlevelpermissions`
--
ALTER TABLE `userlevelpermissions`
  ADD PRIMARY KEY (`userlevelid`,`tablename`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_security`) USING BTREE,
  ADD UNIQUE KEY `usuarios_usuario_unique` (`user`) USING BTREE,
  ADD UNIQUE KEY `usuarios_email_unique` (`email`) USING BTREE;

--
-- Indices de la tabla `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id_level`) USING BTREE,
  ADD UNIQUE KEY `nivelesusuario_nivel_usuario_unique` (`user_level`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activities`
--
ALTER TABLE `activities`
  MODIFY `id_actividades` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `catmatirial`
--
ALTER TABLE `catmatirial`
  MODIFY `id_matirial` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `support`
--
ALTER TABLE `support`
  MODIFY `id_support` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_security` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `id_level` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
