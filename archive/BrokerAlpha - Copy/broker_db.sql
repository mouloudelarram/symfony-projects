-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 24 avr. 2022 à 17:41
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `broker_db`
--
CREATE DATABASE IF NOT EXISTS `broker_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `broker_db`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `title`, `description`, `image`) VALUES
(1, 'District 9', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923__480.jpg'),
(2, 'Circle of Deception, A', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070__340.jpg'),
(3, 'Magnolia', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187__340.jpg'),
(4, 'Bigfoot', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041__340.jpg'),
(5, 'The Derby Stallion', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'http://dummyimage.com/249x100.png/dddddd/000000'),
(6, 'Gypsy Moths, The', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'http://dummyimage.com/241x100.png/dddddd/000000'),
(7, 'Night and Day (Bam gua nat)', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'http://dummyimage.com/112x100.png/dddddd/000000'),
(8, 'Eros (Men and Women) (Noite Vazia)', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'http://dummyimage.com/116x100.png/cc0000/ffffff'),
(9, 'Ricky Rapper and the Bicycle Thief (Risto Räppääjä ja polkupyörävaras)', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'http://dummyimage.com/122x100.png/5fa2dd/ffffff'),
(10, 'Birds, the Bees and the Italians, The (Signore & signori)', 'Shop online for all your home improvement needs: appliances, bathroom decorating ideas, kitchen remodeling, patio furniture, power tools', 'https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070__340.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `firstname`, `lastname`, `email`, `phone`, `role`, `username`, `password`, `profile`, `created_at`) VALUES
(1, 'Bryn', 'Storek', 'bstorek0@yandex.ru', '735-366-4767', 'client', 'bstorek0', 'pzVQFp5OVrA', 'http://dummyimage.com/153x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(2, 'Issie', 'Gammett', 'igammett1@prlog.org', '604-798-1056', 'client', 'igammett1', 'QN4CLrS', 'http://dummyimage.com/190x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(3, 'Jasen', 'Matevosian', 'jmatevosian2@usgs.gov', '607-765-7982', 'client', 'jmatevosian2', '7tkYLt', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(4, 'Corissa', 'de Castelain', 'cdecastelain3@fastcompany.com', '756-849-9386', 'client', 'cdecastelain3', '0axvffE', 'http://dummyimage.com/248x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(5, 'Keeley', 'Woolvin', 'kwoolvin4@disqus.com', '222-950-1470', 'client', 'kwoolvin4', 'cEzQpeh', 'http://dummyimage.com/173x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(6, 'Reynolds', 'Demcak', 'rdemcak5@rambler.ru', '127-407-3074', 'client', 'rdemcak5', '0uAEiYX', 'http://dummyimage.com/229x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(7, 'Georgette', 'Hocking', 'ghocking6@soup.io', '505-316-6021', 'client', 'ghocking6', 'Cw8LUO3Yt', 'http://dummyimage.com/153x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(8, 'Uri', 'Daggett', 'udaggett7@jimdo.com', '499-852-5365', 'client', 'udaggett7', 'bDXnelBa8wN', 'http://dummyimage.com/129x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(9, 'Viviene', 'Ellicock', 'vellicock8@pbs.org', '949-174-1871', 'client', 'vellicock8', 'gALLKkq', 'http://dummyimage.com/136x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(10, 'Zondra', 'Marples', 'zmarples9@bing.com', '789-761-0531', 'client', 'zmarples9', 'Ns5OdwX', 'http://dummyimage.com/111x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(11, 'Ransell', 'Wewell', 'rwewella@g.co', '428-255-2621', 'client', 'rwewella', 'EEpIxKY', 'http://dummyimage.com/234x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(12, 'Binnie', 'Checchetelli', 'bchecchetellib@jugem.jp', '373-318-4149', 'client', 'bchecchetellib', 'BiBjp7Ln', 'http://dummyimage.com/101x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(13, 'Mirabella', 'Bubbings', 'mbubbingsc@hibu.com', '253-827-4572', 'client', 'mbubbingsc', 'HQjDS3WIG', 'http://dummyimage.com/231x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(14, 'Rowney', 'Beartup', 'rbeartupd@netvibes.com', '524-111-6328', 'client', 'rbeartupd', 'z6iQgaV6qED', 'http://dummyimage.com/249x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(15, 'Guthrie', 'Kacheller', 'gkachellere@fotki.com', '662-504-3593', 'client', 'gkachellere', 'mNBQnS', 'http://dummyimage.com/152x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(16, 'Ingamar', 'Bech', 'ibechf@amazon.co.uk', '656-726-4694', 'client', 'ibechf', 'AmX6ro', 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(17, 'Maressa', 'Foottit', 'mfoottitg@facebook.com', '684-131-4496', 'client', 'mfoottitg', 'VVIoRx05K', 'http://dummyimage.com/145x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(18, 'Efrem', 'Sansome', 'esansomeh@dagondesign.com', '862-197-0316', 'client', 'esansomeh', 'PGcIC4ToHQHd', 'http://dummyimage.com/145x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(19, 'Earlie', 'Duligal', 'eduligali@amazon.com', '328-509-2771', 'client', 'eduligali', 'Knh8O4U5blZ6', 'http://dummyimage.com/182x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(20, 'Annabal', 'Lanaway', 'alanawayj@usa.gov', '658-255-0314', 'client', 'alanawayj', 'rBgyuCvFv', 'https://cdn.pixabay.com/photo/2013/07/18/10/59/human-skeleton-163715__340.jpg', '2022-04-24 15:14:06'),
(21, 'Gannon', 'Eayres', 'geayresk@sciencedirect.com', '904-962-6892', 'client', 'geayresk', 'msijc8D4H', 'http://dummyimage.com/156x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(22, 'Nichols', 'Kenworth', 'nkenworthl@japanpost.jp', '412-501-4827', 'client', 'nkenworthl', 'b6orOd', 'http://dummyimage.com/220x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(23, 'Aileen', 'Dakers', 'adakersm@wordpress.com', '936-158-4447', 'client', 'adakersm', 'c0cpw8DClp2R', 'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg', '2022-04-24 15:14:06'),
(24, 'Emlyn', 'Basset', 'ebassetn@google.fr', '395-834-5925', 'client', 'ebassetn', 'L6ITLyPt', 'http://dummyimage.com/189x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(25, 'Wilhelmine', 'Ruddom', 'wruddomo@sun.com', '727-447-7724', 'client', 'wruddomo', 'uaHMPbX', 'http://dummyimage.com/239x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(26, 'Massimo', 'Wickardt', 'mwickardtp@msn.com', '172-895-6782', 'client', 'mwickardtp', '9Pt3PBL', 'http://dummyimage.com/212x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(27, 'Hanan', 'Tetla', 'htetlaq@sourceforge.net', '912-212-2101', 'client', 'htetlaq', 'D6NDqcsW3yTx', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(28, 'Herc', 'Pedgrift', 'hpedgriftr@spiegel.de', '797-240-0754', 'client', 'hpedgriftr', 'JtHO1V6', 'http://dummyimage.com/140x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(29, 'Margaretha', 'Brandham', 'mbrandhams@java.com', '805-965-5368', 'client', 'mbrandhams', 'Krgvrnsv', 'http://dummyimage.com/189x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(30, 'Corliss', 'Keeting', 'ckeetingt@columbia.edu', '991-889-2897', 'client', 'ckeetingt', 'iq27P9', 'http://dummyimage.com/172x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(31, 'Emmye', 'Girardot', 'egirardotu@usgs.gov', '184-611-1022', 'client', 'egirardotu', 'ZayNEn9Ip', 'http://dummyimage.com/101x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(32, 'Reinhold', 'Leppard', 'rleppardv@mediafire.com', '915-971-8924', 'client', 'rleppardv', 'lkiLGawaXw', 'http://dummyimage.com/212x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(33, 'Irwin', 'Dovey', 'idoveyw@latimes.com', '875-881-7414', 'client', 'idoveyw', 'LuB4gb', 'http://dummyimage.com/118x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(34, 'Faye', 'Mitchiner', 'fmitchinerx@vkontakte.ru', '898-258-3380', 'client', 'fmitchinerx', 'SE6YidRK9', 'http://dummyimage.com/123x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(35, 'Giulia', 'Minget', 'gmingety@wordpress.com', '286-354-0399', 'client', 'gmingety', '5iW68g1Gj15', 'http://dummyimage.com/195x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(36, 'Hendrik', 'Lazer', 'hlazerz@cnn.com', '194-462-3388', 'client', 'hlazerz', '3A8tgCPLyy', 'http://dummyimage.com/239x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(37, 'Sonnie', 'Clemmey', 'sclemmey10@smh.com.au', '563-781-4450', 'client', 'sclemmey10', 'kYzBoUq6N', 'http://dummyimage.com/193x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(38, 'Joni', 'Solland', 'jsolland11@marriott.com', '110-368-1413', 'client', 'jsolland11', '3VsK4jl', 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(39, 'Francine', 'Hawtrey', 'fhawtrey12@loc.gov', '180-625-3150', 'client', 'fhawtrey12', 'o8gxUXP', 'http://dummyimage.com/196x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(40, 'Cornall', 'Reedman', 'creedman13@posterous.com', '313-208-5509', 'client', 'creedman13', 'nqLfz5', 'http://dummyimage.com/129x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(41, 'Ari', 'Bowry', 'abowry14@barnesandnoble.com', '907-309-5653', 'client', 'abowry14', '0OS5LA8', 'https://cdn.pixabay.com/photo/2015/07/15/09/00/man-845847__340.jpg', '2022-04-24 15:14:00'),
(42, 'Tabb', 'Youles', 'tyoules15@netvibes.com', '115-351-6590', 'client', 'tyoules15', 'eiFFFp2qk', 'http://dummyimage.com/113x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(43, 'Leonore', 'Mouland', 'lmouland16@tmall.com', '313-581-0648', 'client', 'lmouland16', '1r6XdOO', 'http://dummyimage.com/211x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(44, 'Irving', 'Josifovic', 'ijosifovic17@fema.gov', '215-994-6494', 'client', 'ijosifovic17', 'Zd8ZWrw', 'http://dummyimage.com/127x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(45, 'Nicole', 'Veschambre', 'nveschambre18@gmpg.org', '259-981-3380', 'client', 'nveschambre18', '2OeI2Od4', 'http://dummyimage.com/228x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(46, 'Dukie', 'Conniam', 'dconniam19@mozilla.com', '954-562-2846', 'client', 'dconniam19', 'RzdXEJ9', 'http://dummyimage.com/111x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(47, 'Nelle', 'Emmerson', 'nemmerson1a@mlb.com', '890-169-0031', 'client', 'nemmerson1a', 'A8HREVic8Fjj', 'http://dummyimage.com/239x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(48, 'Kristofer', 'Dripps', 'kdripps1b@google.com.au', '803-748-6688', 'client', 'kdripps1b', 'wRVofSni90cD', 'http://dummyimage.com/102x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(49, 'Laurence', 'Ertel', 'lertel1c@fema.gov', '114-530-3595', 'client', 'lertel1c', 'HKmqUOp', 'http://dummyimage.com/200x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(50, 'Shayne', 'Headey', 'sheadey1d@google.de', '580-139-4963', 'tenant', 'sheadey1d', 'ubSLfIljh', 'http://dummyimage.com/143x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(51, 'Sadye', 'Lusk', 'slusk1e@nifty.com', '425-292-9664', 'tenant', 'slusk1e', 'uf5Nj0fqcdD', 'http://dummyimage.com/248x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(52, 'Elle', 'Munkley', 'emunkley1f@constantcontact.com', '411-631-0045', 'tenant', 'emunkley1f', 'qLos77l', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(53, 'Issy', 'Caves', 'icaves1g@netlog.com', '653-979-5769', 'tenant', 'icaves1g', 'VoWHwm9g6A', 'http://dummyimage.com/157x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(54, 'Ardelia', 'Ranyard', 'aranyard1h@joomla.org', '930-465-7179', 'tenant', 'aranyard1h', 'p4NNlfr', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(55, 'Link', 'Stritton', 'lstritton1i@storify.com', '310-906-3115', 'tenant', 'lstritton1i', '20B3zeu', 'http://dummyimage.com/194x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(56, 'Barnie', 'Torrijos', 'btorrijos1j@sohu.com', '210-763-9446', 'tenant', 'btorrijos1j', 'HXjWwJw', 'http://dummyimage.com/188x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(57, 'Audy', 'Gingles', 'agingles1k@indiegogo.com', '152-210-5708', 'tenant', 'agingles1k', 'H9LAUnGA', 'http://dummyimage.com/126x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(58, 'Urson', 'Andries', 'uandries1l@google.co.uk', '557-351-3879', 'tenant', 'uandries1l', 'h8kNjJ7XA7g', 'http://dummyimage.com/104x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(59, 'Winni', 'Tremberth', 'wtremberth1m@narod.ru', '338-646-1491', 'tenant', 'wtremberth1m', 'E97nTt', 'http://dummyimage.com/169x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(60, 'Levi', 'Toolan', 'ltoolan1n@cnbc.com', '293-322-9840', 'tenant', 'ltoolan1n', 'E89GjtXdAY4', 'http://dummyimage.com/208x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(61, 'Gale', 'Kirkam', 'gkirkam1o@arstechnica.com', '382-168-7110', 'tenant', 'gkirkam1o', '4AKRmTBnZ', 'http://dummyimage.com/169x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(62, 'Alfy', 'Drinkale', 'adrinkale1p@wordpress.org', '928-780-8288', 'tenant', 'adrinkale1p', '9OYrIU2jpVXk', 'https://cdn.pixabay.com/photo/2017/04/01/21/06/portrait-2194457__340.jpg', '2022-04-24 15:14:00'),
(63, 'Mayer', 'Duham', 'mduham1q@liveinternet.ru', '583-263-3395', 'tenant', 'mduham1q', 'smf4uc', 'http://dummyimage.com/168x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(64, 'Dorella', 'Gravie', 'dgravie1r@photobucket.com', '109-712-9121', 'tenant', 'dgravie1r', '5tqs5Y', 'http://dummyimage.com/204x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(65, 'Kendricks', 'Castagnone', 'kcastagnone1s@home.pl', '194-924-6615', 'tenant', 'kcastagnone1s', '8c0f6vOuks', 'http://dummyimage.com/192x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(66, 'Jolene', 'Murden', 'jmurden1t@nasa.gov', '131-356-0947', 'tenant', 'jmurden1t', '74KUrw', 'http://dummyimage.com/173x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(67, 'Gilda', 'Mariette', 'gmariette1u@nydailynews.com', '527-613-0285', 'tenant', 'gmariette1u', 'zEET2ZFjemn', 'http://dummyimage.com/156x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(68, 'Melony', 'Galliford', 'mgalliford1v@w3.org', '125-934-1944', 'tenant', 'mgalliford1v', '14gfltR9U', 'http://dummyimage.com/130x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(69, 'Thomasa', 'Keiling', 'tkeiling1w@odnoklassniki.ru', '453-577-7468', 'tenant', 'tkeiling1w', 'oYxOjHE4E', 'http://dummyimage.com/167x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(70, 'Marti', 'Palfreman', 'mpalfreman1x@time.com', '610-188-1462', 'tenant', 'mpalfreman1x', 'pgNpWW7NtK30', 'http://dummyimage.com/165x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(71, 'Yalonda', 'Drakeley', 'ydrakeley1y@blogspot.com', '571-203-1229', 'tenant', 'ydrakeley1y', '6DHgiYHZfaj', 'http://dummyimage.com/181x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(72, 'Cordey', 'Hitchens', 'chitchens1z@uiuc.edu', '360-953-3780', 'tenant', 'chitchens1z', 'wwn06812', 'http://dummyimage.com/207x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(73, 'Paten', 'Feldheim', 'pfeldheim20@yolasite.com', '519-359-3194', 'tenant', 'pfeldheim20', 'CbicKRpbO7i', 'http://dummyimage.com/117x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(74, 'Cele', 'Ferrarello', 'cferrarello21@walmart.com', '297-240-0553', 'tenant', 'cferrarello21', 'ilovJ0agr', 'http://dummyimage.com/149x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(75, 'Rafaello', 'Kemme', 'rkemme22@businessweek.com', '991-456-1672', 'tenant', 'rkemme22', '0CvCZY', 'http://dummyimage.com/158x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(76, 'Ulla', 'Goch', 'ugoch23@bloglovin.com', '139-161-8582', 'tenant', 'ugoch23', '20pk7Chmu4ff', 'http://dummyimage.com/204x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(77, 'Arabel', 'Proughten', 'aproughten24@amazonaws.com', '266-902-1350', 'tenant', 'aproughten24', 'kWpcgBe', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(78, 'Nonie', 'Aloshkin', 'naloshkin25@unicef.org', '144-236-8087', 'tenant', 'naloshkin25', 'Ljawqq', 'http://dummyimage.com/232x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(79, 'Denny', 'Colles', 'dcolles26@uiuc.edu', '306-667-8518', 'tenant', 'dcolles26', '2rU0IJFHDQd', 'http://dummyimage.com/234x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(80, 'Minnaminnie', 'Kures', 'mkures27@csmonitor.com', '134-253-5430', 'tenant', 'mkures27', 'MmVVUKg', 'http://dummyimage.com/148x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(81, 'Elset', 'Winslow', 'ewinslow28@bloglines.com', '762-331-4848', 'tenant', 'ewinslow28', '4cielxP4s', 'http://dummyimage.com/232x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(82, 'Pavel', 'Lamberto', 'plamberto29@comsenz.com', '715-410-5758', 'tenant', 'plamberto29', 'e1swiAvy', 'http://dummyimage.com/159x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(83, 'Kile', 'Streets', 'kstreets2a@qq.com', '768-543-5768', 'tenant', 'kstreets2a', '2IXsIlz6Pr8', 'http://dummyimage.com/216x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(84, 'Jasper', 'Meni', 'jmeni2b@lulu.com', '667-929-0887', 'tenant', 'jmeni2b', 'gvJt67', 'http://dummyimage.com/229x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(85, 'Russell', 'Treasure', 'rtreasure2c@jalbum.net', '466-884-5263', 'tenant', 'rtreasure2c', 'u2D1h0', 'http://dummyimage.com/199x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(86, 'Mollie', 'Itzkin', 'mitzkin2d@msn.com', '105-789-1952', 'tenant', 'mitzkin2d', 'EOAU1Z', 'http://dummyimage.com/172x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(87, 'Tisha', 'Solly', 'tsolly2e@dion.ne.jp', '219-333-4235', 'tenant', 'tsolly2e', 'HRnfBj', 'http://dummyimage.com/145x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(88, 'Margarete', 'McMichan', 'mmcmichan2f@apache.org', '700-866-0525', 'tenant', 'mmcmichan2f', 'QV9pVIH', 'http://dummyimage.com/118x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(89, 'Domingo', 'Hains', 'dhains2g@reverbnation.com', '980-730-3017', 'tenant', 'dhains2g', 'tXBi7v2p', 'http://dummyimage.com/231x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(90, 'Lenora', 'Rau', 'lrau2h@kickstarter.com', '632-750-7785', 'tenant', 'lrau2h', 'BlzJgE', 'http://dummyimage.com/122x100.png/cc0000/ffffff', '2022-04-24 15:14:06'),
(91, 'Ansell', 'Ramalho', 'aramalho2i@hatena.ne.jp', '271-438-0090', 'tenant', 'aramalho2i', 'WelZ33bM7', 'https://cdn.pixabay.com/photo/2018/10/29/21/46/human-3782189__340.jpg', '2022-04-24 15:14:00'),
(92, 'Anstice', 'Dimanche', 'adimanche2j@paginegialle.it', '847-992-5862', 'tenant', 'adimanche2j', '6kSEDo37', 'https://cdn.pixabay.com/photo/2013/07/18/10/59/human-skeleton-163715__340.jpg', '2022-04-24 15:14:00'),
(93, 'Lutero', 'Librey', 'llibrey2k@ow.ly', '743-900-6076', 'tenant', 'llibrey2k', 'FCaTix', 'http://dummyimage.com/242x100.png/ff4444/ffffff', '2022-04-24 15:14:06'),
(94, 'Deeanne', 'Lewsam', 'dlewsam2l@examiner.com', '602-179-3095', 'tenant', 'dlewsam2l', 'odwcZtj2o37M', 'http://dummyimage.com/181x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(95, 'Shay', 'Burdus', 'sburdus2m@cam.ac.uk', '192-115-3375', 'admin', 'sburdus2m', 'ZjdhmJ', 'http://dummyimage.com/218x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(96, 'Shanta', 'Keggin', 'skeggin2n@twitter.com', '479-541-0142', 'admin', 'skeggin2n', 'bX3IKhSVOTah', 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', '2022-04-24 15:14:06'),
(97, 'Gustav', 'Aisbett', 'gaisbett2o@bing.com', '343-604-1430', 'admin', 'gaisbett2o', 'zOvqlP5UEb5', 'http://dummyimage.com/145x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(98, 'Kort', 'Struthers', 'kstruthers2p@earthlink.net', '923-782-0717', 'admin', 'kstruthers2p', 'vgd5md', 'http://dummyimage.com/215x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(99, 'Oriana', 'Bridgnell', 'obridgnell2q@wikimedia.org', '684-233-3956', 'admin', 'obridgnell2q', 'qZleJ4', 'http://dummyimage.com/101x100.png/dddddd/000000', '2022-04-24 15:14:06'),
(100, 'Darcey', 'Milverton', 'dmilverton2r@adobe.com', '690-568-0429', 'admin', 'dmilverton2r', 'Ppkp1Ptq0H8H', 'http://dummyimage.com/101x100.png/cc0000/ffffff', '2022-04-24 15:14:06');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220423151406', '2022-04-23 17:14:28', 9195),
('DoctrineMigrations\\Version20220424095957', '2022-04-24 12:00:15', 2158),
('DoctrineMigrations\\Version20220424100549', '2022-04-24 12:05:56', 789);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `item_id`, `path`) VALUES
(1, 1, 'https://cdn.pixabay.com/photo/2017/03/28/12/10/chairs-2181947__340.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `author_id`, `categorie_id`, `label`, `description`, `price`, `created_at`) VALUES
(1, 1, 1, 'Quality Control Specialist', 'Example Return the current date and time + 1:', '$0.03', '2022-04-24 15:21:59'),
(2, 2, 2, 'Software Test Engineer II', 'Example Return the current date and time + 1:', '$7.61', '2022-04-24 15:21:59'),
(3, 3, 3, 'Director of Sales', 'Example Return the current date and time + 1:', '$7.85', '2022-04-24 15:21:59'),
(4, 4, 4, 'Sales Representative', 'Example Return the current date and time + 1:', '$0.51', '2022-04-24 15:21:59'),
(5, 5, 5, 'Health Coach I', 'Example Return the current date and time + 1:', '$7.13', '2022-04-24 15:21:59'),
(6, 6, 6, 'Geologist IV', 'Example Return the current date and time + 1:', '$8.56', '2022-04-24 15:21:59'),
(7, 7, 7, 'Legal Assistant', 'Example Return the current date and time + 1:', '$5.69', '2022-04-24 15:21:59'),
(8, 8, 8, 'Account Coordinator', 'Example Return the current date and time + 1:', '$0.12', '2022-04-24 15:21:59'),
(9, 9, 9, 'Project Manager', 'Example Return the current date and time + 1:', '$4.31', '2022-04-24 15:21:59'),
(10, 10, 10, 'VP Accounting', 'Example Return the current date and time + 1:', '$9.55', '2022-04-24 15:21:59'),
(11, 1, 1, 'Systems Administrator IV', 'Example Return the current date and time + 1:', '$8.25', '2022-04-24 15:21:59'),
(12, 1, 1, 'Assistant Media Planner', 'Example Return the current date and time + 1:', '$3.37', '2022-04-24 15:21:59'),
(13, 1, 1, 'VP Accounting', 'Example Return the current date and time + 1:', '$7.64', '2022-04-24 15:21:59'),
(14, 1, 1, 'Administrative Assistant I', 'Example Return the current date and time + 1:', '$0.35', '2022-04-24 15:21:59'),
(15, 1, 1, 'VP Quality Control', 'Example Return the current date and time + 1:', '$9.56', '2022-04-24 15:21:59'),
(16, 1, 1, 'Administrative Officer', 'Example Return the current date and time + 1:', '$5.38', '2022-04-24 15:21:59'),
(17, 1, 1, 'Staff Scientist', 'Example Return the current date and time + 1:', '$5.39', '2022-04-24 15:21:59'),
(18, 1, 1, 'Staff Accountant IV', 'Example Return the current date and time + 1:', '$4.69', '2022-04-24 15:21:59'),
(19, 1, 1, 'Research Associate', 'Example Return the current date and time + 1:', '$1.67', '2022-04-24 15:21:59'),
(20, 1, 1, 'Geologist I', 'Example Return the current date and time + 1:', '$0.82', '2022-04-24 15:21:59'),
(21, 1, 1, 'VP Quality Control', 'Example Return the current date and time + 1:', '$5.13', '2022-04-24 15:21:59'),
(22, 1, 1, 'Database Administrator IV', 'Example Return the current date and time + 1:', '$3.69', '2022-04-24 15:21:59'),
(23, 1, 1, 'Quality Control Specialist', 'Example Return the current date and time + 1:', '$1.22', '2022-04-24 15:21:59'),
(24, 1, 1, 'Internal Auditor', 'Example Return the current date and time + 1:', '$0.62', '2022-04-24 15:21:59'),
(25, 1, 1, 'Safety Technician II', 'Example Return the current date and time + 1:', '$4.16', '2022-04-24 15:21:59'),
(26, 1, 1, 'Assistant Media Planner', 'Example Return the current date and time + 1:', '$1.92', '2022-04-24 15:21:59'),
(27, 1, 1, 'Recruiting Manager', 'Example Return the current date and time + 1:', '$8.00', '2022-04-24 15:21:59'),
(28, 1, 1, 'Cost Accountant', 'Example Return the current date and time + 1:', '$0.75', '2022-04-24 15:21:59'),
(29, 1, 1, 'Programmer Analyst I', 'Example Return the current date and time + 1:', '$3.27', '2022-04-24 15:21:59'),
(30, 1, 1, 'Director of Sales', 'Example Return the current date and time + 1:', '$9.95', '2022-04-24 15:21:59'),
(31, 1, 1, 'Desktop Support Technician', 'Example Return the current date and time + 1:', '$1.53', '2022-04-24 15:21:59'),
(32, 1, 1, 'Help Desk Technician', 'Example Return the current date and time + 1:', '$6.54', '2022-04-24 15:21:59'),
(33, 1, 1, 'GIS Technical Architect', 'Example Return the current date and time + 1:', '$4.83', '2022-04-24 15:21:59'),
(34, 1, 1, 'Cost Accountant', 'Example Return the current date and time + 1:', '$7.10', '2022-04-24 15:21:59'),
(35, 1, 1, 'Geologist II', 'Example Return the current date and time + 1:', '$0.17', '2022-04-24 15:21:59'),
(36, 1, 1, 'Chief Design Engineer', 'Example Return the current date and time + 1:', '$7.95', '2022-04-24 15:21:59'),
(37, 1, 1, 'Chemical Engineer', 'Example Return the current date and time + 1:', '$4.69', '2022-04-24 15:21:59'),
(38, 1, 1, 'Clinical Specialist', 'Example Return the current date and time + 1:', '$4.31', '2022-04-24 15:21:59'),
(39, 1, 1, 'Media Manager III', 'Example Return the current date and time + 1:', '$1.88', '2022-04-24 15:21:59'),
(40, 1, 1, 'Accounting Assistant II', 'Example Return the current date and time + 1:', '$8.89', '2022-04-24 15:21:59'),
(41, 1, 1, 'Graphic Designer', 'Example Return the current date and time + 1:', '$0.91', '2022-04-24 15:21:59'),
(42, 1, 1, 'Desktop Support Technician', 'Example Return the current date and time + 1:', '$7.18', '2022-04-24 15:21:59'),
(43, 1, 1, 'VP Sales', 'Example Return the current date and time + 1:', '$4.05', '2022-04-24 15:21:59'),
(44, 1, 1, 'Internal Auditor', 'Example Return the current date and time + 1:', '$3.52', '2022-04-24 15:21:59'),
(45, 1, 1, 'VP Quality Control', 'Example Return the current date and time + 1:', '$1.79', '2022-04-24 15:21:59'),
(46, 1, 1, 'Junior Executive', 'Example Return the current date and time + 1:', '$8.62', '2022-04-24 15:21:59'),
(47, 1, 1, 'Speech Pathologist', 'Example Return the current date and time + 1:', '$3.62', '2022-04-24 15:21:59'),
(48, 1, 1, 'Nurse', 'Example Return the current date and time + 1:', '$5.38', '2022-04-24 15:21:59'),
(49, 1, 1, 'Internal Auditor', 'Example Return the current date and time + 1:', '$7.25', '2022-04-24 15:21:59'),
(50, 1, 1, 'Occupational Therapist', 'Example Return the current date and time + 1:', '$6.39', '2022-04-24 15:21:59'),
(51, 1, 1, 'Software Test Engineer II', 'Example Return the current date and time + 1:', '$0.63', '2022-04-24 15:21:59');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`) VALUES
(1, 'admin', '[]', '$2y$13$1V141POT2Wf8E6pwuPIFz.zsozdHADya1Rs6sx7Eun6Fti1lM2bNC', 'admin@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F126F525E` (`item_id`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251EF675F31B` (`author_id`),
  ADD KEY `IDX_1F1B251EBCF5E72D` (`categorie_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`);

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_1F1B251EF675F31B` FOREIGN KEY (`author_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
