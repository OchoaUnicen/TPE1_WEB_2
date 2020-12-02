-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2020 a las 16:36:02
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(2, 'Impresoras'),
(4, 'computadoras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id_comentario` int(255) NOT NULL,
  `id_product` int(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `puntuacion` int(255) NOT NULL,
  `id_user` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id_comentario`, `id_product`, `comentario`, `puntuacion`, `id_user`) VALUES
(1, 8, 'que lindo mouse', 4, 2),
(2, 8, 'de los mejores mouses que haya probado, lo recomiendo totalmente.', 5, 2),
(3, 7, 'ME encanta este teclado', 4, 2);

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
(8, 'Mouse gamer logitech', 'hermoso mouse para jugar', 99999, 'https://axa.com.ar/webaxa/9791-medium_default/mouse-gaming-optico-logitech-g-pro-rgb.jpg', 1),
(10, '\r\nImpresora Multifunción Canon MG2510', 'Función de encendido automático.\r\nFunción de apagado automático.\r\nSoftware My Image Garden.', 1000, 'https://www.cdrmedios.com/imgs/productos/productos37_15355.jpg?3175', 2),
(17, 'impresora', 'nueva', 1000, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSomcIYCfgWSQkLGSeb-f-VJMO3uVAr_GS5MQ&usqp=CAU', 2),
(18, 'speakers', 'truchos', 24, 'https://images.crutchfieldonline.com/ImageHandler/trim/620/378/products/2019/25/701/g701S801PMW-F.jpg', 1),
(19, 'agregando', 'cosas', 4, 'https://images-na.ssl-images-amazon.com/images/I/41oI0bzIX8L._SX500_SY500_CR,0,0,500,500_.jpg', 1),
(23, 'fdfd', 'fdf', 1, 'https://cnnespanol.cnn.com/wp-content/uploads/2017/06/170628112455-jaguar-xe-sv-780x439.jpg?quality=90&strip=all', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `email`, `pass`, `img_url`, `bio`, `fecha_registro`, `is_admin`) VALUES
(1, 'maki', '$2y$10$T2DoFBVoKZLX7e7AkZ9ZOuv32T0Qh5mNl5hSZY6ESYcSjLcW9W4xm', 'https://media.discordapp.net/attachments/575273032512438272/783289158369280010/no_definido.jpg?width=415&height=475', '', '2020-09-24', 1),
(2, 'igna', '$2y$10$3ICKF508Ct4sSk.YSy3xwuW6bos7Q99C2gTTxgTV2ldDwXcqCNmbe', 'https://cdn.discordapp.com/attachments/575273032512438272/783289175013064734/perfil.jpg', '', '2020-09-24', 1),
(18, '1234', '$2y$10$2sxVjfoe03LZe8EfOC/QO.xiExqoaMACXasoZ9mRJj0uKcJ/SvwUK', 'https://media.discordapp.net/attachments/575273032512438272/783289158369280010/no_definido.jpg?width=415&height=475', '', '2020-12-01', 0),
(19, '12345', '$2y$10$3hNhoqtdFqQqdS4gkCnb3OU0IYx5/TxviTyqf76SURMtwK.lUwqL.', 'https://media.discordapp.net/attachments/575273032512438272/783289158369280010/no_definido.jpg?width=415&height=475', '', '2020-12-02', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `fk_comment_product` (`id_product`),
  ADD KEY `fk_comment_idUser` (`id_user`);

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
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comentario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
