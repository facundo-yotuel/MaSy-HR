-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2019 a las 13:12:18
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `masy-hr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl`
--

CREATE TABLE `acl` (
  `ai` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_actions`
--

CREATE TABLE `acl_actions` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `action_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `action_desc` varchar(100) NOT NULL COMMENT 'Human readable description',
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_categories`
--

CREATE TABLE `acl_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `category_desc` varchar(100) NOT NULL COMMENT 'Human readable description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_sessions`
--

CREATE TABLE `auth_sessions` (
  `id` varchar(128) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_sessions`
--

INSERT INTO `auth_sessions` (`id`, `user_id`, `login_time`, `modified_at`, `ip_address`, `user_agent`) VALUES
('aj5m4pnqang0t02hjuk6p4hgba3s25j9', 552105487, '2019-03-02 11:36:42', '2019-03-02 10:36:42', '192.168.0.10', 'Safari 604.1 on iOS'),
('kuoucoc78gnd7pc6r276ra1tgsmcgudh', 552105487, '2019-03-02 11:35:00', '2019-03-02 10:35:00', '192.168.0.10', 'Safari 605.1 on iOS'),
('nhccodihbp4peq7tas2u2hfv3s7epc58', 552105487, '2019-03-02 08:43:28', '2019-03-02 08:08:09', '192.168.0.11', 'Chrome 72.0.3626.119 on Windows 10'),
('k45rq9molbuau29rofi1e84s002b577l', 552105487, '2019-03-02 09:58:09', '2019-03-02 11:40:59', '192.168.0.11', 'Firefox 65.0 on Windows 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('k45rq9molbuau29rofi1e84s002b577l', '192.168.0.11', 1551527063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363835393b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('b2hvu3jii6a7cie6q6bgsdaff4qbna5t', '192.168.0.11', 1551526859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363835393b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('2dfufch6dg5ih4q1kg08lviaojmh3qrf', '192.168.0.11', 1551526439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363433393b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('vr8b8o1bq7ojqnmekdk3bokh9thls12t', '192.168.0.11', 1551526137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532363133373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('0107rnatcd7ij62tbfuuskrm176f4ap9', '192.168.0.11', 1551525812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353831323b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('09pfukqe10ssh4blebbike2b1ch1t84q', '192.168.0.11', 1551525383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353338333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('o5443qed7hgcsik013b56ii38d4a0bp2', '192.168.0.11', 1551525037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353033373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('2172km20fk2p33vp3nkdcqbta2t16url', '192.168.0.11', 1551523936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532333933363b),
('8tblo30uedi9ahkrk8cc1hiiub47evk8', '192.168.0.11', 1551523936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532333933363b),
('v22bdktef9polq0rpkdl2m0dkhaulqma', '192.168.0.11', 1551524513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532343531333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('qsch8cpb0g5413l8rc6uoulbgkgta59g', '192.168.0.11', 1551523813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532333831333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('aj5m4pnqang0t02hjuk6p4hgba3s25j9', '192.168.0.10', 1551523002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532333030323b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322031313a33363a3432223b7d223b),
('mnp7blb9gj01u8d270m98o087lhplu8m', '192.168.0.10', 1551523002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532333030323b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322031313a33363a3432223b7d223b),
('kuoucoc78gnd7pc6r276ra1tgsmcgudh', '192.168.0.10', 1551522922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532323930303b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322031313a33353a3030223b7d223b),
('27eqcl69r8knbineb1tuot6vtbai7jd8', '192.168.0.10', 1551522900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532323930303b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322031313a33353a3030223b7d223b),
('ij7b9g56a88rcm21eo7r6huec5s0aqmm', '192.168.0.11', 1551523245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532333234353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('3ab53t6vvkc78vmddt1j7og8h4mq7r8e', '192.168.0.11', 1551522610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532323631303b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('bllik23pfsjtbodtrvbjp5eo46tka0pm', '192.168.0.11', 1551522243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532323234333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('16fn7ejpl2o5km5vf37bp7ps4sng7f0m', '192.168.0.11', 1551521913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532313931333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('et4gnatpkerdh4m4tglb2d61fmnjc513', '192.168.0.11', 1551521554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532313535343b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('c7pi53sh2toqvvl466dh9ef4ga54ebah', '192.168.0.11', 1551521197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532313139373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('7gi586l787u2ph0eav890drqjv6n7ujs', '192.168.0.11', 1551520831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532303833313b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('ftpsd8va90pig0hkfgl5tdmh08k8gh4q', '192.168.0.11', 1551520378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532303337383b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('fh37ovf75ti3188dha50v04sr2r7pb0h', '192.168.0.11', 1551520077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532303037373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('1gnk756csrd17odg9d0stplhjugrjb5h', '192.168.0.11', 1551519688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531393638383b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('llvu0o06h1kdpf9dg6467tht3vqlrnds', '192.168.0.11', 1551519287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531393238373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('9s1g5s5k6c1ce2jlq0247d5bsl3gp58r', '192.168.0.11', 1551518975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531383937353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('fc5pujvq267db87jb1v1l6fk63ec5eeh', '192.168.0.11', 1551518640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531383634303b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('md13ejhiuhph855u619nr6nuev1ae1s4', '192.168.0.11', 1551517089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531373038393b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030393a35383a3039223b7d223b),
('66iftls695le5386h1ugc5g76q6lj349', '192.168.0.10', 1551522884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532323838343b),
('nh82kqmtc34pscl1cqe2ph4ir8qrhhfm', '192.168.0.11', 1551517083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531373038333b),
('71930glfcusm2kt382un2m2r6prua4tc', '192.168.0.11', 1551516551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531363535313b),
('6g75pdmhp8tc7psqiags3mon21amgcas', '::1', 1551516338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531363231343b),
('tcdca4rgo4a4kvg4nv09htglsopfatbv', '192.168.0.11', 1551516214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531363231343b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('m0em2bprqkaqm50dq1ajj3rualil0jms', '192.168.0.11', 1551515845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531353834353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('efh41omajca98omkgum4q5c93aaa5khe', '192.168.0.11', 1551515540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531353534303b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('802uqqljmvr5uq0lndekq6dfrrgrj70a', '192.168.0.11', 1551515226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531353232363b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('vvr2h9pdo7ilve06b21drtm6bmps8l3t', '192.168.0.11', 1551514263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343236333b),
('rqir67cpapqks5ltv0l0oe7f22jtokkq', '192.168.0.11', 1551514925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343932353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('umrp21it0i41i1art0jck2f8a6062fj9', '192.168.0.11', 1551514263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343236333b),
('t2apujnduusc5pknl7p6fb9sekdpu7l1', '::1', 1551516214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531363231343b),
('q9nujgu164au0crterhjdve880gra6d3', '192.168.0.11', 1551514462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343436323b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('nhccodihbp4peq7tas2u2hfv3s7epc58', '192.168.0.11', 1551514129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343038393b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a34333a3238223b7d223b),
('n5ec0uln3a0vd584kelbvq0rrdqmu6t9', '192.168.0.11', 1551506678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530363637383b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('d25gbdkhhsdilfmf7t7s52ienvp0hb34', '192.168.0.11', 1551507082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530373038323b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('7p3vpr82tqno8kpseopr2i0966eqva9j', '192.168.0.11', 1551507774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530373737343b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('8kgtsdu4n7e8tcc3a003vfdt83bdouv9', '192.168.0.11', 1551508121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530383132313b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('p6v0jsndq6u5ni5ccmair83bodj3pfh0', '192.168.0.11', 1551508491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530383439313b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('67oe4cntk7ik5oott56qc54g2s2u2dt0', '192.168.0.11', 1551508863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530383836333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('d7g89729hdnfgochqtn551pudfu7jca5', '192.168.0.11', 1551509195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530393139353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('b73j0dg5henudk5pr571ujrjsr8shs7l', '192.168.0.11', 1551509505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530393530353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('2hs818tipjakt7ejkdkbphqk4jstaunq', '192.168.0.11', 1551509807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313530393830373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('mfff0tp8ca78cco0njbfo9n5otp9a8ln', '192.168.0.11', 1551510187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531303138373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('kacmk70k29sdjoriv3galopqktqlmued', '192.168.0.11', 1551510515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531303531353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('mbu5a2cdg556cd397p0t1ha278kjf8c7', '192.168.0.11', 1551510866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531303836363b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('9hpfdrttlgcuih5b88ihe7a9vum8c17a', '192.168.0.11', 1551511310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531313331303b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('s7n9s8m9ngkqhmp2h2glpc26s7rlaqun', '192.168.0.11', 1551511673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531313637333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('if8c68kb4daas6ln6b5amo87hgq4v9j2', '192.168.0.11', 1551511988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531313938383b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030363a32373a3033223b7d223b),
('iqp6nm9hjbf9doh303jrp1tg9nc5mtui', '192.168.0.11', 1551512013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323031333b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('gp06i4l89c3rifo7k4s259puel7sl14m', '192.168.0.11', 1551512326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323332363b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('7uundsp2rga0vtea79f9p19phcu2rh7u', '192.168.0.11', 1551512163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323136333b),
('m68c3tkoj16o0cq4bf7g97hk8vdk90nc', '192.168.0.11', 1551512163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323136333b),
('70kevg5eet62juk86922u97lpjosi3k1', '192.168.0.11', 1551514161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343136313b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a33333a3333223b7d223b),
('g6j1rgnj16797a9ht91itb4q4iqpt0bb', '::1', 1551512591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323539313b),
('v13b868sah67i6rgrqhv4tlov97187m7', '192.168.0.11', 1551512608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323630383b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a34333a3238223b7d223b),
('s8v6ojgidv81h4ik024221vls9i7tdbi', '192.168.0.11', 1551512925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531323932353b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a34333a3238223b7d223b),
('vsj4t7i2c8a2i81q9gaeckmosnubtlu2', '192.168.0.11', 1551513247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531333234373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a34333a3238223b7d223b),
('qgivettv4l35iacq8hnnstoha51tl61p', '192.168.0.11', 1551513557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531333535373b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a34333a3238223b7d223b),
('tsgendrlv33ucnavis0tgnhm01uraq51', '192.168.0.11', 1551514089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313531343038393b617574685f6964656e746966696572737c733a38313a22613a323a7b733a373a22757365725f6964223b733a393a22353532313035343837223b733a31303a226c6f67696e5f74696d65223b733a31393a22323031392d30332d30322030383a34333a3238223b7d223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denied_access`
--

CREATE TABLE `denied_access` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `reason_code` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(10) NOT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `apaterno` varchar(500) DEFAULT NULL,
  `amaterno` varchar(500) DEFAULT NULL,
  `imss` int(20) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `correocorpo` varchar(500) DEFAULT NULL,
  `correoalter` varchar(500) DEFAULT NULL,
  `ine` int(20) DEFAULT NULL,
  `curp` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `estado` varchar(500) DEFAULT NULL,
  `colonia` varchar(500) DEFAULT NULL,
  `cp` int(10) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `fechaingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`employee_id`, `nombre`, `apaterno`, `amaterno`, `imss`, `fechanacimiento`, `correocorpo`, `correoalter`, `ine`, `curp`, `telefono`, `estado`, `colonia`, `cp`, `direccion`, `sexo`, `fechaingreso`) VALUES
(1, 'Facundo', 'Armando', 'Moreno', 9991054, '2017-10-03', 'asdhgasjhdgas@jasdoasod.com', 'asdhgasjhdgas@jasdoasod.com', 1234568, 'MOBF88045646', '5539415231', 'Mexico', 'Mexico', 56516, 'sdasdas', 'H', '2019-03-01'),
(2, 'asdasd', 'asdasd', 'asdasd', NULL, NULL, NULL, NULL, NULL, 'asdsadas', NULL, '', NULL, NULL, NULL, NULL, NULL),
(3, 'Juan', 'Canedo', 'zxcxzc', NULL, NULL, NULL, NULL, NULL, 'asdasdsasd', NULL, '', NULL, NULL, NULL, NULL, NULL),
(6, 'Juan', 'asdasd', 'zxcxzc', NULL, NULL, NULL, NULL, NULL, 'asdasd', NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ips_on_hold`
--

CREATE TABLE `ips_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_errors`
--

CREATE TABLE `login_errors` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_errors`
--

INSERT INTO `login_errors` (`ai`, `username_or_email`, `ip_address`, `time`) VALUES
(41, 'admin', '192.168.0.10', '2019-03-02 11:34:52'),
(40, 'admin', '192.168.0.10', '2019-03-02 11:34:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `username_or_email_on_hold`
--

CREATE TABLE `username_or_email_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(12) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `auth_level` tinyint(3) UNSIGNED NOT NULL,
  `banned` enum('0','1') NOT NULL DEFAULT '0',
  `passwd` varchar(60) NOT NULL,
  `passwd_recovery_code` varchar(60) DEFAULT NULL,
  `passwd_recovery_date` datetime DEFAULT NULL,
  `passwd_modified_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `auth_level`, `banned`, `passwd`, `passwd_recovery_code`, `passwd_recovery_date`, `passwd_modified_at`, `last_login`, `created_at`, `modified_at`) VALUES
(552105487, 'admin', 'admin@masy.hr.com', 9, '0', '$2y$11$fk/xjH2n/E9rET.SBhpK4OJQZUnzH3QpbY0o3teFcVkNCYGf2jqM6', '$2y$11$W70Q6AtArJNXgyMJ64QV8eArH/UeI1gg3HJVc0rVMzporWj.vixxC', '2019-02-22 04:57:53', NULL, '2019-03-02 11:36:42', '2019-02-20 04:54:06', '2019-03-02 10:36:42'),
(2482454388, 'user', 'user@masy.hr.com', 1, '0', '$2y$11$U/LD/nmgYPzt02R0xde8zugLDCBqwI6XEGtMQc5gqvpTYuOg1Kgii', NULL, NULL, '2019-02-20 21:02:58', '2019-03-01 04:16:31', '2019-02-20 06:48:59', '2019-03-01 03:16:31');

--
-- Disparadores `users`
--
DELIMITER $$
CREATE TRIGGER `ca_passwd_trigger` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    IF ((NEW.passwd <=> OLD.passwd) = 0) THEN
        SET NEW.passwd_modified_at = NOW();
    END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`ai`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `acl_categories`
--
ALTER TABLE `acl_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_code` (`category_code`),
  ADD UNIQUE KEY `category_desc` (`category_desc`);

--
-- Indices de la tabla `auth_sessions`
--
ALTER TABLE `auth_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `denied_access`
--
ALTER TABLE `denied_access`
  ADD PRIMARY KEY (`ai`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indices de la tabla `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indices de la tabla `login_errors`
--
ALTER TABLE `login_errors`
  ADD PRIMARY KEY (`ai`);

--
-- Indices de la tabla `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acl`
--
ALTER TABLE `acl`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `acl_actions`
--
ALTER TABLE `acl_actions`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `acl_categories`
--
ALTER TABLE `acl_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `denied_access`
--
ALTER TABLE `denied_access`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `login_errors`
--
ALTER TABLE `login_errors`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acl`
--
ALTER TABLE `acl`
  ADD CONSTRAINT `acl_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `acl_actions` (`action_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `acl_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD CONSTRAINT `acl_actions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `acl_categories` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;