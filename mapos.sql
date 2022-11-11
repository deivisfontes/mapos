-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Nov-2022 às 17:47
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mapos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anotacoes_os`
--

CREATE TABLE `anotacoes_os` (
  `idAnotacoes` int(11) NOT NULL,
  `anotacao` varchar(255) NOT NULL,
  `data_hora` datetime NOT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('3st328a9ssovejafjr33rfaetk3usgmc', '::1', 1667831082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373833313035373b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('kg6rf9fe4mkhnn7otgr665cloefsabg3', '::1', 1667847348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373834373334383b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('hqtpl17ahtbgp213tag8bu3fhsog63gk', '::1', 1667849395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373834393339353b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('2q7p9m28loqp8lgqo0jehhqi5dbdbv31', '::1', 1667850298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373835303239383b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('ucmmljn0vv0qrc6o67sri4trfauhvdro', '::1', 1667850812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373835303831323b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('rkok8tp5qotbbc7murh6ceu0t0bnepn9', '::1', 1667857616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373835373631363b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('nub1log8l7mqskmsnqtustqi6jo0a7vr', '::1', 1667857616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636373835373631363b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('lr01i77fnvh60v61kbq39qrspvu9l778', '::1', 1668173484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383137333436353b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('lhut6ld0pi0200kkcnp7m210olfeodsh', '::1', 1668185177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636383138353135393b6e6f6d657c733a363a22446569766973223b656d61696c7c733a32353a226466696e666f726d6174696361746340676d61696c2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pessoa_fisica` tinyint(1) NOT NULL DEFAULT 1,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `fornecedor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cobrancas`
--

