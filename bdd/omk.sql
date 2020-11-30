-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 30 nov. 2020 à 08:58
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

DROP TABLE IF EXISTS `api_key`;
CREATE TABLE IF NOT EXISTS `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C912ED9D7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `api_key`
--

INSERT INTO `api_key` (`id`, `owner_id`, `label`, `credential_hash`, `last_ip`, `last_accessed`, `created`) VALUES
('xnlxQf6U9QAqhoUCQ43kTUKvBrr7paiY', 1, 'Admin Key', '$2y$10$M.NAuHYm74LLz2Bz4JTjp.C5ADp16b3u8ks2mVM5rVJqwx26N2IOW', 0x00000000000000000000000000000001, '2020-11-19 16:07:10', '2020-11-19 15:48:41');

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

DROP TABLE IF EXISTS `asset`;
CREATE TABLE IF NOT EXISTS `asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

DROP TABLE IF EXISTS `fulltext_search`;
CREATE TABLE IF NOT EXISTS `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`resource`),
  KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(6, 'items', 1, 1, 'student1', 'student1\nolaya\njaaouane\nhttps://www.facebook.com/photo?fbid=2430916867217372&set=a.1376966882612381\nolaya.jaaouane@usmba.ac.ma\nTHYP\nprof1\nprof2'),
(7, 'items', 1, 1, 'prof1', 'prof1\nsamuel\nsamscuk\nsamuel@univ-paris8.com\nhttps://calendar.google.com/calendar/u/0/r/week/2020/11/9?eid=M2MxNWlsNzZ0bzczcHIydDBqNzlwY2hvNThfMjAyMDExMDlUMDgwMDAwWiB0aHlwMTIxM0Bt&ctz=Europe/Paris&sf=true\nstudent1\nStudent2'),
(8, 'items', 1, 1, 'prof2', 'prof2\nimad\nsaleh\nimad.saleh@gmail.com\nhttps://www.complementaire-sante-solidaire.gouv.fr/vous_etes_etudiant_etranger.php\nstudent1'),
(9, 'items', 1, 1, 'Student2', 'Student2\nwidaddd\nchouef\nhttps://www.facebook.com/photo?fbid=1033679560481400&set=a.118132712036094\nwidad.chouef@usmba.ac.ma\nTHYP'),
(10, 'items', 1, 1, 'question1', 'question1\nquelle est votre langage de programmation préféré?\nanswer1'),
(11, 'items', 1, 1, 'question2', 'question2\nquel est votre niveau en python?'),
(12, 'items', 1, 1, 'answer1', 'answer1\noui j\'ai deja travaillé avec PYTHON\nquestion1\nprof1\nstudent1\nStudent2'),
(13, 'items', 1, 1, 'answer2', 'answer2\nexpert\nquestion2\nprof2\nStudent2'),
(14, 'items', 1, 1, 'Student3', 'Student3\nsara\nsarita\nhttps://i1.rgstatic.net/ii/profile.image/747400528416769-1555205580997_Q128/Olaya_Jaaouane.jpg\nsara.sarita@gmail.com\nSIR2'),
(15, 'items', 1, 1, 'Student4', 'Student4\nyasmina\nel asri\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230\nyasmina.jaaouane@gmail.com\nTHYP'),
(16, 'items', 1, 1, 'student5', 'student5\nname 5\nnickname 5\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230\nname@gmail.com\nthyp'),
(17, 'items', 1, 1, 'student6', 'student6\nname 6\nnickname 6\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230\nname6@gmail.com\nthyp'),
(18, 'items', 1, 1, 'Prof3', 'Prof3\nnameprf 3\nname prf 3\nname3@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(19, 'items', 1, 1, 'prof4', 'prof4\nname4\nnickname4\nname4@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(20, 'items', 1, 1, 'prof5', 'prof5\nname5\nnicknalme5\nname55@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(21, 'items', 1, 1, 'prof6', 'prof6\nname 6\nnickname6\nname66@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(22, 'items', 1, 1, 'answer3', 'answer3\nbecause...\nquestion3\nProf3\nStudent3'),
(23, 'items', 1, 1, 'answer4', 'answer4\nanswer4\nquestion 4\nprof4\nanswer4'),
(24, 'items', 1, 1, 'question3', 'question3\nwhy 3'),
(25, 'items', 1, 1, 'question 4', 'question 4\nwhy 4'),
(26, 'item_sets', 1, 1, 'collection of student', 'collection of student'),
(27, 'item_sets', 1, 1, 'collection of professors', 'collection of professors'),
(28, 'item_sets', 1, 1, 'collection of questions', 'collection of questions\nquestion1\nquestion2\nquestion3\nquestion 4'),
(29, 'item_sets', 1, 1, 'collection of answers', 'collection of answers'),
(30, 'items', 1, 1, 'question_answer1', 'question_answer1\nquestion1\nstudent1\nprof1\nanswer1');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(30);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

DROP TABLE IF EXISTS `item_item_set`;
CREATE TABLE IF NOT EXISTS `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`item_set_id`),
  KEY `IDX_6D0C9625126F525E` (`item_id`),
  KEY `IDX_6D0C9625960278D7` (`item_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(6, 26),
(7, 27),
(8, 27),
(9, 26),
(10, 28),
(11, 28),
(12, 29),
(13, 29),
(14, 26),
(15, 26),
(16, 26),
(17, 26),
(18, 27),
(19, 27),
(20, 27),
(21, 27),
(22, 29),
(23, 29),
(24, 28),
(25, 28);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

DROP TABLE IF EXISTS `item_set`;
CREATE TABLE IF NOT EXISTS `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(26, 0),
(27, 0),
(28, 0),
(29, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

DROP TABLE IF EXISTS `item_site`;
CREATE TABLE IF NOT EXISTS `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`site_id`),
  KEY `IDX_A1734D1F126F525E` (`item_id`),
  KEY `IDX_A1734D1FF6BD1646` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_site`
--

INSERT INTO `item_site` (`item_id`, `site_id`) VALUES
(6, 1),
(30, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'Omeka\\Job\\UpdateSiteItems', '{\"sites\":{\"1\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"owner_id\":\"\"}},\"action\":\"add\"}', '2020-11-15T18:20:52+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-15T18:20:52+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\wamp64\\www\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\wamp64\\www\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\wamp64\\www\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\wamp64\\www\\omeka-s\\application\\src\\Controller\\SiteAdmin\\IndexController.php(252): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Updat...\', Array)\n#3 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\SiteAdmin\\IndexController->resourcesAction()\n#4 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\wamp64\\www\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-15 18:20:52', '2020-11-15 18:20:52'),
(2, 1, NULL, 'error', 'Omeka\\Job\\UpdateSiteItems', '{\"sites\":{\"1\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"\"],\"resource_template_id\":[\"2\",\"3\",\"4\",\"5\"],\"item_set_id\":[\"26\",\"27\",\"28\",\"29\"],\"owner_id\":\"\"}},\"action\":\"add\"}', '2020-11-15T18:21:42+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-15T18:21:42+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\wamp64\\www\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\wamp64\\www\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\wamp64\\www\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\wamp64\\www\\omeka-s\\application\\src\\Controller\\SiteAdmin\\IndexController.php(252): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Updat...\', Array)\n#3 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\SiteAdmin\\IndexController->resourcesAction()\n#4 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\wamp64\\www\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\wamp64\\www\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-15 18:21:42', '2020-11-15 18:21:42');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  KEY `IDX_6A2CA10C126F525E` (`item_id`),
  KEY `item_position` (`item_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

DROP TABLE IF EXISTS `password_creation`;
CREATE TABLE IF NOT EXISTS `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(218, 1, 9, 'Educate', 'Educate', 'étudier'),
(219, 1, 9, 'Questionning', 'Questionning', 'Questionner'),
(220, 1, 9, 'Answering', 'Answering', 'Répondre'),
(221, 1, 9, 'identifier', 'numéro étudiant', NULL),
(222, 1, 9, 'firstName', 'prénom', NULL),
(223, 1, 9, 'family_name', 'nom', NULL),
(224, 1, 9, 'img', 'image', NULL),
(225, 1, 9, 'mbox', 'email', NULL),
(226, 1, 9, 'degree', 'image', NULL),
(227, 1, 9, 'familyName', 'nom', NULL),
(228, 1, 9, 'workInfoHomepage', 'Lien Agenda', NULL),
(229, 1, 9, 'content', 'contenu reponse', NULL),
(230, 1, 10, 'Teach', 'Teach', 'Teach'),
(231, 1, 10, 'Questionning', 'Questionning', 'Questionning'),
(232, 1, 10, 'Answering', 'Answering', 'Answering'),
(233, NULL, 10, 'HasStudent', 'HasStudent', 'HasStudent'),
(234, NULL, 10, 'HasProf', 'HasProf', 'HasProf'),
(235, NULL, 10, 'HasQuestion', 'HasQuestion', 'HasQuestion'),
(236, NULL, 10, 'HasAnswer', 'HasAnswer', 'HasAnswer');

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(6, 1, 94, 2, NULL, 'student1', 1, '2020-11-11 13:39:37', '2020-11-15 17:53:57', 'Omeka\\Entity\\Item'),
(7, 1, 94, 3, NULL, 'prof1', 1, '2020-11-11 13:43:31', '2020-11-12 19:26:59', 'Omeka\\Entity\\Item'),
(8, 1, 94, 3, NULL, 'prof2', 1, '2020-11-11 13:50:46', '2020-11-12 19:27:35', 'Omeka\\Entity\\Item'),
(9, 1, 94, 2, NULL, 'Student2', 1, '2020-11-11 23:53:22', '2020-11-18 10:41:50', 'Omeka\\Entity\\Item'),
(10, 1, 31, 4, NULL, 'question1', 1, '2020-11-12 00:24:18', '2020-11-12 19:32:38', 'Omeka\\Entity\\Item'),
(11, 1, 31, 4, NULL, 'question2', 1, '2020-11-12 00:25:15', '2020-11-12 19:33:02', 'Omeka\\Entity\\Item'),
(12, 1, 128, 5, NULL, 'answer1', 1, '2020-11-12 00:25:49', '2020-11-28 20:11:06', 'Omeka\\Entity\\Item'),
(13, 1, 128, 5, NULL, 'answer2', 1, '2020-11-12 00:26:21', '2020-11-28 20:00:17', 'Omeka\\Entity\\Item'),
(14, 1, 94, 2, NULL, 'Student3', 1, '2020-11-12 16:27:46', '2020-11-12 19:21:32', 'Omeka\\Entity\\Item'),
(15, 1, 94, 2, NULL, 'Student4', 1, '2020-11-12 18:50:47', '2020-11-12 19:22:39', 'Omeka\\Entity\\Item'),
(16, 1, 94, 2, NULL, 'student5', 1, '2020-11-12 18:51:55', '2020-11-12 19:22:55', 'Omeka\\Entity\\Item'),
(17, 1, 94, 2, NULL, 'student6', 1, '2020-11-12 19:01:27', '2020-11-12 19:23:13', 'Omeka\\Entity\\Item'),
(18, 1, 94, 3, NULL, 'Prof3', 1, '2020-11-12 19:02:36', '2020-11-12 19:28:09', 'Omeka\\Entity\\Item'),
(19, 1, 94, 3, NULL, 'prof4', 1, '2020-11-12 19:03:16', '2020-11-12 19:28:44', 'Omeka\\Entity\\Item'),
(20, 1, 94, 3, NULL, 'prof5', 1, '2020-11-12 19:04:08', '2020-11-12 19:29:04', 'Omeka\\Entity\\Item'),
(21, 1, 94, 3, NULL, 'prof6', 1, '2020-11-12 19:05:02', '2020-11-12 19:29:46', 'Omeka\\Entity\\Item'),
(22, 1, 128, 5, NULL, 'answer3', 1, '2020-11-12 19:05:51', '2020-11-28 20:02:53', 'Omeka\\Entity\\Item'),
(23, 1, 128, 5, NULL, 'answer4', 1, '2020-11-12 19:06:12', '2020-11-28 20:07:13', 'Omeka\\Entity\\Item'),
(24, 1, 31, 4, NULL, 'question3', 1, '2020-11-12 19:07:13', '2020-11-12 19:33:15', 'Omeka\\Entity\\Item'),
(25, 1, 31, 4, NULL, 'question 4', 1, '2020-11-12 19:07:36', '2020-11-12 19:33:28', 'Omeka\\Entity\\Item'),
(26, 1, NULL, NULL, NULL, 'collection of student', 1, '2020-11-12 19:15:22', '2020-11-17 23:54:29', 'Omeka\\Entity\\ItemSet'),
(27, 1, NULL, NULL, NULL, 'collection of professors', 1, '2020-11-12 19:23:51', '2020-11-17 23:54:05', 'Omeka\\Entity\\ItemSet'),
(28, 1, NULL, NULL, NULL, 'collection of questions', 1, '2020-11-12 19:31:33', '2020-11-12 19:48:37', 'Omeka\\Entity\\ItemSet'),
(29, 1, NULL, NULL, NULL, 'collection of answers', 1, '2020-11-12 19:32:20', '2020-11-17 23:53:04', 'Omeka\\Entity\\ItemSet'),
(30, 1, 127, 6, NULL, 'question_answer1', 1, '2020-11-28 20:45:28', '2020-11-28 20:47:33', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

DROP TABLE IF EXISTS `resource_class`;
CREATE TABLE IF NOT EXISTS `resource_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'Professor', '教授', NULL),
(107, NULL, 5, 'Name', 'nom', NULL),
(123, 1, 9, 'Etudiant', 'Etudiant', NULL),
(124, 1, 9, 'professor', 'Professor', NULL),
(125, 1, 9, 'réponse', 'reponse', NULL),
(126, 1, 9, 'askQuestion', 'Question', NULL),
(127, NULL, 10, 'Answering', 'Answering', NULL),
(128, NULL, 10, 'answer', 'answer', NULL),
(129, NULL, 10, 'question', 'question', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

DROP TABLE IF EXISTS `resource_template`;
CREATE TABLE IF NOT EXISTS `resource_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(2, 1, 94, 10, NULL, 'Student'),
(3, 1, 94, 10, NULL, 'Professor'),
(4, 1, 31, 10, NULL, 'askQuestion'),
(5, 1, 128, 10, NULL, 'Answer'),
(6, 1, 127, NULL, NULL, 'Answering');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

DROP TABLE IF EXISTS `resource_template_property`;
CREATE TABLE IF NOT EXISTS `resource_template_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  KEY `IDX_4689E2F1549213EC` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(22, 2, 139, NULL, NULL, 2, NULL, 0, 0),
(23, 2, 144, NULL, NULL, 3, NULL, 0, 0),
(26, 2, 154, NULL, NULL, 4, NULL, 0, 0),
(27, 2, 123, NULL, NULL, 5, NULL, 0, 0),
(28, 2, 63, NULL, NULL, 6, NULL, 0, 0),
(32, 3, 139, NULL, NULL, 2, NULL, 0, 0),
(33, 3, 145, NULL, NULL, 3, NULL, 0, 0),
(34, 3, 123, NULL, NULL, 4, NULL, 0, 0),
(35, 3, 160, NULL, NULL, 5, NULL, 0, 0),
(37, 4, 10, NULL, NULL, 1, NULL, 0, 0),
(40, 5, 10, NULL, NULL, 1, NULL, 0, 0),
(41, 5, 91, NULL, NULL, 2, NULL, 0, 0),
(42, 2, 10, NULL, NULL, 1, NULL, 0, 0),
(43, 3, 10, NULL, NULL, 1, NULL, 0, 0),
(44, 4, 91, NULL, NULL, 2, NULL, 0, 0),
(45, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(46, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(47, 5, 235, NULL, NULL, 3, NULL, 0, 0),
(48, 5, 234, NULL, NULL, 4, NULL, 0, 0),
(49, 5, 233, NULL, NULL, 5, NULL, 0, 0),
(50, 6, 236, NULL, NULL, 3, NULL, 0, 0),
(51, 6, 235, NULL, NULL, 4, NULL, 0, 0),
(52, 6, 233, NULL, NULL, 5, NULL, 0, 0),
(53, 6, 234, NULL, NULL, 6, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('5jjr95kl37u2sa26ho96okfj0o', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363732353737382e3836393132363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226d6f663962666e6b6b7437616736336a346e346137396d637665223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363732393335343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363732393337353b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223537666434666336323135376633353962393966306535323764656561353363223b733a33323a223432623034373166306334363564336531303666646364376433623065396665223b7d733a343a2268617368223b733a36353a2234326230343731663063343635643365313036666463643764336230653966652d3537666434666336323135376633353962393966306535323764656561353363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226435653630633437333165396135633530373937656636626561643930666536223b733a33323a223838313963313237346462373334616665636333383065643537333765623134223b733a33323a223661373233393361303865626364323465336630356636656534656433353339223b733a33323a226434646339323062366139343438616630376632323061656566303166383765223b7d733a343a2268617368223b733a36353a2264346463393230623661393434386166303766323230616565663031663837652d3661373233393361303865626364323465336630356636656534656433353339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606725779),
('jr7su1mobfga0s355quem742ia', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363630343439332e3939333438323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2269667661616b756e6f366b697039643161666a716b756a346b64223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363539323130303b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363630343134383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363630343134383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363539343739343b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363630303132383b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363630303030373b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226363313361363838366261396663333736643636316135336466386537663465223b733a33323a223365613264343861363034326333643233326132363964346339313932383566223b7d733a343a2268617368223b733a36353a2233656132643438613630343263336432333261323639643463393139323835662d6363313361363838366261396663333736643636316135336466386537663465223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226332646434303235366462663132663930633930313632303632333734323565223b733a33323a226139643235353831353335333238353064623035633562666432336239333331223b733a33323a223635633738376561383662356637663434333835356333646438303965333432223b733a33323a223237326339323134643964396636373365393239656665316465656234326662223b7d733a343a2268617368223b733a36353a2232373263393231346439643966363733653932396566653164656562343266622d3635633738376561383662356637663434333835356333646438303965333432223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223937326563616362623934346330393233633934323130636465623165393739223b733a33323a226665663137343265616334313337343561633064396335633766653838626363223b733a33323a226432393961393535353765333235313262363265613732343432383161653239223b733a33323a223461653062643735613466323035326466323731396137356637376133303738223b7d733a343a2268617368223b733a36353a2234616530626437356134663230353264663237313961373566373761333037382d6432393961393535353765333235313262363265613732343432383161653239223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223539353266363036373333303834656565323635363037633966336539356430223b733a33323a223263666435336463363538323831656165333332316534666265313637643935223b733a33323a223336663566633032366662613936646337613261356337663330306236346338223b733a33323a223964633932333038316630653331633562643866326263656137633662653038223b733a33323a223337313238386336376161653366313464323239343937616162636164343837223b733a33323a226361643434613936623532623435373537376561306337326131663235313135223b7d733a343a2268617368223b733a36353a2263616434346139366235326234353735373765613063373261316632353131352d3337313238386336376161653366313464323239343937616162636164343837223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223363663537336432313164333239353636363464613334376339663536663862223b733a33323a223066363431643161303039303131303063333939623732643464303635336162223b7d733a343a2268617368223b733a36353a2230663634316431613030393031313030633339396237326434643036353361622d3363663537336432313164333239353636363464613334376339663536663862223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a226363393564343961353235636664613337306265343937656664343262666331223b733a33323a226532323439333961333633376237323136343234336364333131663964653963223b733a33323a223533666263343134313963306134333933633333323738623762633338643466223b733a33323a226432303730316236353438373038626437626662323261653337623235316138223b733a33323a226535393536333366333539386435376335343062393431663836623464623639223b733a33323a223865636439306139333631653131633538313032666339343138303136643238223b733a33323a223161616465346132323333376131343931336366306234666336363866353238223b733a33323a226365646234393265623033303638633035326230623038323833616230356161223b733a33323a223362623465346265616265613331346364653562343563383835653238356365223b733a33323a226132353764666636633136346630323063663635343530303432363230386363223b733a33323a226161613261383437333637646566386465323437623264313133313439363830223b733a33323a223537363236646639333866663735653864346231353932363863343134366463223b733a33323a223164643634633162346365353133306132663266326438633430333163336531223b733a33323a223564326266393833643439323538626164306366643464366136393262326537223b733a33323a223337653162326362393565363438326635306661653563626164623634343730223b733a33323a223930346566313938366463376636616265633964353536633564646131323965223b733a33323a223462326262663961386432366464663230623834626430663962343962363662223b733a33323a223630376162393335646235653439316136316463393332393462636630356661223b733a33323a223631356363663166643362656561623339386438313163333931353639636334223b733a33323a223139343031396330653766663139313430373864653562373437316662303765223b7d733a343a2268617368223b733a36353a2231393430313963306537666631393134303738646535623734373166623037652d3631356363663166643362656561623339386438313163333931353639636334223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606604494),
('meslmo8iuv8cpu5fuvm5ellpef', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353636313636352e3630333837363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2234666f766f666633726e31683170676375757631363366687473223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436353936343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353636353236353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353636343935303b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383131393b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383838393b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383539343b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226662623864656662303039636234613538383639336563623939323864613438223b733a33323a226361393530366261333363323638353662353538383038663038336138346361223b7d733a343a2268617368223b733a36353a2263613935303662613333633236383536623535383830386630383361383463612d6662623864656662303039636234613538383639336563623939323864613438223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a223638313163346633633463636562613366646166326431666335386465393061223b733a33323a226639373838303062356433353738323363633538623337373235623065393231223b733a33323a223530656634653335303339376432303338333265363137653364623438626163223b733a33323a223939323864653238386230313865623363313261313864643030393635353437223b733a33323a223663616664633566363631393761383832616432326537626239313066626135223b733a33323a223834343361353962626138393738666662356133656162656266623131666531223b733a33323a226435656261373233313561313831303034623166613562386166353732343162223b733a33323a223232356461666232663265333135316433306535653061393164353334626566223b733a33323a226639393139633436636566646139313333653332366661646563346566313339223b733a33323a223666616331343061613761326537333065383434643165626536383437326134223b733a33323a223966333665383262643562346231303038356638316336356165616136623765223b733a33323a223335613638396436306136383430393634346561636530373862333634663965223b733a33323a223831633561636564643838326130636165353934313338653761346536613438223b733a33323a226432336663643435666462393331353366396538393438643063383931353635223b733a33323a223165623634306262373539303136346463366630313931613761663363616662223b733a33323a226435343030313431626132623334666263376633636636343437643637313265223b733a33323a226430653333656233626130626664616264393734666338356435366538336231223b733a33323a223234303030393730373832646464303031313235306337363334623035333439223b733a33323a223764666237386237313463386635316632633864383664623935613033353464223b733a33323a223761386132333035333236393561303936303832653862316339356263353339223b733a33323a223361633335613561643832386562323661303032373932343465373462366533223b733a33323a226366663536383732326263393564373339383633306461613264663339633230223b733a33323a226464353662316537343832336137393033613361336131623534663435353133223b733a33323a226631313339623936666331376234623433613437366134616362636238313935223b733a33323a223131623165623232326265383731353738646137306630323866336232643265223b733a33323a226136383837383264383865353338343631336234303634333434643161336434223b733a33323a223534333837363561643163613835393330653239343534316136366465343463223b733a33323a226562356334636532383038343932366432636663363431346664346438356630223b733a33323a223165663065363131336163616664353362363565303335343962666431303834223b733a33323a223836383134643162656134303034303932653364643739626337343734323664223b733a33323a223337396639653535393562303832363332386262386634656233666536343530223b733a33323a223064393136383763333863316630316538616563386163383363333632623366223b733a33323a223862363761633339366266303732626432313264303639316436306230393134223b733a33323a223537316638326136353934313964636464393464316532383438383638356239223b733a33323a226666663532343764303264303438363330623461313332303063633563316161223b733a33323a226630323932633766633366336161636330646136353664336631333933663435223b733a33323a226461333166386630346262643134303638333136623934613961636132353964223b733a33323a223964373365376231383163373637376662626364313065386430373165303336223b7d733a343a2268617368223b733a36353a2239643733653762313831633736373766626263643130653864303731653033362d6461333166386630346262643134303638333136623934613961636132353964223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31313531333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3134303a7b733a33323a226431303435636338363738343738313330636530633436323333396665363737223b733a33323a226562623232616637376665333538613834363738323138313263633766623535223b733a33323a226631643464633765663736323432666464303230633764336235303334613136223b733a33323a223061656536373131313938313833643332386366393835663264653134616566223b733a33323a226563326430333962353733323634343936303034393032303362356133666533223b733a33323a223133366639633561366639373735663838343262323636343839356436646138223b733a33323a223762353062343166366364346665323135366336373135313736393536636237223b733a33323a223439346565323437656463653732616334653830313531383364323732616437223b733a33323a223032386433666532653832333134613834376566666334393166373865313830223b733a33323a223933396130393734333336323730363931613736326632386362313661336364223b733a33323a223933316430396231396233333662333863313832643966623464363530613234223b733a33323a226138346464353562613230336638393062393838656661313632323861323833223b733a33323a223462366663316233383366346364353164366632376133393633613531343936223b733a33323a226466366566373732653135383830366363316637353664343061303139383535223b733a33323a223363333739303239633432323264633432393463386334383339393662623862223b733a33323a223561373061643738373534636462666235373831623963613533636138663432223b733a33323a223862613330373062393136396361343834356663386164623335356432306431223b733a33323a223134613131653934353266623231326365663734616364386536643734613038223b733a33323a226237303630653339333062613266333033316531326231313130393130323732223b733a33323a223765393430666636393036323532386235323630313665306139313435316431223b733a33323a226533643338663431323161313465343965396365396661333466636637333161223b733a33323a226630643265646566633436663965646330636631376639613937333335366337223b733a33323a226462613162633061333934353766613331326439356561616361636533633732223b733a33323a223633346336633639396239373530353837373637356238306166303031663638223b733a33323a223564613436636465653830643030346230346164363866646133366561346232223b733a33323a223032343732353861616237623132336533313562623531383133376638313535223b733a33323a223232303433376538396431343034626165636365383863643630626535383333223b733a33323a226338616663306538663964396466323437396266303833363330653630633465223b733a33323a223566343834643238613230653432376263383339363165313935306466363964223b733a33323a226634653965613165643535393564636636626364363834313663396634366135223b733a33323a226363376363333566343138616431653339623835356237393361633862303762223b733a33323a223633356632393132636264656266633362343062653562303230363632346636223b733a33323a223430323233346239336263623936346635356636626365616635393064626538223b733a33323a226133326136383632353235336165333666656435663537626563326531326434223b733a33323a223030616237613366333233373134613262623134663666336236336330363439223b733a33323a226162356563653361663938313537393665373635613537666233316264653265223b733a33323a223831313236656437303332336162623032336635386232646239353237666335223b733a33323a223662323437383639313265643738353431363730323066356364356666373266223b733a33323a223534336561656264346565353634303632623330363635656264366236336564223b733a33323a223961336164306165323864336239626664666238346533633463326531323239223b733a33323a223066343664353936393531636231613738373430646533373861376361656263223b733a33323a223734623335623230366537346539303961613735373334396161656234663862223b733a33323a223761363732363830333335316338366530633736393331333563366635363165223b733a33323a226636323665396636303135383739313364353232356334613634613264336661223b733a33323a223736313561653538393665306334613966633165346537316563386563353730223b733a33323a226566373662636266643566363538356236343566663033313663633031373932223b733a33323a223533356463383265386635623231346264663530396137616262313739356565223b733a33323a223938353630643733376239663963653564386563616462613062653935663561223b733a33323a223631316330646239616137383632613638323134636461366537626166663564223b733a33323a223832343339386337326631373536626237363734616331333266323237656362223b733a33323a226338633336653037346565653062303438373530666232396364623838643762223b733a33323a223634326666656435393038376264643330663238316231366463643338313565223b733a33323a226235366635313862313934363036376563643139633137663866326438303633223b733a33323a223235636132326235616635376361633634633963366138656562363330353534223b733a33323a223437303263393838633462636531663431393361383065376161646331326434223b733a33323a223734353438373933373861363664393633326238643732323230613365366337223b733a33323a223837316132373733393139643430346230643730396566623232646661626132223b733a33323a223263373164383934383532643564336138656433646431666563316230636638223b733a33323a223062356233326664643631306339323261623865313564363164633731623535223b733a33323a223164376333646239303161656461306661313938323834356231333765386361223b733a33323a223465383433636435363539393761646535356438323836326561643465316232223b733a33323a223432396266323035646436393335663837363162363830376161653034306332223b733a33323a223031336564323434626165373465383462643437643866306639663637653263223b733a33323a223564616630383538643466666238353530636632376331343262316461633064223b733a33323a223335633365363731303031353731313933363731626632373837343231363735223b733a33323a226531303866626332306438393865333135373062396364373364363631643163223b733a33323a223232333238626430373063643330303633623936393361643164373362363165223b733a33323a223562373139303665346331336461363437313764663134326634356134363435223b733a33323a226235343361353866393139343163333835386636363066393131656566666365223b733a33323a226466633163373932626131653033613231666333613433336338343836323162223b733a33323a223364356436616234313834386662346264336661616364353065666666386638223b733a33323a223430393533373432306238306430323634343863323635353134303064636339223b733a33323a223736303135623131313336373265363566333833333237386162386462383738223b733a33323a223739366439656230326561616632663035313763336466343465373336346261223b733a33323a223936316233373137383665353330313338623430303265343438343561323962223b733a33323a226365646131376533373837353633313063316132316433376538383030633162223b733a33323a223766303931373061373231313131373065383834313337373237666366343862223b733a33323a226237663265366231316163376630653335343135626462343963666132303538223b733a33323a223033333435346631336235636531623235303264323063393966363833666461223b733a33323a226239356461383832663036316237333936653133613163623831623237316530223b733a33323a223266333566333066386138373739313339663863313136633262363336336239223b733a33323a226434646338326265386437383862373431383930636131373661376531313633223b733a33323a223766633065653036643935653430643066636162646537313239663739343131223b733a33323a223038666635316165376235333765343262373563343736316562666566383934223b733a33323a226235386439353632376464636438316665626533373237316364373266356131223b733a33323a223738646438306435623737386565393364333636316136633133313165316630223b733a33323a223463386630393963373066363531363739656264366335336433613466353264223b733a33323a223737626262616539643030626161663235346464353339383638346465363366223b733a33323a223966373062343839666565383339323034363162366565633362323365326631223b733a33323a226663306638633566623862376437383366336464383562646333623832386363223b733a33323a223162633965383039333838376136363235346537396166356463663736336362223b733a33323a226139643038393631666337616130353039663738656164623736366361303363223b733a33323a223937313730326136333063373433373439653732353961383539346365383663223b733a33323a223234323065373836346236393030336331313665643266363738333461346132223b733a33323a223336393736366335343234356538613763373736353430623961343439386235223b733a33323a223563313131376637303635653236303933353335393866393037323738643961223b733a33323a223261646437663065353632343866303830356563653738626533356230396365223b733a33323a226639346530333131396132366634343336343336396561643733626261643835223b733a33323a223962303032343661646662343262363666383438383364363863393665653064223b733a33323a223633383361313066383530376133643432656536326265346163663963386164223b733a33323a223065663534333832383033363335333964613936393537376164376131653031223b733a33323a226236306536383465383263353138303635373861663630376633343236353235223b733a33323a223830386465313932313664663962333563316666306163626137316562613263223b733a33323a223963386633383439636366383863643034333234373963333033326138316664223b733a33323a223465373562396430366532313231333861326631646461393266346665643164223b733a33323a223235376565323865346237663833353239353231373663623662386535363434223b733a33323a223735343239633636633638346537353465643939623362636233323461663261223b733a33323a223139343466356636353638376263333730633338356233653532393065643737223b733a33323a223530643135313533356430633030633132336436656564353864383138663061223b733a33323a223038303163393335376231346465366436316262663338613336336436316164223b733a33323a226134633538646166303238356232633730353639383338633563366537353237223b733a33323a223337383738316161306535343734653566373666306530663538373864386261223b733a33323a226332333636313831306563383962613335636136663539303236303965376265223b733a33323a223137316633633535386564353232333963303863363531653366303539323365223b733a33323a226164356339386464393663316234393131373762373530666263343665373364223b733a33323a226561663866326635336164613435613739663836656238613736663937623565223b733a33323a223865313136653135353837666638313162363036343332353733383631633537223b733a33323a226663343239633933653863343732653666373836643731376464306264616337223b733a33323a223731366465636234343336363834383332306262356237396239653731626439223b733a33323a223363626563396633356162623061366634633530656262633064613562393964223b733a33323a223163343464373531336533633465656662366437333438343666626636663961223b733a33323a226231666166353163323634356163646162323561396465346331663463373934223b733a33323a226163643637323334376634363939396335316238386132313532666665363163223b733a33323a226263663362356464633566316134656331633466313463343537646534613132223b733a33323a223135623837303732386364373136393761353466373434363734346231356435223b733a33323a223066616338343965316433376232666363643638326539303137386337623734223b733a33323a223565643930643135623437656631353632353036623864396163393233623863223b733a33323a223331653434353233346162393739623034376461633736623864383661663931223b733a33323a223033306236343134393564613866643934306464356431626638373237643838223b733a33323a226636353230376464323166313431353633343339613839633536643762666338223b733a33323a223938316461626535336262313730663239356663373237656366336436616364223b733a33323a226166656465623561666365393061366638393638386433616362366265363031223b733a33323a223766343930333566633866303635333362306232393434376532363864303662223b733a33323a226631353964366534666564636239623263346163343035626337323163393134223b733a33323a223639383464353366303865616262393261653838373366396238616463643836223b733a33323a226162666631346433653935323238383534653562343134363732326564366437223b733a33323a226364626663393561326432376665373565363832316138613834636366363762223b733a33323a223831666135303433336561356165396166353363623635366334326264393639223b733a33323a223662303539336561626537306537313031376533386632666535663534356433223b733a33323a226338643566313634616565396566633132326336373832626432356232363265223b733a33323a226637306237393938393161643263373237366335663162333132396261353030223b733a33323a226233643433373765353961613765623131656461346239643638333530656630223b733a33323a223262373663383237366464313030653339363738353539663462613531636537223b733a33323a226362376165326336616461346565623362376431313162356636633136646132223b733a33323a223962303566646232323139653838326165316464653865366438353530363738223b733a33323a226536353434383062613835623863313932383663623361383432393337323938223b733a33323a226639373839643836343233356461633761666639376232363439646639333333223b733a33323a226464346563383061656533626232376531356661623634376434633661373431223b733a33323a223733383263393537326235653633306132656232303461633266393533343235223b733a33323a226236323664313232666437333864646365333733316535616331303361336533223b733a33323a223131353631623631336134303230653662303563353363383736356131616563223b733a33323a223431376661316339343339663364336137343130623564613133626166373733223b733a33323a226230353562656136636336663230383661656161636232313236363663306634223b733a33323a223635623634343130353232396537396534663965353930623465333062356537223b733a33323a226264623862326664376137366534313338343565306532653734353865653766223b733a33323a226231343930363136656632653666303933306562343434346437383734343462223b733a33323a223164376364636134333335316434613637306231626661656537613732303962223b733a33323a226462336133313233643566313035663363326464373564653130323930333164223b733a33323a223832373631306537313763613538386433333762363261346435383166353761223b733a33323a223531616161336134353234313635326261383865333531373737346466333662223b733a33323a223733646663323364656461313730626238353364326438646136316566333633223b733a33323a226232303061636361323035326161656461383561333231663333316634356462223b733a33323a223935613062613339666161303230303162633064343962666332633339376664223b733a33323a226530316366333035383466333563313139633033366166393131366538393637223b733a33323a226362356264333736656539383765626635643037316566343037626336626665223b733a33323a223239393831376634633931653437616234626362653134666664323362346162223b733a33323a223162623365663433326237636337303534383737303737376430346638613761223b733a33323a223531616461633162336330313237343835656339316537376137663365653039223b733a33323a226636656435663031356639366438333262356139623835353731633061646437223b733a33323a226637656532656133336634326531653362633863613832386436656365353263223b733a33323a223635366362613537656535643563366235386364616562386430316165633634223b733a33323a226430316132353237363163653930313130653133616365373863306337353061223b733a33323a226438613962636164313561653935363965376664663038653734336338613235223b733a33323a223564373964383663646235393961656533393730656139353064616437656339223b733a33323a226238373935333763613431303137656136666639393133323632346161643465223b733a33323a223630376338373335306634303965326434653031366466353434646331653966223b733a33323a223266353331363733343432386162643236376439303731393734613338386465223b733a33323a223561383334383738643461663830623334333136373739306331613938303564223b733a33323a223566343761646263303539316664393437666134303736346262306236616265223b733a33323a223930303161326365643631646331653131623962383732303235346533366638223b733a33323a223332356237643531353837333331373437653739626462643166383364383038223b733a33323a226162373366633337376361343863616666346231376437643739383132656130223b733a33323a226439386137356436643562326265313638356332353136623539373738393962223b733a33323a223035626465656137643965653433643836343632346361383238316337373133223b733a33323a223065613261343038303561316538353134356364626434353063343035373237223b733a33323a223838376330343962323464393138363332636435396264643132616432356163223b733a33323a223733346436343063653766383530383031646434393630626134663061393166223b733a33323a223835613731613231396534383435646464376434666266326437353033396463223b733a33323a223532633061656232663563363233396337616331366261336239323631376364223b733a33323a223239663334323463333531356633643766643831336361636563653437393864223b733a33323a223931373836666161393336386663343265336230636633353235346334616437223b733a33323a223836633965643364633862313432356462656234376238386132313838393064223b733a33323a223736643535646536356462356236366533306632653232333234343931373763223b733a33323a223032373863653161353334386461393663333931323265656136613465306635223b733a33323a226435316536343034653661393265373965663738346662343466656161306137223b733a33323a223065356335393665393136663132306666333838343763326465616463326237223b733a33323a223961646666383036636461373433653333313761363965663865663030353462223b733a33323a223062383566316334323465316532666663633737353763306231323930383232223b733a33323a226539333165653161383364323933616461343236316135663361626665333238223b733a33323a223764303033373662626165366261663731653033626636396333353363393634223b733a33323a226430336662316563373036663765303463333834323133613835306163633935223b733a33323a223066383833623136666132373836376230336531653231306661336666326139223b733a33323a226437616334303963636139383363383061333266323238663561313361313166223b733a33323a223630626561383032633531653463373233613630646232636439613261646264223b733a33323a226437643763303436353732633235366437626332343136646237383038636539223b733a33323a226537363330383065323731333364303735343637626132666563663435303631223b733a33323a226239626433643536633762313532396530643764323230333436343333346231223b733a33323a223164653662306265343837306161343539373763363632383732326265343732223b733a33323a223661633637343830383861386563306238643563393565303366396133636166223b733a33323a223965613766383864643739353731343437373261643063396639623632646463223b733a33323a223831643965336639366666663061373235623362656464306434633731616632223b733a33323a223430353133393435366337353562633561376632373634343466663564333265223b733a33323a223532623139356130336163666531363137323066373035663232636363373734223b733a33323a226463613832643334383532643735366436343561646432396462613164343632223b733a33323a226330633761613737353561333832623839356663353332313765376336613132223b733a33323a223736313864646564623539343538346166383937333163613830376366333834223b733a33323a223232363265656664663535373363323331306436646563663436643236623464223b733a33323a223661356662363266383834386532653636356166356162303330643830393134223b733a33323a223830613937643238656364316335636530313035396165633336313137623565223b733a33323a226263386236616334353661343861633239343166333932656333323034353739223b733a33323a223631373937343166336231616161346330386661346531386461616331623436223b733a33323a226136613831646435386161613934393566636263366434363264613431336631223b733a33323a226164646164633565386364366333393130356332633137393734383730643535223b733a33323a223834633761613161363531636262306133616138633330356132643432323038223b733a33323a223234643932333435623864393164343663393862356130366337636230333731223b733a33323a226563366566316132643039623532636464623630663133393661356631623139223b733a33323a223235353061633863323561646163616331633861396237643463633861303336223b733a33323a223533643035653265666331326562663939663336666531376238373439636239223b733a33323a223535326235303536383732373535313661663730353761653532333833336463223b733a33323a223566306434386239363038383031623136323166623664366432356231346663223b733a33323a223130383332393662306536656537333461386238623161316564656564316330223b733a33323a226432333665646634663339393763343538353061623061663433653234366364223b733a33323a223436623862633664306238666134383636326132323432343731633630373038223b733a33323a226538653732313063353134643865326166323832623139333562326339346331223b733a33323a223261366563646262626663633233373934663231303535646261643731386465223b733a33323a226265333938636533316232313434633234646439633065633234663665363738223b733a33323a226166373062346432396164343134643462306537346561626232363137616263223b733a33323a223761643438373761313237623261663234613561306637336466626337646135223b733a33323a223064393461633631366666306533613737363034346433366537306366363732223b733a33323a223536633663326566316165346239376537303438316536653139336230653061223b733a33323a226666323064653331326163353238646633376231316231663561353532313232223b733a33323a226237613063396366333231666634333336336561393863333138336131376536223b733a33323a223832623037343035316332393936653064303361353662646361666163346437223b733a33323a226133336531656539373431373436393535353832366232353133323839333738223b733a33323a223964666335643334363536383465373662323133663365346461396139646637223b733a33323a223366386638663939643731343762633262373136646136633462613033653933223b733a33323a226235613232356332626332313930313232313733313364396139326234653235223b733a33323a226533613239626430363739326434633236376333303766666464613936313064223b733a33323a223862396434353030613230343537613437333935613735303536366661653265223b733a33323a223966633962313365353537393237666435333861316434363762393732376166223b733a33323a226437666635303364316133323034643831323432663532666139626563396233223b733a33323a223866656236623063376166376637356535313933653732373862353434303165223b733a33323a223339336139373966373131643164306339666161333966386639323162636566223b733a33323a223334653066373239386131336661626334353666613865613538313234326539223b733a33323a223731616266306630663464373362373437306437353064373135653430633965223b733a33323a226330356531623538323637643964666566646564636330646635633964663666223b733a33323a223766346332306531666637323865343730646439333137383861316664386365223b733a33323a226234373638383266633230623963336533333365343935653166616265666634223b733a33323a223338666634343861363135366330366264323835386139363734626462613137223b733a33323a226562336630333933386535366339396433613965303362343134363438626631223b733a33323a226434656132343633356536376364356636393166613633373834633661353330223b733a33323a226331653633623964356434646337363263383561323837393833336436653166223b733a33323a226332656264333766396466656239656234306336343330343130363034656430223b733a33323a223630393663363739386230393133656337313035333437306238356666306662223b733a33323a223834326236333565386663363637336161326666363139373338306461666362223b733a33323a223632313734376263366337393538326631333163663136333330346262323632223b733a33323a226339653636326565666633333535656266313865333036613231363330393130223b733a33323a223938663636613465326334623361656239313635613334363161643935316330223b733a33323a226530623834633333633261303736363531633434616563613132323536393839223b733a33323a226134353032616230326162336438346462666164323735353462396564386436223b733a33323a223637366138663436653161383566326130623630313265633231393930393737223b733a33323a226234353135663336393031636138383864313666663832626366393638326530223b733a33323a226330393666346133653563333936323133383231303335346462666239316566223b733a33323a223234643739303030663630633561323961636463653138393363353363373333223b733a33323a226261383938303435303532383562636631643733663330636234613566393938223b733a33323a223535656533383931613466316432343137376134386133373464316630633762223b733a33323a223335663338666362303566376534623339343835653665373739656566353230223b733a33323a223631323364666231646136373237326361386337316137323064633461366464223b733a33323a226234346131643337633236323539323231393363326266363138646635393930223b733a33323a226539393233356436616164653266303134396365336233356531333833393566223b7d733a343a2268617368223b733a36353a2265393932333564366161646532663031343963653362333565313338333935662d6234346131643337633236323539323231393363326266363138646635393930223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223231666431346237356165363261313138393762623032656463383266306538223b733a33323a223862373237376462363732353230326662343530643835643161386635623834223b733a33323a226133396465616335353166306431326361396664643865373731393965653538223b733a33323a223232613234376664643161393632323465613163383430633239646164633761223b7d733a343a2268617368223b733a36353a2232326132343766646431613936323234656131633834306332396461646337612d6133396465616335353166306431326361396664643865373731393965653538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223265636433663730633133643135323364326133333135393533613636333030223b733a33323a226561653938646230363133383466636139306162363966653265643035356630223b733a33323a226632366566646434626437666364356366373438373737393733643731646338223b733a33323a226231323762383062323737613035363563366331376136623933633764303964223b733a33323a226562313533643330363031396565646464316630646365623335656530376531223b733a33323a223835393532363033366264663565366539346631643637386537653365326133223b733a33323a223938306362303435353833663633613863626239326566386338363331303165223b733a33323a223537326463366465363530366432316136306332626538616537643438366466223b733a33323a226632663866323637626339626561343434623461636362383934633861303864223b733a33323a223261666638666136383165363939666462303132616532623133353536663165223b733a33323a223937356130313265336631383038326465646636653433353830633063653834223b733a33323a226433386534643932613936653430313431393665653866333363666664326363223b7d733a343a2268617368223b733a36353a2264333865346439326139366534303134313936656538663333636666643263632d3937356130313265336631383038326465646636653433353830633063653834223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223165393762396461623366356338386364626436626135346635356564316163223b733a33323a226535636535303037636637336232616263653039373332616666333763366137223b733a33323a223265616133663931633363316566623933306566373162366532316165303364223b733a33323a226135383166356332623831386339373739373261363461383437633934313531223b733a33323a226632376231326333363237376561663566353836626434356634616130336263223b733a33323a226362393939613466613931356165316135663834336263366435343836386163223b733a33323a223539376637633438633561396164326662333065303832363565663230633333223b733a33323a223438306432376163303964363165333136363766623265383836366433636534223b733a33323a226562613063343238623736323062343034376339636238383865313235366462223b733a33323a223535393034393462343730636363616662336139343137613665306433336462223b7d733a343a2268617368223b733a36353a2235353930343934623437306363636166623361393431376136653064333364622d6562613063343238623736323062343034376339636238383865313235366462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605661666);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('r3hlralgbb7vipaipbp3m2h7og', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353734343533382e3234313335363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22766167756d72633233347070347230376a646339397371747275223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353639373933313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353734383133393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353734383133383b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223532326437303262653665653635623634323931633333666337616137393166223b733a33323a223239333730616232666666313537666566346138303664623330666438653434223b7d733a343a2268617368223b733a36353a2232393337306162326666663135376665663461383036646233306664386534342d3532326437303262653665653635623634323931633333666337616137393166223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223139303130343765313962396632633862386639336235386532656633666233223b733a33323a226166386134663462636133303361396233646437626535393363323632326332223b733a33323a226632363266306631666134363338643433316463323964333236613861396431223b733a33323a223639383937356166643666623663306439353461323766323031393336393666223b733a33323a223834663035656230383532386630386238393332343062383039343761353761223b733a33323a226665336432393030616230616633343566386464393465633233373538393763223b733a33323a223264346338666635643431303339313033663630626430653964666261356461223b733a33323a223562303333383533386331613436323466393839636632393435656566313730223b733a33323a226636656636353839326331323536343531653736633961356364326333346631223b733a33323a223665373133346231656337386338373861653363356663363036313130323838223b7d733a343a2268617368223b733a36353a2236653731333462316563373863383738616533633566633630363131303238382d6636656636353839326331323536343531653736633961356364326333346631223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226535356435623266613837663664356363306333353061643930373531353537223b733a33323a226366313733303633636330626234363663353732336364343535616631646531223b7d733a343a2268617368223b733a36353a2263663137333036336363306262343636633537323363643435356166316465312d6535356435623266613837663664356363306333353061643930373531353537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605744539),
('tccnoh5nc0vrsi91c2dfqhfevs', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353838353837322e31363931363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22726e65626a6d62303766303775626333396672666b3830627470223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353830343432333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353838393432393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353838393432383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353838303434313b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226337323161323630636536313432386136313463306634313361623330333465223b733a33323a223535333462366237623264663631353864356237383233316532303834613463223b7d733a343a2268617368223b733a36353a2235353334623662376232646636313538643562373832333165323038346134632d6337323161323630636536313432386136313463306634313361623330333465223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226132393563323366366361343737656135376338383434366463373966303539223b733a33323a223661346362663766373234383865623439623730376130613163633234636664223b733a33323a223731356665633832646633663235346564346536373637623664383832386161223b733a33323a223432356336333630616264306663623161326535383938366333366430656166223b733a33323a223331356162353339393833653131353563346137376533383064383630646662223b733a33323a223538353637383961376634373933653832333466393734326535663634396431223b7d733a343a2268617368223b733a36353a2235383536373839613766343739336538323334663937343265356636343964312d3331356162353339393833653131353563346137376533383064383630646662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223138333236386266646333356335306664383134393166633663333230383836223b733a33323a223635613266316339616563623831653036623830633936306361633364333836223b7d733a343a2268617368223b733a36353a2236356132663163396165636238316530366238306339363063616333643338362d3138333236386266646333356335306664383134393166633663333230383836223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226164336131373435626636336135616237623630373764386236313137343434223b733a33323a226635393131653534613530373565663935383132613265356631336230303862223b7d733a343a2268617368223b733a36353a2266353931316535346135303735656639353831326132653566313362303038622d6164336131373435626636336135616237623630373764386236313137343434223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605885872);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"olaya.jaaouane@usmba.ac.ma\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka\"'),
('locale', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"UTC\"'),
('version', '\"3.0.0\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  KEY `IDX_694309E47E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`, `assign_new_items`) VALUES
(1, NULL, 1, 'test1', 'default', 'test1', NULL, '[{\"type\":\"browse\",\"data\":{\"label\":\"Browse\",\"query\":\"\"},\"links\":[]}]', '[]', '2020-11-15 17:47:28', '2020-11-15 18:21:42', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

DROP TABLE IF EXISTS `site_block_attachment`;
CREATE TABLE IF NOT EXISTS `site_block_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_236473FEE9ED820C` (`block_id`),
  KEY `IDX_236473FE126F525E` (`item_id`),
  KEY `IDX_236473FEEA9FDD75` (`media_id`),
  KEY `block_position` (`block_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

DROP TABLE IF EXISTS `site_item_set`;
CREATE TABLE IF NOT EXISTS `site_item_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  KEY `IDX_D4CE134F6BD1646` (`site_id`),
  KEY `IDX_D4CE134960278D7` (`item_set_id`),
  KEY `position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_item_set`
--

INSERT INTO `site_item_set` (`id`, `site_id`, `item_set_id`, `position`) VALUES
(1, 1, 26, 1),
(2, 1, 28, 2),
(3, 1, 27, 3),
(4, 1, 29, 4);

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

DROP TABLE IF EXISTS `site_page`;
CREATE TABLE IF NOT EXISTS `site_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  KEY `IDX_2F900BD9F6BD1646` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `is_public`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Welcome', 1, '2020-11-15 17:47:28', '2020-11-15 17:47:28');

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

DROP TABLE IF EXISTS `site_page_block`;
CREATE TABLE IF NOT EXISTS `site_page_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C593E731C4663E4` (`page_id`),
  KEY `page_position` (`page_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(1, 1, 'html', '{\"html\":\"Welcome to your new site. This is an example page.\"}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

DROP TABLE IF EXISTS `site_permission`;
CREATE TABLE IF NOT EXISTS `site_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  KEY `IDX_C0401D6FA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

DROP TABLE IF EXISTS `site_setting`;
CREATE TABLE IF NOT EXISTS `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`site_id`),
  KEY `IDX_64D05A53F6BD1646` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_setting`
--

INSERT INTO `site_setting` (`id`, `site_id`, `value`) VALUES
('attachment_link_type', 1, '\"item\"'),
('browse_attached_items', 1, '\"0\"'),
('browse_body_property_term', 1, '\"\"'),
('browse_heading_property_term', 1, '\"\"'),
('disable_jsonld_embed', 1, '\"0\"'),
('item_media_embed', 1, '\"0\"'),
('locale', 1, '\"\"'),
('search_apply_templates', 1, '[\"2\",\"3\",\"4\",\"5\"]'),
('search_resource_names', 1, '[\"site_pages\",\"items\",\"item_sets\"]'),
('search_restrict_templates', 1, '\"0\"'),
('search_type', 1, '\"sitewide\"'),
('show_attached_pages', 1, '\"1\"'),
('show_page_pagination', 1, '\"1\"'),
('show_user_bar', 1, '\"0\"');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'olaya.jaaouane@usmba.ac.ma', 'olaya', '2020-11-02 08:49:53', '2020-11-02 08:49:54', '$2y$10$schK84hHPAoxXqO7uvUPDuh8QPBOcGHtWi790yFiWJwgV/7DQq9N6', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

DROP TABLE IF EXISTS `user_setting`;
CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`user_id`),
  KEY `IDX_C779A692A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('default_item_sites', 1, '[\"1\"]'),
('default_resource_template', 1, '\"\"'),
('locale', 1, '\"\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

DROP TABLE IF EXISTS `value`;
CREATE TABLE IF NOT EXISTS `value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `uri` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D77583489329D25` (`resource_id`),
  KEY `IDX_1D775834549213EC` (`property_id`),
  KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  KEY `value` (`value`(190)),
  KEY `uri` (`uri`(190))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(26, 6, 10, NULL, 'literal', '', 'student1', NULL, 1),
(27, 6, 139, NULL, 'literal', '', 'olaya', NULL, 1),
(28, 6, 144, NULL, 'literal', '', 'jaaouane', NULL, 1),
(29, 6, 154, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=2430916867217372&set=a.1376966882612381', NULL, 1),
(30, 6, 123, NULL, 'literal', '', 'olaya.jaaouane@usmba.ac.ma', NULL, 1),
(31, 6, 63, NULL, 'literal', '', 'THYP', NULL, 1),
(32, 6, 230, 7, 'resource', NULL, NULL, NULL, 1),
(33, 7, 10, NULL, 'literal', '', 'prof1', NULL, 1),
(34, 7, 139, NULL, 'literal', '', 'samuel', NULL, 1),
(35, 7, 145, NULL, 'literal', '', 'samscuk', NULL, 1),
(36, 7, 123, NULL, 'literal', '', 'samuel@univ-paris8.com', NULL, 1),
(37, 7, 160, NULL, 'literal', '', 'https://calendar.google.com/calendar/u/0/r/week/2020/11/9?eid=M2MxNWlsNzZ0bzczcHIydDBqNzlwY2hvNThfMjAyMDExMDlUMDgwMDAwWiB0aHlwMTIxM0Bt&ctz=Europe/Paris&sf=true', NULL, 1),
(38, 7, 230, 6, 'resource', NULL, NULL, NULL, 1),
(39, 8, 10, NULL, 'literal', '', 'prof2', NULL, 1),
(40, 8, 139, NULL, 'literal', '', 'imad', NULL, 1),
(41, 8, 145, NULL, 'literal', '', 'saleh', NULL, 1),
(42, 8, 123, NULL, 'literal', '', 'imad.saleh@gmail.com', NULL, 1),
(43, 8, 160, NULL, 'literal', '', 'https://www.complementaire-sante-solidaire.gouv.fr/vous_etes_etudiant_etranger.php', NULL, 1),
(44, 8, 218, 6, 'resource', NULL, NULL, NULL, 1),
(45, 9, 10, NULL, 'literal', '', 'Student2', NULL, 1),
(46, 9, 139, NULL, 'literal', '', 'widaddd', NULL, 1),
(47, 9, 144, NULL, 'literal', '', 'chouef', NULL, 1),
(48, 9, 154, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=1033679560481400&set=a.118132712036094', NULL, 1),
(49, 9, 123, NULL, 'literal', '', 'widad.chouef@usmba.ac.ma', NULL, 1),
(50, 9, 63, NULL, 'literal', '', 'THYP', NULL, 1),
(51, 6, 230, 8, 'resource', NULL, NULL, NULL, 1),
(52, 10, 10, NULL, 'literal', '', 'question1', NULL, 1),
(53, 10, 91, NULL, 'literal', '', 'quelle est votre langage de programmation préféré?', NULL, 1),
(54, 11, 10, NULL, 'literal', '', 'question2', NULL, 1),
(55, 11, 91, NULL, 'literal', '', 'quel est votre niveau en python?', NULL, 1),
(56, 12, 10, NULL, 'literal', '', 'answer1', NULL, 1),
(57, 12, 91, NULL, 'literal', '', 'oui j\'ai deja travaillé avec PYTHON', NULL, 1),
(58, 13, 10, NULL, 'literal', '', 'answer2', NULL, 1),
(59, 13, 91, NULL, 'literal', '', 'expert', NULL, 1),
(60, 10, 232, 12, 'resource', NULL, NULL, NULL, 1),
(61, 7, 230, 9, 'resource', NULL, NULL, NULL, 1),
(62, 14, 10, NULL, 'literal', '', 'Student3', NULL, 1),
(63, 14, 139, NULL, 'literal', '', 'sara', NULL, 1),
(64, 14, 144, NULL, 'literal', '', 'sarita', NULL, 1),
(65, 14, 154, NULL, 'literal', '', 'https://i1.rgstatic.net/ii/profile.image/747400528416769-1555205580997_Q128/Olaya_Jaaouane.jpg', NULL, 1),
(66, 14, 123, NULL, 'literal', '', 'sara.sarita@gmail.com', NULL, 1),
(67, 14, 63, NULL, 'literal', '', 'SIR2', NULL, 1),
(68, 15, 10, NULL, 'literal', '', 'Student4', NULL, 1),
(69, 15, 139, NULL, 'literal', '', 'yasmina', NULL, 1),
(70, 15, 144, NULL, 'literal', '', 'el asri', NULL, 1),
(71, 15, 154, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(72, 15, 123, NULL, 'literal', '', 'yasmina.jaaouane@gmail.com', NULL, 1),
(73, 15, 63, NULL, 'literal', '', 'THYP', NULL, 1),
(74, 16, 10, NULL, 'literal', '', 'student5', NULL, 1),
(75, 16, 139, NULL, 'literal', '', 'name 5', NULL, 1),
(76, 16, 144, NULL, 'literal', '', 'nickname 5', NULL, 1),
(77, 16, 154, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(78, 16, 123, NULL, 'literal', '', 'name@gmail.com', NULL, 1),
(79, 16, 63, NULL, 'literal', '', 'thyp', NULL, 1),
(80, 17, 10, NULL, 'literal', '', 'student6', NULL, 1),
(81, 17, 139, NULL, 'literal', '', 'name 6', NULL, 1),
(82, 17, 144, NULL, 'literal', '', 'nickname 6', NULL, 1),
(83, 17, 154, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(84, 17, 123, NULL, 'literal', '', 'name6@gmail.com', NULL, 1),
(85, 17, 63, NULL, 'literal', '', 'thyp', NULL, 1),
(86, 18, 10, NULL, 'literal', '', 'Prof3', NULL, 1),
(87, 18, 139, NULL, 'literal', '', 'nameprf 3', NULL, 1),
(88, 18, 145, NULL, 'literal', '', 'name prf 3', NULL, 1),
(89, 18, 123, NULL, 'literal', '', 'name3@gmail.com', NULL, 1),
(90, 18, 160, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(91, 19, 10, NULL, 'literal', '', 'prof4', NULL, 1),
(92, 19, 139, NULL, 'literal', '', 'name4', NULL, 1),
(93, 19, 145, NULL, 'literal', '', 'nickname4', NULL, 1),
(94, 19, 123, NULL, 'literal', '', 'name4@gmail.com', NULL, 1),
(95, 19, 160, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(96, 20, 10, NULL, 'literal', '', 'prof5', NULL, 1),
(97, 20, 139, NULL, 'literal', '', 'name5', NULL, 1),
(98, 20, 145, NULL, 'literal', '', 'nicknalme5', NULL, 1),
(99, 20, 123, NULL, 'literal', '', 'name55@gmail.com', NULL, 1),
(100, 20, 160, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(101, 21, 10, NULL, 'literal', '', 'prof6', NULL, 1),
(102, 21, 139, NULL, 'literal', '', 'name 6', NULL, 1),
(103, 21, 145, NULL, 'literal', '', 'nickname6', NULL, 1),
(104, 21, 123, NULL, 'literal', '', 'name66@gmail.com', NULL, 1),
(105, 21, 160, NULL, 'literal', '', 'https://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230', NULL, 1),
(106, 22, 10, NULL, 'literal', '', 'answer3', NULL, 1),
(107, 22, 91, NULL, 'literal', '', 'because...', NULL, 1),
(108, 23, 10, NULL, 'literal', '', 'answer4', NULL, 1),
(109, 23, 91, NULL, 'literal', '', 'answer4', NULL, 1),
(110, 24, 10, NULL, 'literal', '', 'question3', NULL, 1),
(111, 24, 91, NULL, 'literal', '', 'why 3', NULL, 1),
(112, 25, 10, NULL, 'literal', '', 'question 4', NULL, 1),
(113, 25, 91, NULL, 'literal', '', 'why 4', NULL, 1),
(114, 26, 1, NULL, 'literal', '', 'collection of student', NULL, 1),
(116, 27, 1, NULL, 'literal', '', 'collection of professors', NULL, 1),
(117, 28, 1, NULL, 'literal', '', 'collection of questions', NULL, 1),
(118, 29, 1, NULL, 'literal', '', 'collection of answers', NULL, 1),
(123, 28, 4, 10, 'resource', NULL, NULL, NULL, 1),
(124, 28, 4, 11, 'resource', NULL, NULL, NULL, 1),
(125, 28, 4, 24, 'resource', NULL, NULL, NULL, 1),
(126, 28, 4, 25, 'resource', NULL, NULL, NULL, 1),
(127, 12, 235, 10, 'resource', NULL, NULL, NULL, 1),
(128, 12, 234, 7, 'resource', NULL, NULL, NULL, 1),
(129, 12, 233, 6, 'resource', NULL, NULL, NULL, 1),
(130, 13, 235, 11, 'resource', NULL, NULL, NULL, 1),
(131, 13, 234, 8, 'resource', NULL, NULL, NULL, 1),
(132, 13, 233, 9, 'resource', NULL, NULL, NULL, 1),
(133, 22, 235, 24, 'resource', NULL, NULL, NULL, 1),
(134, 22, 234, 18, 'resource', NULL, NULL, NULL, 1),
(135, 22, 233, 14, 'resource', NULL, NULL, NULL, 1),
(136, 23, 235, 25, 'resource', NULL, NULL, NULL, 1),
(137, 23, 234, 19, 'resource', NULL, NULL, NULL, 1),
(138, 23, 233, 23, 'resource', NULL, NULL, NULL, 1),
(139, 12, 233, 9, 'resource', NULL, NULL, NULL, 1),
(140, 30, 1, NULL, 'literal', '', 'question_answer1', NULL, 1),
(141, 30, 235, 10, 'resource', NULL, NULL, NULL, 1),
(142, 30, 233, 6, 'resource', NULL, NULL, NULL, 1),
(143, 30, 234, 7, 'resource', NULL, NULL, NULL, 1),
(144, 30, 236, 12, 'resource', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE IF NOT EXISTS `vocabulary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  KEY `IDX_9099C97B7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'http://dbpedia.org/ontology/', 'Professor', 'dbpedia', ''),
(9, 1, 'http://groupe.org/ontology/', 'grpTrois', 'grpTrois', ''),
(10, 1, 'http://educate.org/ontology/education', 'educ', 'education', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
