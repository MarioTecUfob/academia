-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Nov-2018 às 13:38
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meubanco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados`
--

CREATE TABLE `dados` (
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dados`
--

INSERT INTO `dados` (`nome`, `email`) VALUES
('Bruno', 'bruno@email.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dicionario`
--

CREATE TABLE `dicionario` (
  `portugues` varchar(50) DEFAULT NULL,
  `ingles` varchar(50) DEFAULT NULL,
  `espanhol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dicionario`
--

INSERT INTO `dicionario` (`portugues`, `ingles`, `espanhol`) VALUES
('casa ', 'house', 'casa'),
('cavalo', 'horse', 'caballo '),
('Ã¡gua', 'water', 'agua'),
('azul', 'blue', 'azul');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idiomas`
--

CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL,
  `idioma` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `idiomas`
--

INSERT INTO `idiomas` (`id`, `idioma`) VALUES
(2, 'Português'),
(3, 'Inglês'),
(4, 'Espanhol');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `rg` varchar(11) DEFAULT NULL,
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
('MÃ¡rio Aparecido GonÃ§alves Novaes ', '08311993505', '12345678901', 'maraofodao956@gmail.com', 'M', '1997-08-20', 'A', 15, 'BA', 'Serra do Ramalho', 47630, 1, 1, 0, 1, 0, 1, 200),
('MÃ¡rio Aparecido GonÃ§alves Novaes ', '08311993505', '12345678901', 'maraofodao956@gmail.com', 'M', '1997-08-20', 'A', 15, 'BA', 'Serra do Ramalho', 47630, 1, 1, 0, 1, 0, 1, 200),
('MÃ¡rio Aparecido GonÃ§alves Novaes ', '08311993505', '12345678901', 'maraofodao956@gmail.com', 'M', '1997-08-20', 'A', 15, 'BA', 'Serra do Ramalho', 47630, 1, 1, 0, 1, 0, 1, 200),
('Rick Texeira De Araujo ', '2147483647', '09876543211', 'maraofodao956@gmail.com', 'M', '2018-11-14', 'D', 15, 'BA', 'Serra do Ramalho', 47630, 0, 1, 1, 0, 0, 1, 150),
('Jairo Pivete', '12345678998', '45698744541', 'jairo@gmailloko', 'M', '2006-07-18', '...', 0, '..', '...', 47630, 1, 0, 1, 0, 1, 0, 150);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `creat` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `creat`, `modified`) VALUES
(1, 'Português', '0000-00-00 00:00:00', NULL),
(2, 'Inglês', '0000-00-00 00:00:00', NULL),
(3, 'Espanhol', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reposicao`
--

CREATE TABLE `reposicao` (
  `nome` varchar(30) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `rg` int(11) DEFAULT NULL,
  `datap` datetime DEFAULT NULL,
  `datar` datetime DEFAULT NULL,
  `horario` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
