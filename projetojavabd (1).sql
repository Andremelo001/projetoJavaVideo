-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 07-Jun-2022 às 17:13
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetojavabd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `matricula_aluno` varchar(255) NOT NULL,
  `nome_aluno` varchar(255) NOT NULL,
  `turma_aluno` varchar(255) NOT NULL,
  `foto_aluno` text NOT NULL,
  PRIMARY KEY (`id_aluno`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `matricula_aluno`, `nome_aluno`, `turma_aluno`, `foto_aluno`) VALUES
(33, '12345678', 'Brennda Sousa', 'Informática', 'C:\\Users\\3°Ano Info\\Documents\\arquivos Projeto Java\\brenndanew.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conexaobd`
--

DROP TABLE IF EXISTS `conexaobd`;
CREATE TABLE IF NOT EXISTS `conexaobd` (
  `id_direcao` int NOT NULL AUTO_INCREMENT,
  `senha_usuario` int NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  PRIMARY KEY (`id_direcao`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `conexaobd`
--

INSERT INTO `conexaobd` (`id_direcao`, `senha_usuario`, `nome_usuario`) VALUES
(1, 12345, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `frequencia`
--

DROP TABLE IF EXISTS `frequencia`;
CREATE TABLE IF NOT EXISTS `frequencia` (
  `id_frequencia` int NOT NULL AUTO_INCREMENT,
  `frequencia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Presente',
  `nome` varchar(255) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `turma` varchar(255) NOT NULL,
  PRIMARY KEY (`id_frequencia`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `frequencia`
--

INSERT INTO `frequencia` (`id_frequencia`, `frequencia`, `nome`, `data`, `turma`) VALUES
(53, 'Presente', 'Brennda Sousa', '2022-06-06 14:13:42', 'Informática');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
