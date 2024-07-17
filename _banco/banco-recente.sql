-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/07/2024 às 20:17
-- Versão do servidor: 10.11.8-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u283879542_cloudwise`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `idBanner` int(11) NOT NULL,
  `descricaoBanner` varchar(100) NOT NULL,
  `tituloBanner` varchar(20) NOT NULL,
  `subTituloBanner` varchar(30) NOT NULL,
  `statusBanner` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`idBanner`, `descricaoBanner`, `tituloBanner`, `subTituloBanner`, `statusBanner`) VALUES
(1, 'Descrição banner', 'Cloud', 'Wise', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `blogs`
--

CREATE TABLE `blogs` (
  `idBlog` int(11) NOT NULL,
  `tituloBlog` text DEFAULT NULL,
  `fotoBlog` varchar(100) NOT NULL,
  `descricaoFotoBlog` varchar(150) DEFAULT NULL,
  `sobreBlog` varchar(50) NOT NULL,
  `fontBlog` varchar(50) NOT NULL,
  `tituloFonteBlog` varchar(30) NOT NULL,
  `urlBlog` varchar(150) NOT NULL,
  `statusBlog` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `blogs`
--

INSERT INTO `blogs` (`idBlog`, `tituloBlog`, `fotoBlog`, `descricaoFotoBlog`, `sobreBlog`, `fontBlog`, `tituloFonteBlog`, `urlBlog`, `statusBlog`) VALUES
(1, 'A importância de sites responsivos.', 'blog/blog1.png', 'Descrição do blog 1', 'Tecnologia', 'Equipe Cloud ', '2023-10-09', 'siteresponsivo.php', 1),
(2, 'Como Utilizar Redes Sociais para impulsionar seu Negócio.', 'blog/blog2.png', 'Descrição do blog 2', 'Marketing Digital', 'Equipe Cloud', '22 jul, 2023', 'redessociais.php', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `colaboradores`
--

CREATE TABLE `colaboradores` (
  `idColaborador` int(11) NOT NULL,
  `fotoColaborador` varchar(100) NOT NULL,
  `descricaoFotoColaborador` varchar(150) DEFAULT NULL,
  `nomeColaborador` varchar(50) NOT NULL,
  `funcaoCOlaborador` varchar(50) NOT NULL,
  `informacaoColaborador` varchar(150) NOT NULL,
  `urlColaborador` varchar(150) NOT NULL,
  `statusColaborador` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(100) NOT NULL,
  `emailContato` varchar(100) NOT NULL,
  `foneContato` varchar(15) NOT NULL,
  `mensagemContato` text NOT NULL,
  `dataContato` date NOT NULL DEFAULT current_timestamp(),
  `horaContato` time DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`idContato`, `nomeContato`, `emailContato`, `foneContato`, `mensagemContato`, `dataContato`, `horaContato`) VALUES
(17, 'cris', 'crislayne2609@gmail.com', '11995312845', 'teste', '2023-09-24', '00:00:00'),
(18, 'cris', 'crislayne2609@gmail.com', '11995312845', 'teste', '2023-09-25', '13:36:19'),
(19, 'dd', 'crislayne2609@gmail.com', '11995312845', 'testee', '2023-09-25', '14:37:55'),
(20, 'cris', 'crislayne2609@gmail.com', '11995312845', 'testeeeeeeeeeeeeeeeee', '2023-10-17', '13:52:17'),
(21, 'pedro', 'pedro@gmail.com', '1199999999', 'teste1', '2024-06-26', '15:36:12'),
(22, 'pedro', 'pedro@gmail.com', '1199999999', 'teste1', '2024-06-26', '15:36:14'),
(23, 'Gaby', 'gaby@gmail.com', '88888888', 'aaaaaaaaa', '2024-06-27', '16:14:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `faq`
--

CREATE TABLE `faq` (
  `idFaq` int(11) NOT NULL,
  `perguntaFaq` varchar(150) NOT NULL,
  `respostaFaq` varchar(150) NOT NULL,
  `statusFaq` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `faq`
--

INSERT INTO `faq` (`idFaq`, `perguntaFaq`, `respostaFaq`, `statusFaq`) VALUES
(6, 'A Cloud Wise trabalha apenas com empresas grandes?', 'Não, trabalhamos com empresas de todos os portes e segmentos, desde pequenos empreendedores até grandes corporações.', 1),
(7, 'Como posso solicitar um orçamento para o meu projeto?', 'Você pode entrar em contato conosco através do formulário de contato em nosso site, ou por e-mail/telefone. Nossa equipe estará feliz em discutir suas', 1),
(8, 'Quanto tempo leva para desenvolver um site?', 'O tempo de desenvolvimento varia de acordo com a complexidade do projeto, mas trabalhamos eficientemente para entregar resultados no menor prazo possí', 1),
(9, 'Vocês oferecem suporte contínuo após o lançamento do site?', 'Sim, oferecemos suporte contínuo para garantir o funcionamento adequado do seu site e ajudá-lo com quaisquer atualizações ou melhorias necessárias.', 1),
(10, 'Vocês oferecem serviços de criação de conteúdo?', 'Sim, podemos auxiliar na criação de conteúdo relevante e otimizado para o seu site, ajudando-o a se destacar nos mecanismos de busca.', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `idServico` int(11) NOT NULL,
  `tituloServico` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `statusServico` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`idServico`, `tituloServico`, `descricao`, `statusServico`) VALUES
(2, 'Otimização de Sites', 'Melhore sua visibilidade online com nosso serviço de otimização de site (SEO). Oferecemos soluções para impulsionar o tráfego orgânico do seu site e aumentar sua classificação nos mecanismos de busca. Nossa equipe utiliza estratégias, pesquisa de palavras-chave e otimização de conteúdo para garantir que seu site seja encontrado por seu público-alvo.', 1),
(3, 'Identidade Visual', 'Destaque-se da concorrência com uma identidade visual única e impactante para o seu negócio. Nossa equipe trabalha em estreita colaboração com você para capturar a essência da sua marca e transmiti-la de forma consistente em todos os pontos de contato, desde o logotipo e paleta de cores até a seleção de tipografia e elementos visuais.', 1),
(4, 'Web Design', 'Impressione seus visitantes com nosso serviço de web design. Nossa equipe utiliza as melhores práticas de design para criar layouts atraentes, interfaces intuitivas e uma navegação fluida. Trabalhamos em estreita colaboração com você para entender suas metas e necessidades, resultando em um design único e impactante que reflete a identidade da sua marca. ', 1),
(51, 'SEO - Otimização de Sites', 'Melhore sua visibilidade online com nosso serviço de otimização de site (SEO). Oferecemos soluções para impulsionar o tráfego orgânico do seu site e aumentar sua classificação nos mecanismos de busca. Nossa equipe utiliza estratégias, pesquisa de palavras-chave e otimização de conteúdo para garantir que seu site seja encontrado por seu público-alvo.', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblsobre`
--

