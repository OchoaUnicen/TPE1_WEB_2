-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2020 a las 13:13:10
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_products`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `nombre`) VALUES
(1, 'perifericos'),
(2, 'impresoras'),
(4, 'computadoras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_product`, `name`, `description`, `price`, `image_url`, `id_category`) VALUES
(4, 'reloj', 'grande', -10, 'https://www.cdrmedios.com/imgs/productos/productos37_23368.jpg?1928', 2),
(5, 'gabinote', 'Compatible con\r\nSocket Intel\r\n  LGA20XX/LGA1366/LGA115X \r\n  High End Desktop i7', 1000, 'https://www.cdrmedios.com/imgs/productos/productos37_15424.jpg?7789', 4),
(7, '\r\nTeclado Gamer Genius retroiluminado en español', 'Brillante luz de fondo (backlit) en varios colores.\r\nTeclado en español (Ñ)\r\nLas teclas del teclado en español para gaming Scorpion K215 tienen la mitad de altura que un teclado regular y duran hasta 2 millones de pulsaciones.', 1000, 'https://www.cdrmedios.com/imgs/productos/productos37_15086.jpg?30', 1),
(8, 'Notebook Asus Dualcore ', 'Color gris (Star Grey).\r\nWindows 10 Home 64bit en Español pre instalado.\r\nProcesador Intel Celeron Dualcore N4000 1.1Ghz (hasta 2.6GHz con turbo boost).', 1000, 'https://www.cdrmedios.com/imgs/productos/productos37_23346.jpg?7156', 4),
(10, '\r\nImpresora Multifunción Canon MG2510', 'Función de encendido automático.\r\nFunción de apagado automático.\r\nSoftware My Image Garden.', 1000, 'https://www.cdrmedios.com/imgs/productos/productos37_15355.jpg?3175', 2),
(17, 'impresora', 'nueva', 1000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSomcIYCfgWSQkLGSeb-f-VJMO3uVAr_GS5MQ&usqp=CAU', 2),
(18, 'speakers', 'truchos', 24, 'https://images.crutchfieldonline.com/ImageHandler/trim/620/378/products/2019/25/701/g701S801PMW-F.jpg', 1),
(19, 'agregando', 'cosas', 4, 'https://images-na.ssl-images-amazon.com/images/I/41oI0bzIX8L._SX500_SY500_CR,0,0,500,500_.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `email`, `pass`) VALUES
(1, 'maki', '$2y$10$T2DoFBVoKZLX7e7AkZ9ZOuv32T0Qh5mNl5hSZY6ESYcSjLcW9W4xm'),
(2, 'igna', '$2y$10$3ICKF508Ct4sSk.YSy3xwuW6bos7Q99C2gTTxgTV2ldDwXcqCNmbe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
