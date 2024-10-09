-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/10/2024 às 15:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbnkn`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `lead`
--

CREATE TABLE `lead` (
  `idLead` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `datanascimento` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `datalog` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lead`
--

INSERT INTO `lead` (`idLead`, `nome`, `datanascimento`, `email`, `senha`, `whatsapp`, `datalog`) VALUES
(1, 'felipe', '2024-10-08', 'felipe@gamil.com', 'teste132', '(23) 12312-3111', '2024-10-08 18:22:53'),
(2, 'Pedro', '1982-06-15', 'pedro@gmail.com', 'teste132', '(12) 31231-2312', '2024-10-08 18:30:19'),
(4, 'ayki', '1821-06-05', 'ayki@gmail.com', 'teste132', '(12) 32131-2312', '2024-10-08 23:00:44'),
(5, 'barth', '1831-06-13', 'barth@gmail.com', 'teste132', '(13) 21231-2312', '2024-10-08 23:03:21'),
(9, 'kaio', '1831-06-13', 'kaio@gmail.com', 'teste132', '(13) 21231-2312', '2024-10-08 23:07:39'),
(10, 'rafa', '1970-06-16', 'rafa@gmail.com', 'teste132', '(66) 66666-6666', '2024-10-08 23:14:41'),
(11, 'felipe', '1983-05-09', 'foxlipe@gmail.com', 'teste132', '(23) 12312-3213', '2024-10-09 10:37:32');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`idLead`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lead`
--
ALTER TABLE `lead`
  MODIFY `idLead` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