CREATE TABLE `tblsobre` (
  `idSobre` int(11) NOT NULL,
  `tituloSobre` varchar(50) NOT NULL,
  `descricaoSobre` text NOT NULL,
  `fotoSobre1` varchar(100) NOT NULL,
  `fotoSobre2` varchar(100) NOT NULL,
  `fotoSobre3` varchar(100) NOT NULL,
  `fotoSobre4` varchar(100) NOT NULL,
  `tituloMissao1` varchar(50) NOT NULL,
  `descricaoMissao1` text DEFAULT NULL,
  `tituloMissao2` varchar(50) NOT NULL,
  `descricaoMissao2` text DEFAULT NULL,
  `tituloMissao3` varchar(50) NOT NULL,
  `descricaoMissao3` text DEFAULT NULL,
  `fotoMissao` varchar(100) NOT NULL,
  `tituloVisao1` varchar(50) NOT NULL,
  `descricaoVisao1` text DEFAULT NULL,
  `tituloVisao2` varchar(50) NOT NULL,
  `descricaoVisao2` text DEFAULT NULL,
  `tituloVisao3` varchar(50) NOT NULL,
  `descricaoVisao3` text DEFAULT NULL,
  `fotoVisao` varchar(100) NOT NULL,
  `tituloValores1` varchar(50) NOT NULL,
  `descricaoValores1` text DEFAULT NULL,
  `tituloValores2` varchar(50) NOT NULL,
  `descricaoValores2` text DEFAULT NULL,
  `tituloValores3` varchar(50) NOT NULL,
  `descricaoValores3` text DEFAULT NULL,
  `fotoValores` varchar(100) NOT NULL,
  `urlSobre` varchar(150) NOT NULL,
  `statusSobre` tinyint(1) DEFAULT NULL,
  `descricaoSobre1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblsobre`
--

INSERT INTO `tblsobre` (`idSobre`, `tituloSobre`, `descricaoSobre`, `fotoSobre1`, `fotoSobre2`, `fotoSobre3`, `fotoSobre4`, `tituloMissao1`, `descricaoMissao1`, `tituloMissao2`, `descricaoMissao2`, `tituloMissao3`, `descricaoMissao3`, `fotoMissao`, `tituloVisao1`, `descricaoVisao1`, `tituloVisao2`, `descricaoVisao2`, `tituloVisao3`, `descricaoVisao3`, `fotoVisao`, `tituloValores1`, `descricaoValores1`, `tituloValores2`, `descricaoValores2`, `tituloValores3`, `descricaoValores3`, `fotoValores`, `urlSobre`, `statusSobre`, `descricaoSobre1`) VALUES
(1, 'Sobre a Cloud', 'A Cloud Wise é uma agência de desenvolvimento de sites focada em atender pequenos e médios empreendedores que desejam se destacar online. Nossa equipe, composta por estudantes, oferece soluções personalizadas para cada cliente.\r\n', 'sobre/sobre1.png', 'sobre/sobre2.png', 'sobre/sobre3.png', 'sobre/sobre4.png', 'Sucesso dos Clientes', 'Trabalhamos em estreita colaboração com cada cliente para entender suas necessidades, objetivos e desafios específicos, desenvolvendo soluções personalizadas que atendam às suas demandas e alavanquem seu crescimento.', 'Impacto Positivo', 'Buscamos criar um impacto positivo nas empresas e na comunidade em que atuamos. Ao fornecer soluções de qualidade e impulsionar o crescimento de nossos clientes, contribuímos para o fortalecimento dos negócios e para o desenvolvimento econômico.', 'Comunicação e Tecnologia', 'Acreditamos que a comunicação eficaz e o uso adequado da tecnologia são fundamentais para o sucesso dos negócios no mundo digital em constante evolução.', 'missao/missao.png', 'Parceria de Longo Prazo', 'Nossa visão é estabelecer parcerias sólidas e duradouras com nossos clientes, sendo reconhecidos como um parceiro estratégico e confiável em suas jornadas de negócios.', 'Excelência em Serviços', 'Buscamos ser reconhecidos pela qualidade de nossos serviços, oferecendo soluções de comunicação e tecnologia que atendam e superem as expectativas de nossos clientes.', 'Crescimento Global', 'Expandir nossa presença e atuação globalmente, alcançando novos mercados e fortalecendo nossa marca em diferentes regiões do mundo.', 'visao/visao.png', 'Ética', 'Nós trabalhamos com integridade, respeito e responsabilidade. Nós nos esforçamos para fazer a coisa certa para nossos clientes, colaboradores e comunidade.', 'Qualidade e Dedicação', 'Comprometemo-nos com a qualidade em todas as etapas do nosso trabalho, com dedicação e atenção aos detalhes para fornecer resultados excepcionais.', 'Trabalho em equipe', 'Nós trabalhamos em estreita colaboração com nossos clientes e entre nós, para garantir que nossos clientes recebam as soluções completas e integradas que precisam para ter sucesso em seus negócios.', 'valores/valores.png', 'sobre.php', 1, 'Nosso propósito é apoiar os empreendedores a expandirem seus negócios através da presença online, desenvolvendo sites contemporâneos, adaptáveis e de navegação fácil. Nossa equipe, formada por estudantes dedicados, entrega soluções feitas sob medida para cada cliente.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `idTrabalho` int(11) NOT NULL,
  `fotoTrabalho` varchar(100) NOT NULL,
  `descricaoFotoTrabalho` varchar(150) NOT NULL,
  `tituloTrabalho` varchar(30) NOT NULL,
  `descricaoTrabalho` varchar(150) NOT NULL,
  `statusTrabalho` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`idTrabalho`, `fotoTrabalho`, `descricaoFotoTrabalho`, `tituloTrabalho`, `descricaoTrabalho`, `statusTrabalho`) VALUES
(1, 'trabalho/trabalho.png', 'Descrição foto trabalho', 'Análise dos problemas', 'Realizamos uma análise dos problemas e necessidades do cliente. Dessa forma, conseguimos oferecer soluções personalizadas, efetivas e que atendam às e', 1),
(2, 'trabalho/trabalho.png', 'Descrição foto trabalho', 'Soluções funcionais para o usu', 'Nosso foco é sempre o usuário. Por isso, criamos soluções funcionais e intuitivas, que visam proporcionar a melhor experiência possível para o público', 1),
(3, 'trabalho/trabalho.png', 'Descrição foto trabalho', 'Uso de tecnologias atuais', 'Mantemos nossos projetos sempre atualizados com as tecnologias mais recentes, garantindo a qualidade, segurança e eficiência em nossas soluções. Busca', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUser` int(11) NOT NULL,
  `nomeUser` varchar(100) NOT NULL,
  `fotoUser` varchar(100) NOT NULL,
  `emailUser` varchar(100) NOT NULL,
  `foneUser` varchar(15) NOT NULL,
  `senhaUser` varchar(20) NOT NULL,
  `statusUser` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`idUser`, `nomeUser`, `fotoUser`, `emailUser`, `foneUser`, `senhaUser`, `statusUser`) VALUES
(1, 'felipe', '', 'fehamorim09@gmail.com', '11951613736', '12345', 1),
(2, 'anny ', '', 'annycarafurada@horrivel.com', '40028922', '12345', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idBanner`);

--
-- Índices de tabela `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`idBlog`);

--
-- Índices de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`idColaborador`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices de tabela `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idFaq`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServico`);

--
-- Índices de tabela `tblsobre`
--
ALTER TABLE `tblsobre`
  ADD PRIMARY KEY (`idSobre`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`idTrabalho`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `idBanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `blogs`
--
ALTER TABLE `blogs`
  MODIFY `idBlog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `idColaborador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `faq`
--
ALTER TABLE `faq`
  MODIFY `idFaq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `tblsobre`
--
ALTER TABLE `tblsobre`
  MODIFY `idSobre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `idTrabalho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
