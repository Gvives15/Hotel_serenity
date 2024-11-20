-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 22:21:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel.hs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'administradores'),
(2, 'empleados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80),
(81, 2, 25),
(82, 2, 26),
(83, 2, 27),
(84, 2, 28),
(85, 2, 29),
(86, 2, 30),
(87, 2, 31),
(88, 2, 32),
(89, 2, 33),
(90, 2, 34),
(91, 2, 35),
(92, 2, 36),
(93, 2, 37),
(94, 2, 38),
(95, 2, 39),
(96, 2, 40),
(97, 2, 41),
(98, 2, 42),
(99, 2, 43),
(100, 2, 44),
(101, 2, 45),
(102, 2, 46),
(103, 2, 47),
(104, 2, 48),
(105, 2, 49),
(106, 2, 50),
(107, 2, 51),
(108, 2, 52),
(109, 2, 53),
(110, 2, 54),
(111, 2, 55),
(112, 2, 56),
(113, 2, 57),
(114, 2, 58),
(115, 2, 59),
(116, 2, 60),
(117, 2, 61),
(118, 2, 62),
(119, 2, 63),
(120, 2, 64),
(121, 2, 65),
(122, 2, 66),
(123, 2, 67),
(124, 2, 68),
(125, 2, 73),
(126, 2, 74),
(127, 2, 75),
(128, 2, 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add habitacion', 7, 'add_habitacion'),
(26, 'Can change habitacion', 7, 'change_habitacion'),
(27, 'Can delete habitacion', 7, 'delete_habitacion'),
(28, 'Can view habitacion', 7, 'view_habitacion'),
(29, 'Can add reserva', 8, 'add_reserva'),
(30, 'Can change reserva', 8, 'change_reserva'),
(31, 'Can delete reserva', 8, 'delete_reserva'),
(32, 'Can view reserva', 8, 'view_reserva'),
(33, 'Can add huesped', 9, 'add_huesped'),
(34, 'Can change huesped', 9, 'change_huesped'),
(35, 'Can delete huesped', 9, 'delete_huesped'),
(36, 'Can view huesped', 9, 'view_huesped'),
(37, 'Can add carrito', 10, 'add_carrito'),
(38, 'Can change carrito', 10, 'change_carrito'),
(39, 'Can delete carrito', 10, 'delete_carrito'),
(40, 'Can view carrito', 10, 'view_carrito'),
(41, 'Can add pabellones', 11, 'add_pabellones'),
(42, 'Can change pabellones', 11, 'change_pabellones'),
(43, 'Can delete pabellones', 11, 'delete_pabellones'),
(44, 'Can view pabellones', 11, 'view_pabellones'),
(45, 'Can add combo', 12, 'add_combo'),
(46, 'Can change combo', 12, 'change_combo'),
(47, 'Can delete combo', 12, 'delete_combo'),
(48, 'Can view combo', 12, 'view_combo'),
(49, 'Can add servicio adicional', 13, 'add_servicioadicional'),
(50, 'Can change servicio adicional', 13, 'change_servicioadicional'),
(51, 'Can delete servicio adicional', 13, 'delete_servicioadicional'),
(52, 'Can view servicio adicional', 13, 'view_servicioadicional'),
(53, 'Can add paquete', 14, 'add_paquete'),
(54, 'Can change paquete', 14, 'change_paquete'),
(55, 'Can delete paquete', 14, 'delete_paquete'),
(56, 'Can view paquete', 14, 'view_paquete'),
(57, 'Can add producto', 15, 'add_producto'),
(58, 'Can change producto', 15, 'change_producto'),
(59, 'Can delete producto', 15, 'delete_producto'),
(60, 'Can view producto', 15, 'view_producto'),
(61, 'Can add movimiento caja', 16, 'add_movimientocaja'),
(62, 'Can change movimiento caja', 16, 'change_movimientocaja'),
(63, 'Can delete movimiento caja', 16, 'delete_movimientocaja'),
(64, 'Can view movimiento caja', 16, 'view_movimientocaja'),
(65, 'Can add caja', 17, 'add_caja'),
(66, 'Can change caja', 17, 'change_caja'),
(67, 'Can delete caja', 17, 'delete_caja'),
(68, 'Can view caja', 17, 'view_caja'),
(69, 'Can add personal hotel', 18, 'add_personalhotel'),
(70, 'Can change personal hotel', 18, 'change_personalhotel'),
(71, 'Can delete personal hotel', 18, 'delete_personalhotel'),
(72, 'Can view personal hotel', 18, 'view_personalhotel'),
(73, 'Can add servicio', 19, 'add_servicio'),
(74, 'Can change servicio', 19, 'change_servicio'),
(75, 'Can delete servicio', 19, 'delete_servicio'),
(76, 'Can view servicio', 19, 'view_servicio'),
(77, 'Can add empleado', 20, 'add_empleado'),
(78, 'Can change empleado', 20, 'change_empleado'),
(79, 'Can delete empleado', 20, 'delete_empleado'),
(80, 'Can view empleado', 20, 'view_empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$GjhBEq4BC3hoe3t7TUwEvl$A1alPfLBcKR92fvtqAH233NsAA7XYrTLJBpW0FV3NWE=', '2024-09-17 20:18:25.604210', 1, 'german', 'German', 'vives', 'germanvives15@gmail.com', 1, 1, '2024-09-14 19:45:39.000000'),
(2, 'pbkdf2_sha256$720000$R79T2Qyz77yFxJac5eWocI$RosSB8eqUw2T8uLHeKh5oGfljeBn13MnuyI6NnG8vro=', '2024-09-17 06:54:04.255610', 1, 'juan', '', '', 'juan1@gmail.com', 1, 1, '2024-09-15 07:41:08.000000'),
(3, 'pbkdf2_sha256$720000$M4jYcOfsZTNl98CmbHJgBh$aCNY2PWk4VjNiIWkC5Qpvv0KWjo1TFIhYt5rNNn0sQU=', '2024-09-15 08:52:17.171382', 1, 'pochi', '', '', 'andre@gmail.com', 1, 1, '2024-09-15 07:48:46.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-14 19:47:11.829949', '1', 'Habitacion object (1)', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 7, 1),
(2, '2024-09-15 08:19:37.760209', '1', 'administradores', 1, '[{\"added\": {}}]', 3, 1),
(3, '2024-09-15 08:26:21.755410', '1', 'administradores', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(4, '2024-09-15 08:28:45.974851', '2', 'empleados', 1, '[{\"added\": {}}]', 3, 1),
(5, '2024-09-15 08:28:57.101423', '2', 'empleados', 2, '[]', 3, 1),
(6, '2024-09-15 08:31:02.778286', '1', 'german', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(7, '2024-09-15 08:31:47.988097', '1', 'german', 2, '[{\"changed\": {\"fields\": [\"Last name\", \"Groups\", \"User permissions\"]}}]', 4, 1),
(8, '2024-09-15 08:32:04.047603', '2', 'juan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(9, '2024-09-15 08:32:16.487349', '3', 'pochi', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(17, 'myadmin', 'caja'),
(20, 'myadmin', 'empleado'),
(16, 'myadmin', 'movimientocaja'),
(18, 'myadmin', 'personalhotel'),
(15, 'myadmin', 'producto'),
(19, 'myadmin', 'servicio'),
(10, 'myapp', 'carrito'),
(12, 'myapp', 'combo'),
(7, 'myapp', 'habitacion'),
(9, 'myapp', 'huesped'),
(11, 'myapp', 'pabellones'),
(14, 'myapp', 'paquete'),
(8, 'myapp', 'reserva'),
(13, 'myapp', 'servicioadicional'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-11 05:10:23.455734'),
(2, 'auth', '0001_initial', '2024-09-11 05:10:24.456517'),
(3, 'admin', '0001_initial', '2024-09-11 05:10:24.596644'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-11 05:10:24.615642'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-11 05:10:24.636641'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-11 05:10:24.787627'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-11 05:10:24.875217'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-11 05:10:24.897217'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-11 05:10:24.916212'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-11 05:10:25.006792'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-11 05:10:25.008790'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-11 05:10:25.020789'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-11 05:10:25.041519'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-11 05:10:25.066516'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-11 05:10:25.095513'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-11 05:10:25.117513'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-11 05:10:25.146510'),
(18, 'myapp', '0001_initial', '2024-09-11 05:10:25.176507'),
(19, 'myapp', '0002_remove_habitacion_capacidad_adultos_and_more', '2024-09-11 05:10:25.336867'),
(20, 'myapp', '0003_alter_habitacion_disponibilidad_reserva', '2024-09-11 05:10:25.429002'),
(21, 'myapp', '0004_huesped_remove_reserva_cantidad_habitaciones_and_more', '2024-09-11 05:10:26.425137'),
(22, 'myapp', '0005_carrito', '2024-09-11 05:10:26.511922'),
(23, 'myapp', '0006_pabellones', '2024-09-11 05:10:26.535920'),
(24, 'myapp', '0007_pabellones_capacidad_personas', '2024-09-11 05:10:26.565918'),
(25, 'myapp', '0008_carrito_pabellones', '2024-09-11 05:10:26.657658'),
(26, 'myapp', '0009_remove_carrito_pabellones_carrito_pabellon', '2024-09-11 05:10:27.124102'),
(27, 'myapp', '0010_alter_carrito_habitacion', '2024-09-11 05:10:27.571121'),
(28, 'myapp', '0011_combo_servicioadicional_reserva_pabellon_and_more', '2024-09-11 05:10:28.932147'),
(29, 'sessions', '0001_initial', '2024-09-11 05:10:28.991368'),
(30, 'myadmin', '0001_initial', '2024-09-11 05:44:09.613800'),
(31, 'myadmin', '0002_personalhotel_servicio_remove_caja_recepcionista_and_more', '2024-09-14 20:41:41.769367'),
(32, 'myadmin', '0003_caja_empleado_movimientocaja_delete_personalhotel', '2024-09-15 07:38:20.335260');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ulvwyrz8er9z8960tfrae47vyp62cja', 'e30:1spjoc:ITF13zQUIZrWP1Tm-c6iiHIF_W_5lYUB8eg028cgzG0', '2024-09-29 07:37:02.951318'),
('26acglql442jfif6z1zihi9ch75g1kcl', '.eJxVjEEOwiAQRe_C2pBhqAgu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWRh1-t0T5IXUDfKd6azq3usxT0puid9r1tbE8L7v7d1Col28NidwRKQW0xhthCQh5cEZgZMthEBwdM2YIBr21JrAAeQSAZE8yZPX-ANuhN4I:1spjwQ:UFqfzn3Za-_vdXRV30x8M2WOs-E4D2KUo7upsbigHtw', '2024-09-29 07:45:06.614258'),
('5ik7h4vtgxlf720mmyo837odshcx5q54', '.eJxVjEEOwiAQRe_C2pBhqAgu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWRh1-t0T5IXUDfKd6azq3usxT0puid9r1tbE8L7v7d1Col28NidwRKQW0xhthCQh5cEZgZMthEBwdM2YIBr21JrAAeQSAZE8yZPX-ANuhN4I:1sqeeX:AGUeazLVdV4VKTAFvW4Y8diftzQAo7ZlGhsrGaSpZh8', '2024-10-01 20:18:25.607188'),
('arz0mztoz1mwtcu8nsttcbdxsg9eyr5q', 'e30:1spjod:JUXx-fQfwVV9glS80Q5NCBhI4kEHrK77fb7LkDYY2Nc', '2024-09-29 07:37:03.277129'),
('bkd8w2d79wtnc99r541szn3gabh2154c', 'e30:1spjod:JUXx-fQfwVV9glS80Q5NCBhI4kEHrK77fb7LkDYY2Nc', '2024-09-29 07:37:03.042702'),
('dld39elvrs04swo2x5nzzyufe2ck4e15', 'e30:1spjoN:WDolOUNhlTyMqfHgEB2a6nUAp4J8JDcORO3udZs2dTc', '2024-09-29 07:36:47.386788'),
('dpnpciua7uq8gv6203wxnnb2yzya3rp0', 'e30:1spjoc:ITF13zQUIZrWP1Tm-c6iiHIF_W_5lYUB8eg028cgzG0', '2024-09-29 07:37:02.529149'),
('eyxh3b6y4pwgomduwy4cxciaytk9l2dd', 'e30:1spjod:JUXx-fQfwVV9glS80Q5NCBhI4kEHrK77fb7LkDYY2Nc', '2024-09-29 07:37:03.594995'),
('fo9aktikawtqop4v7yc1yaxy22smqot4', '.eJxVjEEOwiAQRe_C2pBhqAgu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWRh1-t0T5IXUDfKd6azq3usxT0puid9r1tbE8L7v7d1Col28NidwRKQW0xhthCQh5cEZgZMthEBwdM2YIBr21JrAAeQSAZE8yZPX-ANuhN4I:1spYiv:rnKuwfW7TFruZEUGlG5XSpZI4KV4oKR5jin7ngpIGFQ', '2024-09-28 19:46:25.497183'),
('gzwzptbnu813wncsjvcv6vpfafm89fwf', 'e30:1spjoe:j-1YDH0tPwFxLRga6NIkkox1R7ZfwVMXPidWVdOD_8Y', '2024-09-29 07:37:04.184042'),
('h540lusbxj9wh9dv3y1tah76rytlxljk', 'e30:1spjpP:Mx_X7JkOIpQppDD2TvIwRBwV7UJsNu4H_10bKtITvnI', '2024-09-29 07:37:51.725115'),
('j5c60g86poh578ji2svx7si5ngkwevql', 'e30:1spjoe:j-1YDH0tPwFxLRga6NIkkox1R7ZfwVMXPidWVdOD_8Y', '2024-09-29 07:37:04.081729'),
('kkmu3ztj6tf2p4hu2o3xkoymxqkpk1u5', 'e30:1spjoX:Umz3jt972BObpLjVNPd3CJ-QVOyjUpMAZhYInAXLxxU', '2024-09-29 07:36:57.518779'),
('nndslrc84qv5suf5yjn84r8bfw0kxp2b', 'e30:1spjoY:64gC1f2dAAToCBQSNVAyIlmqLD7V-dNhIz3uvfJGQ0c', '2024-09-29 07:36:58.622372'),
('q8uyi1pmcbwijn7bp8ix53prbdguk8kx', 'e30:1spjob:ViwIATYaUJvGrIW7Y-gQbA_NPd4jEggVfA5kXzZU834', '2024-09-29 07:37:01.723557'),
('re94o66n81it613eha4kl28no1wvhnwg', 'e30:1spjoL:tPsNgIJcLh_Hx7xWTzyNBH7M4Wo4tRywO-qdOQgYpNY', '2024-09-29 07:36:45.129228'),
('tkhzrt4x7lpo86pfipwec93ceqg8uyhk', 'e30:1spjob:ViwIATYaUJvGrIW7Y-gQbA_NPd4jEggVfA5kXzZU834', '2024-09-29 07:37:01.868582'),
('to4d6rwz2m2ib8jl5j1shlt9jbbv27nw', 'e30:1spjoQ:sZ9MLPRK32F5u2c9oaApmUGAn0ZaB4TIzz6oOU15EyQ', '2024-09-29 07:36:50.446253'),
('ukums7o76n66zku6styxnjff5w0z9joa', 'e30:1spjoX:Umz3jt972BObpLjVNPd3CJ-QVOyjUpMAZhYInAXLxxU', '2024-09-29 07:36:57.524740'),
('v3az1tckqg67y3u3x1hvsnagh83etbji', 'e30:1spjod:JUXx-fQfwVV9glS80Q5NCBhI4kEHrK77fb7LkDYY2Nc', '2024-09-29 07:37:03.553276');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myadmin_empleado`
--

CREATE TABLE `myadmin_empleado` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myadmin_servicio`
--

CREATE TABLE `myadmin_servicio` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_carrito`
--

CREATE TABLE `myapp_carrito` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `habitacion_id` bigint(20) DEFAULT NULL,
  `pabellon_id` bigint(20) DEFAULT NULL,
  `combo_id` bigint(20) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `myapp_carrito`
--

INSERT INTO `myapp_carrito` (`id`, `cantidad`, `habitacion_id`, `pabellon_id`, `combo_id`) VALUES
(2, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_combo`
--

CREATE TABLE `myapp_combo` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_habitacion`
--

CREATE TABLE `myapp_habitacion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `capacidad_personas` int(11) NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `imagen_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `myapp_habitacion`
--

INSERT INTO `myapp_habitacion` (`id`, `nombre`, `descripcion`, `precio`, `capacidad_personas`, `disponibilidad`, `imagen_url`) VALUES
(1, 'habitacion German', 'Habitación Deluxe con Vista al Mar\r\nDescripción: Disfruta de una experiencia de lujo en nuestra Habitación Deluxe con Vista al Mar. Esta amplia y elegante habitación está diseñada para ofrecerte el máximo confort y estilo, con una vista impresionante del océano que te hará sentir en el paraíso.\r\n\r\nCaracterísticas:\r\n\r\nTamaño: 35 m²\r\nCamas: 1 cama King size o 2 camas individuales (según preferencia)\r\nCapacidad: Hasta 2 personas (opcional cama adicional para un niño)\r\nDecoración: Elegante diseño contemporáneo con acabados en tonos cálidos y sofisticados.\r\nVista: Panorámica al mar desde una gran ventana y un balcón privado.\r\nComodidades:\r\n\r\nRopa de cama de alta calidad: Sábanas de algodón egipcio y almohadas de plumas para una noche de descanso reparador.\r\nBaño privado: Incluye una ducha a ras de suelo con cabezal de lluvia, bañera separada, artículos de tocador de lujo, albornoces suaves y zapatillas.\r\nEntretenimiento: Televisión de pantalla plana de 55 pulgadas con canales por cable y conexión a internet por fibra óptica.\r\nClimatización: Aire acondicionado y calefacción ajustable para tu comodidad.\r\nAcceso Wi-Fi: Conexión a internet de alta velocidad gratuita.\r\nMinibar: Equipado con una selección de bebidas y bocadillos de cortesía.\r\nCafé y té: Máquina de café Nespresso y una variedad de tés gourmet.\r\nEscritorio de trabajo: Espacio ideal para trabajar o planificar tu estancia.\r\nCaja fuerte: Seguridad adicional para tus pertenencias valiosas.\r\nServicios Incluidos:\r\n\r\nDesayuno: Desayuno buffet incluido con opciones frescas y locales servidas en nuestro restaurante.\r\nAcceso a la piscina y spa: Disfruta de acceso ilimitado a nuestras instalaciones de spa y piscina durante tu estancia.\r\nServicio de habitaciones: Disponible las 24 horas para tu conveniencia.\r\nEstacionamiento: Estacionamiento gratuito en el hotel.\r\nUbicación: Ubicada en el piso superior del hotel, nuestra Habitación Deluxe con Vista al Mar ofrece privacidad y tranquilidad, con acceso fácil a todas las áreas comunes del hotel. Perfecta para una escapada romántica, una celebración especial o simplemente para relajarte y disfrutar de la belleza del mar.', 2000.00, 4, 1, 'https://www.bing.com/images/search?view=detailV2&ccid=WEAMx0PA&id=7154A1AEAA94D5DD3485EA8B070990C1A43C8B3F&thid=OIP.WEAMx0PAzverzoc5ZM8N9AHaHa&mediaurl=https%3a%2f%2fcdn-icons-png.flaticon.com%2f512%2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_huesped`
--

CREATE TABLE `myapp_huesped` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_pabellones`
--

CREATE TABLE `myapp_pabellones` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `imagen_url` varchar(200) NOT NULL,
  `capacidad_personas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_paquete`
--

CREATE TABLE `myapp_paquete` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_paquete_habitaciones`
--

CREATE TABLE `myapp_paquete_habitaciones` (
  `id` bigint(20) NOT NULL,
  `paquete_id` bigint(20) NOT NULL,
  `habitacion_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_paquete_pabellones`
--

CREATE TABLE `myapp_paquete_pabellones` (
  `id` bigint(20) NOT NULL,
  `paquete_id` bigint(20) NOT NULL,
  `pabellones_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_paquete_servicios_adicionales`
--

CREATE TABLE `myapp_paquete_servicios_adicionales` (
  `id` bigint(20) NOT NULL,
  `paquete_id` bigint(20) NOT NULL,
  `servicioadicional_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_reserva`
--

CREATE TABLE `myapp_reserva` (
  `id` bigint(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `cantidad_personas` int(11) NOT NULL,
  `habitacion_id` bigint(20) DEFAULT NULL,
  `huesped_id` bigint(20) DEFAULT NULL,
  `pabellon_id` bigint(20) DEFAULT NULL,
  `paquete_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `myapp_servicioadicional`
--

CREATE TABLE `myapp_servicioadicional` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `myadmin_caja`
--
ALTER TABLE `myadmin_caja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_caja_trabajador_id_0217716d_fk_auth_user_id` (`trabajador_id`);

--
-- Indices de la tabla `myadmin_empleado`
--
ALTER TABLE `myadmin_empleado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `myadmin_movimientocaja`
--
ALTER TABLE `myadmin_movimientocaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myadmin_movimientocaja_caja_id_adb48f96_fk_myadmin_caja_id` (`caja_id`);

--
-- Indices de la tabla `myadmin_servicio`
--
ALTER TABLE `myadmin_servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_carrito`
--
ALTER TABLE `myapp_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_carrito_pabellon_id_fb729b8f_fk_myapp_pabellones_id` (`pabellon_id`),
  ADD KEY `myapp_carrito_habitacion_id_c0879ed2_fk_myapp_habitacion_id` (`habitacion_id`),
  ADD KEY `myapp_carrito_combo_id_4caacefc_fk_myapp_combo_id` (`combo_id`);

--
-- Indices de la tabla `myapp_combo`
--
ALTER TABLE `myapp_combo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_habitacion`
--
ALTER TABLE `myapp_habitacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_huesped`
--
ALTER TABLE `myapp_huesped`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_pabellones`
--
ALTER TABLE `myapp_pabellones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_paquete`
--
ALTER TABLE `myapp_paquete`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `myapp_paquete_habitaciones`
--
ALTER TABLE `myapp_paquete_habitaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_paquete_habitacion_paquete_id_habitacion_id_5ac0aee3_uniq` (`paquete_id`,`habitacion_id`),
  ADD KEY `myapp_paquete_habita_habitacion_id_14b0f680_fk_myapp_hab` (`habitacion_id`);

--
-- Indices de la tabla `myapp_paquete_pabellones`
--
ALTER TABLE `myapp_paquete_pabellones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_paquete_pabellones_paquete_id_pabellones_id_2d1d2833_uniq` (`paquete_id`,`pabellones_id`),
  ADD KEY `myapp_paquete_pabell_pabellones_id_5b75d18f_fk_myapp_pab` (`pabellones_id`);

--
-- Indices de la tabla `myapp_paquete_servicios_adicionales`
--
ALTER TABLE `myapp_paquete_servicios_adicionales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_paquete_servicios__paquete_id_servicioadici_b13c1269_uniq` (`paquete_id`,`servicioadicional_id`),
  ADD KEY `myapp_paquete_servic_servicioadicional_id_d3768b82_fk_myapp_ser` (`servicioadicional_id`);

--
-- Indices de la tabla `myapp_reserva`
--
ALTER TABLE `myapp_reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_reserva_huesped_id_4fa3d471_fk_myapp_huesped_id` (`huesped_id`),
  ADD KEY `myapp_reserva_pabellon_id_507773e8_fk_myapp_pabellones_id` (`pabellon_id`),
  ADD KEY `myapp_reserva_habitacion_id_f0515d1c_fk_myapp_habitacion_id` (`habitacion_id`),
  ADD KEY `myapp_reserva_paquete_id_7567e786_fk_myapp_paquete_id` (`paquete_id`);

--
-- Indices de la tabla `myapp_servicioadicional`
--
ALTER TABLE `myapp_servicioadicional`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `myadmin_caja`
--
ALTER TABLE `myadmin_caja`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myadmin_empleado`
--
ALTER TABLE `myadmin_empleado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myadmin_movimientocaja`
--
ALTER TABLE `myadmin_movimientocaja`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myadmin_servicio`
--
ALTER TABLE `myadmin_servicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_carrito`
--
ALTER TABLE `myapp_carrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_combo`
--
ALTER TABLE `myapp_combo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_habitacion`
--
ALTER TABLE `myapp_habitacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `myapp_huesped`
--
ALTER TABLE `myapp_huesped`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_pabellones`
--
ALTER TABLE `myapp_pabellones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_paquete`
--
ALTER TABLE `myapp_paquete`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_paquete_habitaciones`
--
ALTER TABLE `myapp_paquete_habitaciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_paquete_pabellones`
--
ALTER TABLE `myapp_paquete_pabellones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_paquete_servicios_adicionales`
--
ALTER TABLE `myapp_paquete_servicios_adicionales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_reserva`
--
ALTER TABLE `myapp_reserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `myapp_servicioadicional`
--
ALTER TABLE `myapp_servicioadicional`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `myadmin_caja`
--
ALTER TABLE `myadmin_caja`
  ADD CONSTRAINT `myadmin_caja_trabajador_id_0217716d_fk_auth_user_id` FOREIGN KEY (`trabajador_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `myadmin_empleado`
--
ALTER TABLE `myadmin_empleado`
  ADD CONSTRAINT `myadmin_empleado_user_id_ac180eb8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `myadmin_movimientocaja`
--
ALTER TABLE `myadmin_movimientocaja`
  ADD CONSTRAINT `myadmin_movimientocaja_caja_id_adb48f96_fk_myadmin_caja_id` FOREIGN KEY (`caja_id`) REFERENCES `myadmin_caja` (`id`);

--
-- Filtros para la tabla `myapp_carrito`
--
ALTER TABLE `myapp_carrito`
  ADD CONSTRAINT `myapp_carrito_combo_id_4caacefc_fk_myapp_combo_id` FOREIGN KEY (`combo_id`) REFERENCES `myapp_combo` (`id`),
  ADD CONSTRAINT `myapp_carrito_habitacion_id_c0879ed2_fk_myapp_habitacion_id` FOREIGN KEY (`habitacion_id`) REFERENCES `myapp_habitacion` (`id`),
  ADD CONSTRAINT `myapp_carrito_pabellon_id_fb729b8f_fk_myapp_pabellones_id` FOREIGN KEY (`pabellon_id`) REFERENCES `myapp_pabellones` (`id`);

--
-- Filtros para la tabla `myapp_paquete_habitaciones`
--
ALTER TABLE `myapp_paquete_habitaciones`
  ADD CONSTRAINT `myapp_paquete_habita_habitacion_id_14b0f680_fk_myapp_hab` FOREIGN KEY (`habitacion_id`) REFERENCES `myapp_habitacion` (`id`),
  ADD CONSTRAINT `myapp_paquete_habita_paquete_id_e43c52a3_fk_myapp_paq` FOREIGN KEY (`paquete_id`) REFERENCES `myapp_paquete` (`id`);

--
-- Filtros para la tabla `myapp_paquete_pabellones`
--
ALTER TABLE `myapp_paquete_pabellones`
  ADD CONSTRAINT `myapp_paquete_pabell_pabellones_id_5b75d18f_fk_myapp_pab` FOREIGN KEY (`pabellones_id`) REFERENCES `myapp_pabellones` (`id`),
  ADD CONSTRAINT `myapp_paquete_pabellones_paquete_id_50bd4354_fk_myapp_paquete_id` FOREIGN KEY (`paquete_id`) REFERENCES `myapp_paquete` (`id`);

--
-- Filtros para la tabla `myapp_paquete_servicios_adicionales`
--
ALTER TABLE `myapp_paquete_servicios_adicionales`
  ADD CONSTRAINT `myapp_paquete_servic_paquete_id_b365de68_fk_myapp_paq` FOREIGN KEY (`paquete_id`) REFERENCES `myapp_paquete` (`id`),
  ADD CONSTRAINT `myapp_paquete_servic_servicioadicional_id_d3768b82_fk_myapp_ser` FOREIGN KEY (`servicioadicional_id`) REFERENCES `myapp_servicioadicional` (`id`);

--
-- Filtros para la tabla `myapp_reserva`
--
ALTER TABLE `myapp_reserva`
  ADD CONSTRAINT `myapp_reserva_habitacion_id_f0515d1c_fk_myapp_habitacion_id` FOREIGN KEY (`habitacion_id`) REFERENCES `myapp_habitacion` (`id`),
  ADD CONSTRAINT `myapp_reserva_huesped_id_4fa3d471_fk_myapp_huesped_id` FOREIGN KEY (`huesped_id`) REFERENCES `myapp_huesped` (`id`),
  ADD CONSTRAINT `myapp_reserva_pabellon_id_507773e8_fk_myapp_pabellones_id` FOREIGN KEY (`pabellon_id`) REFERENCES `myapp_pabellones` (`id`),
  ADD CONSTRAINT `myapp_reserva_paquete_id_7567e786_fk_myapp_paquete_id` FOREIGN KEY (`paquete_id`) REFERENCES `myapp_paquete` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
