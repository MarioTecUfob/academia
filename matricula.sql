-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 29-Out-2018 às 23:57
-- Versão do servidor: 5.5.32
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `meubanco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE IF NOT EXISTS `matricula` (
  `nome` varchar(50) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `rg` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `taekwondo` tinyint(1) DEFAULT NULL,
  `jiujitsu` tinyint(1) DEFAULT NULL,
  `musculacao` tinyint(1) DEFAULT NULL,
  `pilates` tinyint(1) DEFAULT NULL,
  `zumba` tinyint(1) DEFAULT NULL,
  `bale` tinyint(1) DEFAULT NULL,
  `mensalidade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`nome`, `cpf`, `rg`, `email`, `sexo`, `data_nasc`, `logradouro`, `numero`, `estado`, `cidade`, `cep`, `taekwondo`, `jiujitsu`, `musculacao`, `pilates`, `zumba`, `bale`, `mensalidade`) VALUES
('MARIO ', 436433, 436433, 'MARIO@GMAIL.COM', 'M', '2018-10-29', 'RUA DAS BOTAS', 30, 'BA', 'BOM JESUS DA LAPA', 4364364, 1, 1, 1, 0, 0, 0, 150),
('Alex Sandro Batista dos Santos', 2147483647, 34081518, 'alexsandroletras@gmail.com', 'M', '1993-11-13', 'Travessa Santa luzia', 80, 'BA', 'Bom Jesus da Lapa', 46000000, 0, 1, 1, 0, 0, 1, 150);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