CREATE TABLE `cobrancas` (
  `idCobranca` int(11) NOT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `conditional_discount_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `custom_id` int(11) DEFAULT NULL,
  `expire_at` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `payment_method` varchar(11) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `request_delivery_address` varchar(64) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `total` varchar(15) DEFAULT NULL,
  `barcode` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `payment` varchar(64) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `idConfig` int(11) NOT NULL,
  `config` varchar(20) NOT NULL,
  `valor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `configuracoes`
--

INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES
(2, 'app_name', 'Map-OS'),
(3, 'app_theme', 'white'),
(4, 'per_page', '10'),
(5, 'os_notification', 'cliente'),
(6, 'control_estoque', '1'),
(7, 'notifica_whats', 'Prezado(a), {CLIENTE_NOME} a OS de nº {NUMERO_OS} teve o status alterado para :{STATUS_OS} segue a descrição {DESCRI_PRODUTOS} com valor total de {VALOR_OS}!\r\n Para mais informações entre em contato conosco.\r\n Atenciosamente, {EMITENTE} {TELEFONE_EMITENTE}.'),
(8, 'control_baixa', '0'),
(9, 'control_editos', '1'),
(10, 'control_datatable', '1'),
(11, 'pix_key', ''),
(12, 'os_status_list', '[\"Aberto\",\"Faturado\",\"Negocia\\u00e7\\u00e3o\",\"Em Andamento\",\"Or\\u00e7amento\",\"Finalizado\",\"Cancelado\",\"Aguardando Pe\\u00e7as\",\"Aprovado\"]'),
(13, 'control_edit_vendas', '1'),
(14, 'email_automatico', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

CREATE TABLE `contas` (
  `idContas` int(11) NOT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE `emitente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `idEquipamentos` int(11) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `num_serie` varchar(80) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `tensao` varchar(45) DEFAULT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `voltagem` varchar(45) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `marcas_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos_os`
--

CREATE TABLE `equipamentos_os` (
  `idEquipamentos_os` int(11) NOT NULL,
  `defeito_declarado` varchar(200) DEFAULT NULL,
  `defeito_encontrado` varchar(200) DEFAULT NULL,
  `solucao` varchar(45) DEFAULT NULL,
  `equipamentos_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `garantias`
--

CREATE TABLE `garantias` (
  `idGarantias` int(11) NOT NULL,
  `dataGarantia` date DEFAULT NULL,
  `refGarantia` varchar(15) DEFAULT NULL,
  `textoGarantia` text DEFAULT NULL,
  `usuarios_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_vendas`
--

CREATE TABLE `itens_de_vendas` (
  `idItens` int(11) NOT NULL,
  `subTotal` decimal(10,2) DEFAULT 0.00,
  `quantidade` int(11) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT 0.00,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `desconto` decimal(10,2) DEFAULT 0.00,
  `valor_desconto` decimal(10,2) DEFAULT 0.00,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT 0,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `contas_id` int(11) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES
(1, 'Deivis', 'Efetuou login no sistema', '2022-11-07', '15:24:23', '::1'),
(2, 'Deivis', 'Efetuou login no sistema', '2022-11-07', '18:55:05', '::1'),
(3, 'Deivis', 'Efetuou login no sistema', '2022-11-11', '14:31:22', '::1'),
(4, 'Deivis', 'Efetuou login no sistema', '2022-11-11', '17:46:16', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `idMarcas` int(11) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20210125173741);

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` text DEFAULT NULL,
  `defeito` text DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `laudoTecnico` text DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT 0.00,
  `desconto` decimal(10,2) DEFAULT 0.00,
  `valor_desconto` decimal(10,2) DEFAULT 0.00,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  `garantias_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `permissoes` text DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:53:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";s:1:\"1\";s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";N;s:10:\"ePagamento\";N;s:10:\"dPagamento\";N;s:10:\"vPagamento\";N;s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:8:\"cSistema\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";s:9:\"aCobranca\";s:1:\"1\";s:9:\"eCobranca\";s:1:\"1\";s:9:\"dCobranca\";s:1:\"1\";s:9:\"vCobranca\";s:1:\"1\";}', 1, '2022-11-07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `codDeBarra` varchar(70) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  `saida` tinyint(1) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT 0.00,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resets_de_senha`
--

CREATE TABLE `resets_de_senha` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(255) NOT NULL,
  `data_expiracao` datetime NOT NULL,
  `token_utilizado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL,
  `servico` varchar(80) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT 0.00,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  `dataExpiracao` date DEFAULT NULL,
  `asaas_id` varchar(255) DEFAULT NULL,
  `url_image_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`, `dataExpiracao`, `asaas_id`, `url_image_user`) VALUES
(1, 'Deivis', 'MG-25.502.560', '600.021.520-87', '70005-115', 'Rua Acima', '12', 'Alvorada', 'Teste', 'MG', 'dfinformaticatc@gmail.com', '$2y$10$C7XIixdE6LyQSChGZmwckeBgj.D9ctj71Di.pM2jShkseAGcMwU0u', '000000-0000', '', 1, '2022-11-07', 1, '3000-01-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `idVendas` int(11) NOT NULL,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT 0.00,
  `desconto` decimal(10,2) DEFAULT 0.00,
  `valor_desconto` decimal(10,2) DEFAULT 0.00,
  `faturado` tinyint(1) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `observacoes_cliente` text DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`idAnexos`),
  ADD KEY `fk_anexos_os1` (`os_id`);

--
-- Índices para tabela `anotacoes_os`
--
ALTER TABLE `anotacoes_os`
  ADD PRIMARY KEY (`idAnotacoes`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategorias`);

--
-- Índices para tabela `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

--
-- Índices para tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD PRIMARY KEY (`idCobranca`),
  ADD KEY `fk_cobrancas_os1` (`os_id`),
  ADD KEY `fk_cobrancas_vendas1` (`vendas_id`),
  ADD KEY `fk_cobrancas_clientes1` (`clientes_id`);

--
-- Índices para tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`idConfig`),
  ADD UNIQUE KEY `config` (`config`);

--
-- Índices para tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`idContas`);

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`idDocumentos`);

--
-- Índices para tabela `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`idEquipamentos`),
  ADD KEY `fk_equipanentos_marcas1_idx` (`marcas_id`),
  ADD KEY `fk_equipanentos_clientes1_idx` (`clientes_id`);

--
-- Índices para tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD PRIMARY KEY (`idEquipamentos_os`),
  ADD KEY `fk_equipamentos_os_equipanentos1_idx` (`equipamentos_id`),
  ADD KEY `fk_equipamentos_os_os1_idx` (`os_id`);

--
-- Índices para tabela `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`idGarantias`),
  ADD KEY `fk_garantias_usuarios1` (`usuarios_id`);

--
-- Índices para tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD PRIMARY KEY (`idItens`),
  ADD KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  ADD KEY `fk_itens_de_vendas_produtos1` (`produtos_id`);

--
-- Índices para tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`idLancamentos`),
  ADD KEY `fk_lancamentos_clientes1` (`clientes_id`),
  ADD KEY `fk_lancamentos_categorias1_idx` (`categorias_id`),
  ADD KEY `fk_lancamentos_contas1_idx` (`contas_id`),
  ADD KEY `fk_lancamentos_usuarios1` (`usuarios_id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`idLogs`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarcas`);

--
-- Índices para tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`idOs`),
  ADD KEY `fk_os_clientes1` (`clientes_id`),
  ADD KEY `fk_os_usuarios1` (`usuarios_id`),
  ADD KEY `fk_os_lancamentos1` (`lancamento`),
  ADD KEY `fk_os_garantias1` (`garantias_id`);

--
-- Índices para tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProdutos`);

--
-- Índices para tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD PRIMARY KEY (`idProdutos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`produtos_id`);

--
-- Índices para tabela `resets_de_senha`
--
ALTER TABLE `resets_de_senha`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Índices para tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD PRIMARY KEY (`idServicos_os`),
  ADD KEY `fk_servicos_os_os1` (`os_id`),
  ADD KEY `fk_servicos_os_servicos1` (`servicos_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVendas`),
  ADD KEY `fk_vendas_clientes1` (`clientes_id`),
  ADD KEY `fk_vendas_usuarios1` (`usuarios_id`),
  ADD KEY `fk_vendas_lancamentos1` (`lancamentos_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anexos`
--
ALTER TABLE `anexos`
  MODIFY `idAnexos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `anotacoes_os`
--
ALTER TABLE `anotacoes_os`
  MODIFY `idAnotacoes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  MODIFY `idCobranca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `idConfig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `idContas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `idEquipamentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  MODIFY `idEquipamentos_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `garantias`
--
ALTER TABLE `garantias`
  MODIFY `idGarantias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `idLancamentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `idLogs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarcas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProdutos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  MODIFY `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `resets_de_senha`
--
ALTER TABLE `resets_de_senha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  MODIFY `idServicos_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVendas` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD CONSTRAINT `fk_cobrancas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cobrancas_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cobrancas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `fk_equipanentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipanentos_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`idMarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD CONSTRAINT `fk_equipamentos_os_equipanentos1` FOREIGN KEY (`equipamentos_id`) REFERENCES `equipamentos` (`idEquipamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipamentos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `garantias`
--
ALTER TABLE `garantias`
  ADD CONSTRAINT `fk_garantias_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_contas1` FOREIGN KEY (`contas_id`) REFERENCES `contas` (`idContas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
