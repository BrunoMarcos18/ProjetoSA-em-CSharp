-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.20-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para vistoria_sa
CREATE DATABASE IF NOT EXISTS `vistoria_sa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `vistoria_sa`;

-- Copiando estrutura para tabela vistoria_sa.ocorrencia
CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `idVistoria` int(11) NOT NULL,
  `idOcorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `dataOcorrencia` date NOT NULL,
  `tipoOcorrencia` varchar(50) NOT NULL,
  `descricaoOcorrencia` varchar(50) NOT NULL,
  PRIMARY KEY (`idOcorrencia`),
  KEY `idVistoria` (`idVistoria`),
  CONSTRAINT `FK__vistoria` FOREIGN KEY (`idVistoria`) REFERENCES `vistoria` (`idVistoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela vistoria_sa.ocorrencia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ocorrencia` ENABLE KEYS */;

-- Copiando estrutura para tabela vistoria_sa.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeUsuario` varchar(50) NOT NULL,
  `loginUsuario` varchar(50) NOT NULL,
  `senhaUsuario` varchar(50) NOT NULL,
  `perfilUsuario` varchar(50) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela vistoria_sa.usuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`idUsuario`, `nomeUsuario`, `loginUsuario`, `senhaUsuario`, `perfilUsuario`) VALUES
	(1, 'Maria Eduarda', 'Maria123', '123', 'Analista'),
	(2, 'Bruno', 'Bruno456', '456', 'Operador'),
	(3, 'Ana', 'Ana789', '789', 'Operador');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Copiando estrutura para tabela vistoria_sa.vistoria
CREATE TABLE IF NOT EXISTS `vistoria` (
  `idVistoria` int(11) NOT NULL AUTO_INCREMENT,
  `dataVistoria` date NOT NULL,
  `statusVistoria` varchar(50) NOT NULL,
  `idResponsavel` int(11) NOT NULL,
  `descricaoVistoria` varchar(50) NOT NULL,
  `enderecoVistoria` varchar(50) NOT NULL,
  PRIMARY KEY (`idVistoria`),
  KEY `idResponsavel` (`idResponsavel`),
  CONSTRAINT `FK_vistoria_usuario` FOREIGN KEY (`idResponsavel`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela vistoria_sa.vistoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vistoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `vistoria` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
