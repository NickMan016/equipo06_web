/*
 Navicat MySQL Data Transfer

 Source Server         : negro
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : escuela

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 04/01/2022 23:10:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities`  (
  `id_actividades` bigint UNSIGNED NOT NULL,
  `bloque` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_type` int NOT NULL,
  `activity_tittle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `task_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attached_files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES (1, '3', 1, '1. Los zapatos', '1. Formen equipos. Dos compañeros deben tener zapatos con agujetas. ¿Quién tendrá las aguejtas más largas?\r\n2. Busquen una manera de comprobar lo.\r\n\r\n¿Cómo comparar las agujetas?\r\n\r\nUne con una línea cada agujeta con su zapato. Las más largas para las botas, las medianas para los zpatas de futbol y las chicas para los tenis.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (2, '3', 1, '2. Las porterías', '1. Colore de amarillo, las porterías grandes, de rojo las medianas y de azul las pequeñas.\r\n\r\n2. Usa un pedazp de cordón para comprobar tu respuesta.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (3, '3', 1, '3. ¿Cuál carretera es más larga?', 'Salgan a patio. Por equipos, corten tres hilos largos como cda una de las carreteras que pintó su maestro.\r\n\r\n*¿Cuál es la carretera más corta?\r\n*¿Cuál es la carretera más larga?\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (4, '3', 1, '4. ¿Cuánto he crecido?', '1. Trabajen en equipos. Corten una tira igua de larga que su estatura.\r\n2. Escriban su nombre en la tira y compárenla con la que se hicieorn en la lección. *¿Cuál es tu estatura?* (página 56).\r\n3. Ahora, corten una tira del tamaño de la diferencia entre las dos tiras. ¡Eso es lo que han crecido!\r\n4. Ordenen las tiras de los que han crecido los integrantes de su equipo, de la más corta a la más larga.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (5, '3', 2, '1. Ruedan o no ruedan', '1. Trabajen en equipos. Del Rincón de las matemáticas tomen tres objetos que indique el maestro.\r\n2. En el patio, tracen una linea recta. Desde ahí por turnos, empeujarán un objeto sobre el piso.\r\n3. Observen qué ocurre con cada cuerpo geométrico, dibújenlo y respondan si rueda o no rueda.\r\n4. Lean las siguientes características y unan con una línea la descripción que corresponda con el objeto.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (6, '3', 2, '2. Una caja para cada galleta', '1. En la panaderia El buen pan elaboraron galletas de formas diferentes. Para las galletas cuadradas tienen esa caja.\r\n2. Necesitan que les ayudes a elegir las cajas para las demás galeltas. Une con una línea la caja que corresponda con la forma de cada galleta. *¿Hay cajas para todos los tipos de galletas?\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (7, '3', 2, '3. Las Huellas misteriosas', '1. En equipos, busquen algún objeto cuya huella tenga alguna de las formas que se muestran.\r\n2. Dibujan un objeto para cada huella.\r\n3. Busquen en revistas tres imágenes de objetos cuyas huellas tengan fomra de rectángulo. Recórtenlas y péguenlas en su cuardeno.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (8, '3', 2, '4. Nuestro parque', '1. Formen equipos y busquen cajas, envases, pinturas y pinceles en el Rincón de las matemáticas.\r\n2. Construyan una maqueta de un parque con varias zonas.\r\n	Al observar la maqueta desde arriba, se deben ver las huellas de las diferentes zonas del parque:\r\n		- el museo en forma de circulo;\r\n		- la biblioteca en forma de cuadrado;\r\n		- la cada de la cultura, en forma de rectángulo;\r\n		- el foro al aire libre, en forma de triángulo.\r\n3. Dibujo el parque que construyen en tu equipo.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (9, '3', 3, '1. La misma cantidad', 'Por equipos, recibirán un vaso con agua y otro vacio. \r\n\r\nSirvan agaua en el vaso vacío para que los dos tengan la misma cantidad.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (10, '3', 3, '2. ¡A guardar la masa!', '1. Trabajen en equipos con la masa y los recipientes.\r\n2. Llenen al ras los tres recipientes con masa.\r\n3. Saquen las tres porciones de masa y, sin mezclarlas, hagan una figura con cada porción.\r\n4. Intecambien recipientes y figuras con otro equipo.\r\n5. Observen el material que reciben del otro equipo.\r\n6. Para comprobar lo, guarden la masa en cada recipiente.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (11, '3', 4, '1. A diseñar manteles', 'Imagina que en el grupo forman una cooperativa qu se dedica a la elaboración de manteles.\r\n\r\nEn parejas, elaboren dos tipos de manteles: uno grande, en una hoja tamaño carta, y uno pequeño, en media hoja, sigan las indicaciones.\r\n\r\nMantel grande:\r\n	- Figuras grande y pequeñas de tres lados.\r\n	- Figuras con lados rectos.\r\n	- Figuras con lados curvos.\r\n	- Circulo dentro de un cuadrado.\r\n	\r\nMantel pequeño:\r\n	- Figuras grandes y pequeños de cuatro lados.\r\n	- Tods las figuras tendrán lados rectos.\r\n	-  Cuadrado dentro de un triángulo.\r\n	\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (12, '3', 4, '2. ¡A juntar manteles!', '1. En parejas recibirán una tarjeta con un pedido que deberán surtir con manteles pequeños y grandes.\r\n2. En cuentre diferentes maneras en las que podrían reunir esa cantidad de manteles.\r\n3. Registren cuatro respuestas en la siguiente tabla.\r\n\r\n		Manteles grandes|Manteles pequeños|Total\r\n		\r\n	*¿Cuántos manteles más necesitan para juntar 100 piezas?\r\n	*Si ya tienen 25 manteles, ¿cuántos faltan o sobran para surtir el pedidio?\r\n	*Pregunten a otra pareja: ¿cuántos manteles necesitan juntar? ¿Quién debe juntar más manteles?\r\n	\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (13, '3', 4, '3. La venta de manteles', 'En parejas recibirán dos tarjetas con pedidos de manteles grandes y pequeños.\r\n1.	Pondrán a la venta sus manteles: a 1 peso los pequeños y a 10 pesos los grandes.\r\n		* ¿Cuánto dinero obtendrían con la venta?\r\n\r\n2. Intercambien sus tarjetas con otra pareja y calculen cuánto dinero recibirían en cada caso. Háganlo cuatro veces.\r\n\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (14, '3', 4, '4. ¿Nos alcanza?', 'En parejas, recibirán una tarjeta con la cantidad de dinero a juntar con la venta de manteles grandes y pequeños.\r\n\r\n1. Encuentren diferentes maneras de reunir esa cantidad.\r\n2. Completen la tabla con opciones distintas (6 respuestas).\r\n		\r\n		Manteles grandes|Manteles pequeños|Venta total (pesos)\r\n		\r\n	*¿En qué caso necesitan producir menos manteles?\r\n	*¿En que caso necesitan producir más manteles?\r\n	\r\nSubir el ejercicios hecho a mano en el apartado de archivos.', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (15, '3', 4, '5. Un mural de manteles.', 'Formen equipos para preparar la exposición de los manteles.\r\n\r\n1. Acomoden los manteles por tamaños en dos paredes del salón y enumérenlos. Cada fila debe tener la misma cantidad de manteles.\r\n\r\n2. Cada equipo acomodará la mitad de los manteles en un mural.\r\n	*¿Cuántos manteles caben en cada fila?\r\n	*¿Cuántos caben por cada columna?\r\n	*¿Cuántas pizas caben en cada pared?', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (16, '3', 4, '6. El diseño favorito', '¡Ha llegado el momento de mostrar sus diseños!\r\n\r\n1. Hagan una encuesta para saber qué diseño es el que prefiere la mayoría de los visitantes. ¿Qué pregunta deben hacerles?\r\n2. En equipos, tomen una hoja y divíndanla en 4 partes. A cada visitante le entragarón una de esas partes para que escriba su respuesta. Guarden las respuestas en una bolsa.\r\n3. Al finalizar la exposición revisen la bolsa con las respuestas e identifiquen el diseño favorito de los visitantes. \r\n	* El diseño favorito es el número: ________\r\n		Obtuvo _____ votos.\r\n	* El segundo diseño favorito es el número: ________\r\n		La cantidad de votos fue: _________', '', 0, NULL, NULL);
INSERT INTO `activities` VALUES (17, '3', 5, 'Evaluación', '1. Armando y Laura pusieron agua en tres vasos.\r\n	El primero es el más lleno. Los otros dos tiene la misma cantidad de liquido. Dibuja el agua en cada vaso.\r\n\r\n2. Dibueja una huella que deja alguna de las caras de los siguientes cuerpos.\r\n\r\n	Prisma rectángular | Prisma triángular | Prisma circular\r\n	\r\n3. Escribe los números que faltan.\r\n\r\n	41-		-43-	-45-46-		-		-		-50\r\n	\r\n	25+ 	=30\r\n	\r\n	80-		=70\r\n	\r\n4. Escribe ocho maneras de oabtener el número 100 usando sumas y restas.\r\n\r\n5. Viridiana ordenó las actividades de la semana así:\r\n\r\n	    Lunes	     |    Miércoes   |  Martes  	|	   Jueves       |   Viernes \r\n	Aprendiendo a  |    Partido	   |  Clases    |	Evaluación de 	| Pláticas de\r\n	leer y esceibir| de baloncesto |  de arte   |  matemáticas    |  ecología\r\n\r\n		*Su maestro le dijo que hay un error en el orden. ¿Cuál es?\r\n		\r\n		\r\n		Lo que aprendí en Matemáticas en primer grado fue:\r\n', '', 0, NULL, NULL);

-- ----------------------------
-- Table structure for catmatirial
-- ----------------------------
DROP TABLE IF EXISTS `catmatirial`;
CREATE TABLE `catmatirial`  (
  `id_matirial` bigint UNSIGNED NOT NULL,
  `matirials` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catmatirial
-- ----------------------------
INSERT INTO `catmatirial` VALUES (1, 'Trayecto 6. Más sobre las longuitudes', NULL, NULL);
INSERT INTO `catmatirial` VALUES (2, 'Trayecto 7. Figuras en cuerpos geometricos.', NULL, NULL);
INSERT INTO `catmatirial` VALUES (3, 'Trayecto 8. Más capacidad', NULL, NULL);
INSERT INTO `catmatirial` VALUES (4, 'Trayecto 9. Cooperativa de manteles', NULL, NULL);
INSERT INTO `catmatirial` VALUES (5, 'Evaluación', NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_levels
-- ----------------------------
DROP TABLE IF EXISTS `user_levels`;
CREATE TABLE `user_levels`  (
  `id_level` bigint UNSIGNED NOT NULL,
  `user_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_levels
-- ----------------------------
INSERT INTO `user_levels` VALUES (1, 'Administrador', NULL, NULL);
INSERT INTO `user_levels` VALUES (2, 'Profesor', NULL, NULL);
INSERT INTO `user_levels` VALUES (3, 'Alumno', NULL, NULL);

-- ----------------------------
-- Table structure for userlevelpermissions
-- ----------------------------
DROP TABLE IF EXISTS `userlevelpermissions`;
CREATE TABLE `userlevelpermissions`  (
  `userlevelid` int NOT NULL,
  `tablename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `permission` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_security` bigint UNSIGNED NOT NULL,
  `user_level` int NOT NULL,
  `complete_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_secundary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Nicholas Pérez', 'NicoAdmin', '1234', NULL, 'npcastillo73@gmail.com', NULL, 'correo@correo.com', '5513595890', NULL, NULL);
INSERT INTO `users` VALUES (2, 2, 'Ivan Martinez', 'IvanMtz', '1234', NULL, 'ivanmtz@gmail.com', NULL, '', '', NULL, NULL);
INSERT INTO `users` VALUES (3, 3, 'Nadia Paniagua', 'Nadia', '1234', NULL, 'nadiapaniagua@gmail.com', NULL, '', '', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
