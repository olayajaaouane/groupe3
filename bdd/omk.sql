-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 15 nov. 2020 à 18:56
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
(9, 'items', 1, 1, 'Student2', 'Student2\nwidad\nchouef\nhttps://www.facebook.com/photo?fbid=1033679560481400&set=a.118132712036094\nwidad.chouef@usmba.ac.ma\nTHYP'),
(10, 'items', 1, 1, 'question1', 'question1\nquelle est votre langage de programmation préféré?\nanswer1'),
(11, 'items', 1, 1, 'question2', 'question2\nquel est votre niveau en python?'),
(12, 'items', 1, 1, 'answer1', 'answer1\npython'),
(13, 'items', 1, 1, 'answer2', 'answer2\nexpert'),
(14, 'items', 1, 1, 'Student3', 'Student3\nsara\nsarita\nhttps://i1.rgstatic.net/ii/profile.image/747400528416769-1555205580997_Q128/Olaya_Jaaouane.jpg\nsara.sarita@gmail.com\nSIR2'),
(15, 'items', 1, 1, 'Student4', 'Student4\nyasmina\nel asri\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230\nyasmina.jaaouane@gmail.com\nTHYP'),
(16, 'items', 1, 1, 'student5', 'student5\nname 5\nnickname 5\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230\nname@gmail.com\nthyp'),
(17, 'items', 1, 1, 'student6', 'student6\nname 6\nnickname 6\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230\nname6@gmail.com\nthyp'),
(18, 'items', 1, 1, 'Prof3', 'Prof3\nnameprf 3\nname prf 3\nname3@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(19, 'items', 1, 1, 'prof4', 'prof4\nname4\nnickname4\nname4@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(20, 'items', 1, 1, 'prof5', 'prof5\nname5\nnicknalme5\nname55@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(21, 'items', 1, 1, 'prof6', 'prof6\nname 6\nnickname6\nname66@gmail.com\nhttps://www.facebook.com/photo?fbid=4516590241693712&set=a.271532152866230'),
(22, 'items', 1, 1, 'answer3', 'answer3\nbecause...'),
(23, 'items', 1, 1, 'answer4', 'answer4\nanswer4'),
(24, 'items', 1, 1, 'question3', 'question3\nwhy 3'),
(25, 'items', 1, 1, 'question 4', 'question 4\nwhy 4'),
(26, 'item_sets', 1, 1, 'collection of student', 'collection of student\nstudent1\nStudent2\nStudent3\nStudent4\nstudent5\nstudent6'),
(27, 'item_sets', 1, 1, 'collection of professors', 'collection of professors\nprof1\nprof2\nProf3\nprof4\nprof5\nprof6'),
(28, 'item_sets', 1, 1, 'collection of questions', 'collection of questions\nquestion1\nquestion2\nquestion3\nquestion 4'),
(29, 'item_sets', 1, 1, 'collection of answers', 'collection of answers\nanswer1\nanswer2\nanswer3\nanswer4');

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
(25);

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
(6, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(232, 1, 10, 'Answering', 'Answering', 'Answering');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(6, 1, 94, 2, NULL, 'student1', 1, '2020-11-11 13:39:37', '2020-11-15 17:53:57', 'Omeka\\Entity\\Item'),
(7, 1, 94, 3, NULL, 'prof1', 1, '2020-11-11 13:43:31', '2020-11-12 19:26:59', 'Omeka\\Entity\\Item'),
(8, 1, 94, 3, NULL, 'prof2', 1, '2020-11-11 13:50:46', '2020-11-12 19:27:35', 'Omeka\\Entity\\Item'),
(9, 1, 94, 2, NULL, 'Student2', 1, '2020-11-11 23:53:22', '2020-11-12 19:21:11', 'Omeka\\Entity\\Item'),
(10, 1, 31, 4, NULL, 'question1', 1, '2020-11-12 00:24:18', '2020-11-12 19:32:38', 'Omeka\\Entity\\Item'),
(11, 1, 31, 4, NULL, 'question2', 1, '2020-11-12 00:25:15', '2020-11-12 19:33:02', 'Omeka\\Entity\\Item'),
(12, 1, 31, 5, NULL, 'answer1', 1, '2020-11-12 00:25:49', '2020-11-12 19:33:41', 'Omeka\\Entity\\Item'),
(13, 1, 31, 5, NULL, 'answer2', 1, '2020-11-12 00:26:21', '2020-11-12 19:35:42', 'Omeka\\Entity\\Item'),
(14, 1, 94, 2, NULL, 'Student3', 1, '2020-11-12 16:27:46', '2020-11-12 19:21:32', 'Omeka\\Entity\\Item'),
(15, 1, 94, 2, NULL, 'Student4', 1, '2020-11-12 18:50:47', '2020-11-12 19:22:39', 'Omeka\\Entity\\Item'),
(16, 1, 94, 2, NULL, 'student5', 1, '2020-11-12 18:51:55', '2020-11-12 19:22:55', 'Omeka\\Entity\\Item'),
(17, 1, 94, 2, NULL, 'student6', 1, '2020-11-12 19:01:27', '2020-11-12 19:23:13', 'Omeka\\Entity\\Item'),
(18, 1, 94, 3, NULL, 'Prof3', 1, '2020-11-12 19:02:36', '2020-11-12 19:28:09', 'Omeka\\Entity\\Item'),
(19, 1, 94, 3, NULL, 'prof4', 1, '2020-11-12 19:03:16', '2020-11-12 19:28:44', 'Omeka\\Entity\\Item'),
(20, 1, 94, 3, NULL, 'prof5', 1, '2020-11-12 19:04:08', '2020-11-12 19:29:04', 'Omeka\\Entity\\Item'),
(21, 1, 94, 3, NULL, 'prof6', 1, '2020-11-12 19:05:02', '2020-11-12 19:29:46', 'Omeka\\Entity\\Item'),
(22, 1, 31, 5, NULL, 'answer3', 1, '2020-11-12 19:05:51', '2020-11-12 19:34:15', 'Omeka\\Entity\\Item'),
(23, 1, 31, 5, NULL, 'answer4', 1, '2020-11-12 19:06:12', '2020-11-12 20:26:00', 'Omeka\\Entity\\Item'),
(24, 1, 31, 4, NULL, 'question3', 1, '2020-11-12 19:07:13', '2020-11-12 19:33:15', 'Omeka\\Entity\\Item'),
(25, 1, 31, 4, NULL, 'question 4', 1, '2020-11-12 19:07:36', '2020-11-12 19:33:28', 'Omeka\\Entity\\Item'),
(26, 1, NULL, NULL, NULL, 'collection of student', 1, '2020-11-12 19:15:22', '2020-11-12 19:51:10', 'Omeka\\Entity\\ItemSet'),
(27, 1, NULL, NULL, NULL, 'collection of professors', 1, '2020-11-12 19:23:51', '2020-11-12 19:49:50', 'Omeka\\Entity\\ItemSet'),
(28, 1, NULL, NULL, NULL, 'collection of questions', 1, '2020-11-12 19:31:33', '2020-11-12 19:48:37', 'Omeka\\Entity\\ItemSet'),
(29, 1, NULL, NULL, NULL, 'collection of answers', 1, '2020-11-12 19:32:20', '2020-11-12 19:47:48', 'Omeka\\Entity\\ItemSet');

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(126, 1, 9, 'askQuestion', 'Question', NULL);

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
(5, 1, 31, 10, NULL, 'Answer');

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(44, 4, 91, NULL, NULL, 2, NULL, 0, 0);

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
('02i1j0rq75q7eb8f07lodlirnh', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343339353230342e3034323630393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2233367670377236646a6272357130753272737070653174746933223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331303539363b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331303639333b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343331313233383b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343339383830343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343339383830343b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226565636533363639373331356164656632646365666439616665373635663435223b733a33323a223537353735326262663266623939633735623930353937373465383161313638223b7d733a343a2268617368223b733a36353a2235373537353262626632666239396337356239303539373734653831613136382d6565636533363639373331356164656632646365666439616665373635663435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223539343035643666336437316264366366316633393539653234343563306163223b733a33323a223933363665386639336563383330356165636265636162363838303539343462223b7d733a343a2268617368223b733a36353a2239333636653866393365633833303561656362656361623638383035393434622d3539343035643666336437316264366366316633393539653234343563306163223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226132383133636231346336326362326665333361646366316262626137353534223b733a33323a223666316636653335323364616664313166383662663061303030323662663134223b733a33323a223533303861366237303638326538626435326530393735613539373562663636223b733a33323a226230343737663937656530396466653366353638306333646561376634656230223b733a33323a223365396266333864313736396237393835323562356463306563326538343632223b733a33323a223466626637623731663138626239313931616163343435366639383739633862223b7d733a343a2268617368223b733a36353a2234666266376237316631386262393139316161633434353666393837396338622d3365396266333864313736396237393835323562356463306563326538343632223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226635376166613263613236306166663139633531313132663938663765633336223b733a33323a226336613333353861303065366462636664663165386538376334656439336230223b7d733a343a2268617368223b733a36353a2263366133333538613030653664626366646631653865383763346564393362302d6635376166613263613236306166663139633531313132663938663765633336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223061633937356237303737303930323939643838653265333764363335656338223b733a33323a223531363861356239623438666235333533643336373364323461366238656165223b7d733a343a2268617368223b733a36353a2235313638613562396234386662353335336433363733643234613662386561652d3061633937356237303737303930323939643838653265333764363335656338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604395204),
('7qnp56fc1b8evfpnro7m0tbfqt', 0x5f5f4c616d696e61737c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343738323933322e3135323737363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223872673267356430717531626f6632683069366c6b6176766265223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343730313337303b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343738353833353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343738363533323b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343738343034373b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343736363535343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343738363533323b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343738333737373b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223933326232643064613133633037366331393636636232643134353564363862223b733a33323a226332353632373261326237353433623437363531373334383131663563633234223b7d733a343a2268617368223b733a36353a2263323536323732613262373534336234373635313733343831316635636332342d3933326232643064613133633037366331393636636232643134353564363862223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226638306534383131626362626237313564646631626332306433353531663263223b733a33323a223434393238356631333239366263313064363631366263313765653134663236223b733a33323a226565646664613737353862303433633839343735663338343635663132646361223b733a33323a223932323563346366366538316432653464313732633234333764636133323764223b7d733a343a2268617368223b733a36353a2239323235633463663665383164326534643137326332343337646361333237642d6565646664613737353862303433633839343735663338343635663132646361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a353033323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35393a7b733a33323a226562323064383165353966646562326133326534393539386532356437663564223b733a33323a226463386138303463393931656666646438353030366236623134363935646164223b733a33323a223634376234306366326636353061613464396532316336333633383263366165223b733a33323a223361313630656566336466646338393033383030373961616666373666616235223b733a33323a223435626536636431396466653738303539356132343939313637633430383063223b733a33323a223030366539366533646537363965666139333933623837366431326464613039223b733a33323a226433326230663734663336643464303237393839366135373138656265663363223b733a33323a223963623132383764653461326566636133383433346132396364393937663936223b733a33323a223964333865346266316461636464363130656234383137646562636362313564223b733a33323a226364316530646665613935353438653539653634663663303534353461636132223b733a33323a226461376138633361613461313361383438363439376565393938623235616635223b733a33323a223130323033613731666232366165373831356132613362336463633436393732223b733a33323a223937623564393131643866613834316163353063386637653435633637306435223b733a33323a226266366462633939323436383164626438633636623933646133633266336332223b733a33323a226661336166373261323137343366376365643965393833623938303238643362223b733a33323a226637613332666439343230336566633931353163323633643965303733353532223b733a33323a223730613730323865656666643431656164626433323565393730636133383639223b733a33323a223834313634653432316639356632306436383962656233356530653039666636223b733a33323a223738373938646638666432613034353032383635626164663837323064316431223b733a33323a226265616436326536636432303762306137643364356561663332636239373631223b733a33323a226263633664663837393034303834663238663462343863636563336438356434223b733a33323a223762633432373236303838653834333166616432613337623965663062383265223b733a33323a223862323839386534323335326438383837623339643033626564626231653637223b733a33323a226439656164363766663133663162366161356134336533366430326433363733223b733a33323a226262336364373431666638306130336462343964633362616633303939646133223b733a33323a223361383637653366396537303830346330666539306337313038336533613234223b733a33323a223836356630653566653236313236316565653037626635353632613039303933223b733a33323a226133306636373064363062326162623031633462626266376431366639313831223b733a33323a223034656136323234373965656462373264326331356262353637313538656566223b733a33323a226534356362633030303361306437643937373562336232626362323831663964223b733a33323a223165373262663765393630366337363237333365383437613562343361616166223b733a33323a223338376161373762653065643261386132656238643730663738383461633961223b733a33323a223963356663366161633161356366303238396232613364393266383863353162223b733a33323a223162333930363262393365626263343236386238316138373431336666616566223b733a33323a223435383837396662396132373661393839313264653434356335333865396631223b733a33323a223366303235393932316264343862323061653666623536333231366632396266223b733a33323a226237383131643035643662393233353339323237653962623864323533383763223b733a33323a223735613564386635643165393564313235353735323932643932633137343061223b733a33323a226565336666386433636261643131636336313131633236363433373633373563223b733a33323a223063373461666462356536376235626239376437333533343531626137643034223b733a33323a223264636335326263303336663262343133303262343330646333306430653566223b733a33323a223932613534336334313966303133616433343232646662373437366333646663223b733a33323a226431353261393535663737343362663966303862376564353562313432653866223b733a33323a223331383539373262336233663731653031343635363730366363373334393235223b733a33323a223536303665646438356139353463613863393330316466663138633235646463223b733a33323a223338633730326532616535336664613662363963636137613139636535373830223b733a33323a223766363036383266313430623131646133396331613466326237396136643166223b733a33323a226231633534373761636230376463366135353335336631376236306666323066223b733a33323a223434633763316230313634326166343764613730643330363461653833343536223b733a33323a223863656165363562333735636439663937373964366438326531663037366634223b733a33323a223766323464333739626435373533336138623935633162313236633865353564223b733a33323a223033383464356330613735633638383966633164393161323234633964633932223b733a33323a223238323065323263353662663336663561346433323030366635613935653764223b733a33323a226637666363616163623865616563306265646238663664316435386365623865223b733a33323a226361326565646139393038313964306563636165363439373331306565343461223b733a33323a223866316361373861666165316431383534366164633834386635353135633533223b733a33323a226261373234636665663333393361373563636131353033643932353932346534223b733a33323a223233353466306238323866356561373563643039383466306138363634383133223b733a33323a223734333530656663353934363861653162376139376638633738386537326231223b733a33323a223835633135666436383531636333643236313838343839336530323564393963223b733a33323a226331633733636365313362393632323564346362393034396261396365353439223b733a33323a223264396137383965613432396339316466303961336266363935633265316561223b733a33323a226138646536656239346534343030623235396238636464396235356634303235223b733a33323a223932396366336639333865373439303930396464303463313235663836653836223b733a33323a223062323737356438383734663964646362306533633030656261383266646432223b733a33323a223362353665666631323263353231356333666266663438373531333862306131223b733a33323a223830393635373765663362376332613037623437633536393137393232616166223b733a33323a226463383035656161633032666466636637633935396434363564373030376134223b733a33323a223435306434373439323638343731313138663731306235353235633664633461223b733a33323a226264333133636333326362623563323535393331623934646134346262633462223b733a33323a223664643933396131623966306161613865663133623731616334626438643163223b733a33323a226366303665333035643636663430346266653166343631363032376535373764223b733a33323a226533643164353837653835306462613335303765393834346663326439303966223b733a33323a226666626466643930383235663165623735663061396530626463663737373130223b733a33323a223061363238326433356465383235326464343638663233323662373834323065223b733a33323a223435323638633663373364306462643339663739336337643838363731353932223b733a33323a226134316366346139666332333764353365616534353236353633663136386632223b733a33323a223661323366623461313436323063376432653162303439343738396239623061223b733a33323a226132623732326430616430303434626434393234396535346232613630613231223b733a33323a223436633432313934363065353732396432623733613332613231653766376265223b733a33323a223530613664343364353038333934356338313732343266336233663331373334223b733a33323a226465613130626333326534373961303434383631633661643038323439353335223b733a33323a223032386665303632363037663033313830303733336331306638316564393839223b733a33323a223366653836316530623564633231383638643637386265643539613933316636223b733a33323a223932316337306363363362336466333130323963623761653330323634356131223b733a33323a223931383633356534363733613738643966353964393466653830626564646333223b733a33323a223835653538326563613830363738333534333537376437353031343965386636223b733a33323a223864343935383061386332393834343734313063643531663930663036313961223b733a33323a226634626562386530363831366564373031396134333433396339393438376534223b733a33323a223364393039666230663535656131616137333363346434666130636464303731223b733a33323a226333343630623862666536386539396131333133303538323866383564323165223b733a33323a223239313032303465333736356231386131303661616563636563383731373665223b733a33323a226135666235386631666165313665343461313436653439646265333634636137223b733a33323a223463363030616464336334636438366632633862303261633164356365613536223b733a33323a223864613466306262623338626239333266623839303431363931303164306162223b733a33323a223936343762666636356562623633643139663136346634323837613338323937223b733a33323a226265353238336561613264366338323734633437656339313565663935663930223b733a33323a226433663533323365613736666635393431376432663361633735323562323866223b733a33323a223335653838323834343031383062666439333132663564643430633533356364223b733a33323a223531393638303261383963636634316633656262363664343031346664636231223b733a33323a223866653165623837653438383733323863303430323262353134613338643836223b733a33323a223337313965383636303437383663353761653061326638633036383931356138223b733a33323a223361666362646236336337363065666634323732366236653364343731393234223b733a33323a226634666333336631653030383362613865666530303135306566363734373062223b733a33323a226265333966393062383163383933326564366664303837656366393864646563223b733a33323a223636356462356339303135343433366262663735303639303636346334363235223b733a33323a223266613963363332376531366635333931343635326662376633353433386166223b733a33323a223665346333653362363433366564386233653739643464363965633864306333223b733a33323a223234326431306238343961323966353932343037626365373030373432383937223b733a33323a223165383430386633326332333634346431313735313436383061646565383866223b733a33323a223339383339343039343231333434353037323033356332306538343065366162223b733a33323a223739666361313436656637313537633135393062393730653939636136633664223b733a33323a226339316334386532393263346138343337323764646263313231353739616231223b733a33323a226539373138633033653965613361393764616130363763656432616234323834223b733a33323a223739343031396335353037386466306237623562366636383564663363663130223b733a33323a223634646139323465326138356232343363613862643263383333616638376561223b733a33323a223939623061666636373330663261386434633733323766656164633831633063223b733a33323a223761396536663432323936623366323736363839323032303737383534626136223b7d733a343a2268617368223b733a36353a2237613965366634323239366233663237363638393230323037373835346261362d3939623061666636373330663261386434633733323766656164633831633063223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a223765343039663536656666626165343839623239336264316531363331316535223b733a33323a226666396238373230353830343164366165303634323365643766613165666539223b733a33323a226464386362353935623239333535313533346363626562383361356633306339223b733a33323a223339353466383166333033656530653730303930633866666161623461363762223b733a33323a223238636532336235326165356435313332633564363364633132623564306238223b733a33323a223739396433346661366563303030333939306535656265353261303864396230223b733a33323a226562343464653234613837373732656239643861306338663262303739373862223b733a33323a226132383062666665376438303866646335633462323763363835336432663462223b733a33323a223033626166386536643330333665363034313236646263333134333735656238223b733a33323a226162663336353463376666383765613831633838343732613832306237396265223b733a33323a226333313666343538653537346635393131303034623637636535323962303865223b733a33323a226561383166656434613939393730373766613465363031353161376634633130223b733a33323a226432386334653661323739653165353566353933376365346238373264316238223b733a33323a223536393865386337323238323034363932356238363638656330366637623366223b733a33323a223536613930623933663063326539656235356533633134633936613861646534223b733a33323a223737346632626264346333626463623932376239666431313632383538366431223b733a33323a226465343030303565313863656236633534363632303364306131313436666538223b733a33323a223463373662323265393433656432336366333366633963653539386564323730223b733a33323a226538666332366435313566643634386363396562353065636333613133323666223b733a33323a223035646462393531613932646138643131623630343831363932613339363263223b733a33323a226165323636613530613564373433646563303565336339346633353532623937223b733a33323a226337373235333466636161323866326130303136613364656263396565343938223b733a33323a223164343261623933356564306463386330383536383634393166306138653032223b733a33323a223438373231363830356639343031613336316434336432333934353761376438223b733a33323a223935383163386261396236343233643935343836383366396437633135346266223b733a33323a226633306263626335613236393434623463353134656638623965626563353633223b733a33323a223461316439626661323136303236326336393666313934313865396563623933223b733a33323a223436396231323130636335346331353235313865343930623631633332353632223b733a33323a223435393332616262346237383439643634623166323166623963386363623134223b733a33323a226662346531616437336362376165656137373638356564393563653265333235223b733a33323a226530633632376432363230356261643534623665303930643831333036306634223b733a33323a223136613234633765663237366631613261653963336361653766343533653133223b733a33323a223033356132663064386464313537616436363861613038323839613639643233223b733a33323a223263346661386138326130316631333763633133346466333737343164323035223b733a33323a226464393132633035323934346436393537366561366235613732646566316163223b733a33323a223431333834633938376234373535656537366330373436323135666334393939223b733a33323a223666306133343861623139393562383032643262343037356362326439393437223b733a33323a226637633838643431653432646439663936353837653238326235336264383461223b7d733a343a2268617368223b733a36353a2266376338386434316534326464396639363538376532383262353362643834612d3666306133343861623139393562383032643262343037356362326439393437223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223438306463663432613266363538626538666539636337633966383338653062223b733a33323a223834366363353730336430346462613530303266396636303961666631326561223b7d733a343a2268617368223b733a36353a2238343663633537303364303464626135303032663966363039616666313265612d3438306463663432613266363538626538666539636337633966383338653062223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223466356563393366343663633030366638383534666433616462656636373066223b733a33323a226338363934363234396131353731313736373235303032613831656164373134223b733a33323a226536333361663536643133346532386337346239303138613861336635393839223b733a33323a226464393736383732313263323564663039316439313730636264363335313865223b733a33323a223138653963333566303734366366303161366265623833633964393761306435223b733a33323a226533363634356539613666623665653865376336363438643832373962616362223b733a33323a226637383632363462383262366462366132383266323831313738383132633361223b733a33323a226337616363663139373536333338636563343265353635643839353239323238223b7d733a343a2268617368223b733a36353a2263376163636631393735363333386365633432653536356438393532393232382d6637383632363462383262366462366132383266323831313738383132633361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a226134373430633835353232656334316636326261393237343264653838303066223b733a33323a223039363537376634386263633430616238316236653230366163363138316237223b733a33323a223765316566313363373964356531303262313539653466336463643366316338223b733a33323a223530343965396134643534393836333836343136336236656436333961633437223b733a33323a226538316165343436343965373865666161616539626338323835633731336434223b733a33323a226266386565643066633461666633323739353461643763623666353139373362223b733a33323a226534353935316533306363393639343762383430363066346163353131663534223b733a33323a223036663666393536343830646462386635386662653838663438386431353163223b733a33323a226534336537303562393130643266306532656139656639343435346661326638223b733a33323a226235383766313436373137613937613839633837333538393662653538623330223b733a33323a223339343938323439626564623938643831636165633763353034386536663030223b733a33323a223236363536396433303364616630393965386436633931633239393938343961223b733a33323a223930613365623531366462323664313161393532656336316666396631613062223b733a33323a226539363539623339396164636664646163373462373239353166366366393063223b733a33323a223962313836333832323465313339376538376563343437633665666363323538223b733a33323a226235653763353737643239653039346330383365613132356662326233323530223b7d733a343a2268617368223b733a36353a2262356537633537376432396530393463303833656131323566623262333235302d3962313836333832323465313339376538376563343437633665666363323538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604782932);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('di2cf3tdvdkm9a6hc4ulb5sisv', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353231333231372e35303637373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2234756d6564653576626862673764657032686c38326d6c746464223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353130343037313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353231363830373b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353134343033363b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353134343038303b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353231363830363b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226231636434356361636336663634373865646433376361353762353531653462223b733a33323a226236356130383866643161343335346339323264623530643364653566376239223b7d733a343a2268617368223b733a36353a2262363561303838666431613433353463393232646235306433646535663762392d6231636434356361636336663634373865646433376361353762353531653462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31353735333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3139333a7b733a33323a223962356130323137623264333861333336393336663031373738373331333135223b733a33323a223935346563666465313335326666623066646438373265303765626433613765223b733a33323a226265636633303964616634333432646232303134353361613131343636323734223b733a33323a223436663137373035646334393033333734643431333737613261663333383461223b733a33323a226535326362316165633034616631626238616630313832376261376364346234223b733a33323a226536366133616665646137633536633761363563666265366564336335633564223b733a33323a226333303262623634323464336136356163303934353238393266646161653639223b733a33323a226537623465313737313261663564373332373837653434643432356333653239223b733a33323a226636346539363638326231393466613837326238333333636438626637383963223b733a33323a223666626665313631643037663266343838323132306335626537356531343564223b733a33323a226431313531336465333937383734366239383239633034393861303833653238223b733a33323a226239316463376232373931613530346433373266323933313232653063363265223b733a33323a223964656231613637666631633863653139336132643030323162316366383062223b733a33323a226634316130303631613731343161643433376639353339336361663763643662223b733a33323a223832656230373336363038636237386664383864393633393563323436356336223b733a33323a223865366664653937353838656532333631323234326262643766303963653739223b733a33323a223931393361643133386163336466666565366133663234373832313231316130223b733a33323a226163666166336263376433613164333137646635613665313861653962343939223b733a33323a223836656261306438336132386633666638383031376233393730636338623965223b733a33323a223361333062383130636562613839333030383239306534343435633838346339223b733a33323a226266326430356535393033643263336661303834633966386465626235326265223b733a33323a226566323135353630393864373335623337353866613462646164613934643437223b733a33323a223334346536383966373735303234643362336466313866333933643232663931223b733a33323a226363363363323737353136396431386663633736386663656361653333663338223b733a33323a223662313134386164303432346465396132353637653063626565393938323162223b733a33323a226235653536633738366339376438363134666335396363323466303537393339223b733a33323a223338663661336534346237343330623865666431383432373465386464653239223b733a33323a226230323131636532393332356631393432386165643439373735353862336439223b733a33323a223463656563366362396330316333623464366133383432613832366432636261223b733a33323a223435373538616135343162306163353131383033336162303539376463336533223b733a33323a223832663730646263383161393338643035363635383130616561316136646434223b733a33323a226536626365363662373435636366383237623238303863306330356137663433223b733a33323a223663396162373261643236653539343232303864336263353035643237366435223b733a33323a223761353339636230633563616563613437313233623532666431616661393736223b733a33323a226336653433653438353139326563643365313132353838643265393564326230223b733a33323a226539383934383830646465363832643536356439393631353766346235376638223b733a33323a223464653530316433323665613030323137343430346463633033626130646530223b733a33323a226466613062353166306433366563366536386532366634353362633636356236223b733a33323a223034623334393433366134363162323332643836303433623339626566333663223b733a33323a226538363130386435326332303736323939653464306530633234343063663733223b733a33323a223739336333326139636434363438346431653831383630333961393161666434223b733a33323a226132336438376366366634313562616334386235656263356530326436323066223b733a33323a226263636332666337363362346564376631316263633233376664666237666633223b733a33323a226637303032326561343637303833383532613137626237343866323037386265223b733a33323a223630653235656534373162343236343235346638303066383330353861333964223b733a33323a226265666138303064306633623934616563396132623864643830363265636336223b733a33323a223033323739393836643631346236383865373466623731343866626334373765223b733a33323a226165613135326363633664303630343065303036316662653062356637326635223b733a33323a223163633463633339346536383036383262386130383839326132373564323337223b733a33323a223635623065333131633962323336663266353633663864396562643237363566223b733a33323a226533616330356136326531306331376662363036663938663734393736366533223b733a33323a223763613634653238616464373738613830313839623966626662313666393933223b733a33323a223732306362666338613637653639323832663932666437386539376633303737223b733a33323a226663653534393538636332363766613739363762376461333332303361386637223b733a33323a223661303661353637616636623838663335313130643062323362386432396339223b733a33323a223231303233653963303031363663326639353534646438636430373031303238223b733a33323a223133333937383835326130393964656234353439616161393332663931336366223b733a33323a226134393639356566323063666339663331383662383065633030386465303231223b733a33323a226662613362356666633964376435333532383265373662353464316133666139223b733a33323a226236383261303238616635303833303331653130646465333464353566306139223b733a33323a223035613338663730616539616238633735386637363063363561383666376138223b733a33323a223266396134343137316366653830313861336535616333303234376436376430223b733a33323a223431326336633539313465353262396532616231643238643366333336373336223b733a33323a226633666430363134626366323333633933613563373231323065613761393437223b733a33323a223430343063653664313766343935393839643939663434646133383435656233223b733a33323a223831633266636430373938613263343331383034633336626364323033633166223b733a33323a223034616663383435383864326333376131626461353163343338333738363861223b733a33323a223631363861636530623239396431616263323565636631656539313931303036223b733a33323a223732363337653231383061666331623237653434323236656130303430623664223b733a33323a223532376566633362313337636639366665346430346366326365393934656230223b733a33323a223731643933643839656364306161623537383836313133386362353137346130223b733a33323a223361643834396339366361643862653838366363343038386630356262613966223b733a33323a226136626563366433363335616434363366363462333030316635623263313136223b733a33323a223834353564343936303535666565656566373736633033626436386336633730223b733a33323a226566666333623562343231326636643063393661626266636134643930616231223b733a33323a223966356166356161613536306239303235663964363564393666656130636261223b733a33323a226466333830353961633064613165356362326162306666356330313837376237223b733a33323a223535346566613239633561643364633038656361366266376632643563666265223b733a33323a223438393065383965366566303530366333336635366139326162306636666335223b733a33323a226138336430313132353363373430656566313263653238353638656662633863223b733a33323a223334656466373238336365653962346538663463316264313364366266353231223b733a33323a226361356637626433313733303235373832386236643334346536633435666236223b733a33323a223630346264373761626366626664346430363066353030383434323135666334223b733a33323a226233383633653561346663353436323664353732313266656136393331656436223b733a33323a226465653962376164626434393435353366316366386135663533613339353163223b733a33323a226166633836323739363566643465303866373666323437666166383033386432223b733a33323a226163623439326132653234323239383762336635633636323662313334626563223b733a33323a226464393664353362653533316431306137666531366532613730306132343138223b733a33323a226139393565363434383761356233356534646562633737323937666535303831223b733a33323a223463333531313738353039353037303236303765633864623563343339333863223b733a33323a226231323663636338336463313065383261333330363932373835646239623934223b733a33323a223535633334666536363165663039616533613937656162353038313334653337223b733a33323a223830666435376662373334373433346465616262333539363561306161303735223b733a33323a223762323636303932326139336638323365613839343562663061306562326638223b733a33323a223362323230663635383064303232396664396165346435343563383163303534223b733a33323a226164336364616435336562396462353137363431346432313232366136303235223b733a33323a226234313730303430316436633031653761643464626330303330393961363134223b733a33323a223234623662653438313838343230666162666662346631353564303866633639223b733a33323a226639633965356566303831386439613864393765386535346365616664363038223b733a33323a223236383366613361616539636530323364366262346365636332353838333363223b733a33323a223233383237663636623934353232303034363037333539346361646231303233223b733a33323a226339303464663033636437303338626334616337323431306561623836336438223b733a33323a223337656636303765386635346137613536333233666466623465633666323335223b733a33323a226662336238393535623534363364323061616466363237373733383065313237223b733a33323a226431356432333465663533306138656132376337396439356133613264393730223b733a33323a223463623636303434386239666666353039623132346666353438376331636234223b733a33323a223032333932623866353230386666393136636135643836313237653530353435223b733a33323a223137653064343661333434623537326237363338653664366262646239356163223b733a33323a223264343066386639326664646338383632313130333234363761623666303666223b733a33323a226132303565643736666631386531666536386464333736366333373135623939223b733a33323a223436666333646262356235646665393137353565353566666665396237303439223b733a33323a226566393032656137336161623662306665626637306332326439613262303063223b733a33323a226462316133376262623139613264623031646335633664653937643861343865223b733a33323a226166313836663831643539326134356564303265346239656530396637336532223b733a33323a223136313333323539366464313765383035346131343135666439396666316334223b733a33323a226336653034323561613338363830633764396662396461303266363437656533223b733a33323a223835623036383561666162393536313439353132656633626536336264313364223b733a33323a226534303434646661356535656336626336366336366636666232323765366462223b733a33323a223435663164376535346338376436346437363165306430373934356133616264223b733a33323a226566303165306337316632326239303730366162393539663562343637303939223b733a33323a223231316236616138633566396538623963346436653232313234653236316165223b733a33323a226661396532313236306563616330303737616661306137663763666238326437223b733a33323a223662343234343039656237313237613066633564653761323762323236373739223b733a33323a226661343262323262306639356236333666666532353133393265643234303365223b733a33323a226235663764376537383162373332353133366565306131656632353235343238223b733a33323a223532313834353535633036653566636634313733646634373037393434636662223b733a33323a223839366231313261626237326139333439353637656231353761623961663739223b733a33323a223663383235633039653632323266323763616533356466393936353231333036223b733a33323a223666643039663138346433363834373563656561383736376431656131616532223b733a33323a223632303835663239313465616234346638623032346334313437353762316339223b733a33323a223932613033656637393736393562653761393533303261663638333935363630223b733a33323a226431663063646265646132323663333530353234353862353438623336373935223b733a33323a223863356433353035373632373361333033376339333430393064663030626361223b733a33323a223365376562303337326566396532643035356635366132316537613963326632223b733a33323a223061306465643636646363636635623031336634383732323636373637316631223b733a33323a223361343664343630643436626363616539643232626533663435653739326334223b733a33323a223139336164366566316439356265333338376238643938653335356135353439223b733a33323a223064623261376639353339326136316635326531383734373939633464653763223b733a33323a223434666639393961633364363664633632306231623439336135363130646439223b733a33323a226166386433653638366464656366393766343632343563376566316330343262223b733a33323a223030343161316565633065383364356333326139306362303339303264356339223b733a33323a223634396261643338313465353334363131303032643163323637646663633539223b733a33323a223864356465636631636237356532306533393436393034636233373939346461223b733a33323a223635356565353334666261356536646439616534363734306166366631343334223b733a33323a223661363562643535653236316464663339653135366434626333616435353566223b733a33323a223135633262376464386137323066653533313432323636633762363362303934223b733a33323a223130366437363065613432343561663231396161663634373962613434326665223b733a33323a223533346530303136376137623133373665316438393364376461303930393037223b733a33323a223637613734653563366330393833613033346536323462336134343837623166223b733a33323a226434663231346662333531306162363235633537386466326532633836323566223b733a33323a223934313733613462396237363135383538393361393332366136363066396662223b733a33323a223235633836643834323861363837353738306331613963363631653238613139223b733a33323a226539333937363838343566623436376335643939653062636165336134306432223b733a33323a226538623164613134353430393035656133663964343133633636323634313032223b733a33323a226437366235383331666462306131643561383138373966643532343231653932223b733a33323a223433656261663037653663373164356164373233666639316563396139303863223b733a33323a223236656631643433306664623164386132303334376338393763343037656562223b733a33323a223433666633353266663538363630303437376238353830336662623436353866223b733a33323a226130376532323932373961323134613637613333353737343237343236316664223b733a33323a223930636262313063396630653033313735376136393661623233316662643737223b733a33323a226434636338373966393165383131336265383530663738326166623965396337223b733a33323a223265323536343137386139636663623961656337386231656235323362346263223b733a33323a223262656564613561323565376636343138333731373966613634343434656434223b733a33323a223236353939346533316333616364363535323132356532396464353561323439223b733a33323a226439336664396461623233376462306234633134366639343264383032646366223b733a33323a226236356238323330613032656132363966663164313332623530613165663834223b733a33323a223538383261333366646437326239316531666332636234626333613931623331223b733a33323a223836326461626631393462636265363134393039366331663739323066376235223b733a33323a226361666137626334666434616630386539643832633338653566353335643861223b733a33323a223661326366376634363361383634353835383835393766653138633236393330223b733a33323a226639653065363936346636393161366266373061383064303730616235613066223b733a33323a223838633131323231613263386436326430613963343764353534353665663332223b733a33323a223531616563613264356665616635393637623335383032616430643133396134223b733a33323a226336343438363835636332393837653931303837623130353766383932343230223b733a33323a223833336431366632323531623632386336373433356333663835633635653532223b733a33323a223839313539393034666261373336393531366635353662393832623533646264223b733a33323a226666343934393534383263653362396266326135373061343032316639386534223b733a33323a223632366439323861613666623264623336373565653461626666353963613165223b733a33323a223666633338396535633766383565353839366563323166663863663565313362223b733a33323a223438336661616536656631366237646439363666323334376136636663353366223b733a33323a226532363861663338663337656335666234333264323434316234353737363537223b733a33323a226237656266353837346436383833373266383331303464656164363938386537223b733a33323a226534656465643030383239373630333839333233396666353861306561313061223b733a33323a223065656465393865613136613464653564383166343331373330633765316638223b733a33323a226538373961333963636331306538343562623765633164356261633739666166223b733a33323a223136346563303239333963346664353634393931613130636630656135386134223b733a33323a226339376131626639643766386337636134616433313236626634376666656330223b733a33323a223333333730313030393666383738363465353863306234363734343638633236223b733a33323a226430643066613062373539636338616530663632316239303532666333396336223b733a33323a226432343466663661663036363035343861613130653063626438613234366136223b733a33323a223636356339303162333063643636363230333963373337646237666437663366223b733a33323a226339613532323264633963613735666431323535333739333663316530303330223b733a33323a226538373036653837363935383734376261363362343062323534336334646562223b733a33323a223538373231626461333633663334623566626139323764633566646334396461223b733a33323a226361376235666238373361383363306265613432666164613562383539643964223b733a33323a226234353233643062303538373938333337663662333766353266323966333839223b733a33323a223530353733386435306563613337383233306537636163626464373132613264223b733a33323a223762303935323439383937653861636337646232326638613938353063643261223b733a33323a223831373833353763306362653235373862353638633035333237383537666537223b733a33323a223063653330356531336530306438646564663863393033363832313930363839223b733a33323a226264623765643738323136636635363330356339613035316139313433343365223b733a33323a223361336631303962366561336261316432383965393263353139343234323432223b733a33323a226462663332303334343361383232363933313861643031653139656139316139223b733a33323a223736363561353033373437396166396164343962303533323265353434303732223b733a33323a226139663837336339613262313461363632613834643831363837393930613336223b733a33323a226637633832326236303263356662333435333363646638653233356362383935223b733a33323a223465313332383138393336633036376237616538643236316436346130326434223b733a33323a226334386665656361343965326566376336373737353335333632623238303333223b733a33323a223266393764346163323436633538366662663531666566326635303734663263223b733a33323a223433393961633662336333643165663138646131393732656637356430333463223b733a33323a223262326339626238393834326163613936363531366435323234306332656563223b733a33323a223031316163643861373631316266353032386632356361336364646536316166223b733a33323a223664363161633932633033643239333364353233666534396364346537356465223b733a33323a223331613133313763373634363939376139623238633665356134353463336364223b733a33323a226563306139666330323433373963663438313638643037363932663233336235223b733a33323a226337313838383265343464653933343861636365383362636461616538346634223b733a33323a226538653763646664363737613566373730616639313330613130646133656138223b733a33323a223063316239396133623933333035396464393038633765643562333230363065223b733a33323a223838643937373437353033653262656531313537663831376635653339613139223b733a33323a226234326462663239663135623430366134616463623132306535303736633563223b733a33323a223238343839383766396461303532643438643933363733646334383230313336223b733a33323a226334646532643333643761356330386563663764323830396562386166313861223b733a33323a226234396164323433633435306134336362636237633365316264343635303963223b733a33323a223139376230303836656437356332656164663765383133613737363761376430223b733a33323a223661313031376436343533386236386634306666386534613930363439363765223b733a33323a223263323738333838343065343164643835623664346136333137396331616463223b733a33323a226366306464653761323864646361333965353365316564366365623164373538223b733a33323a226635356464626130303835633539316238363332626463346130643064313534223b733a33323a223336643333333665643930373837366165326265313233323530653263316237223b733a33323a223839363939653665373539353366663235363637623864353738393863346233223b733a33323a223331363631616139656234653465393436313739333136646132313036353635223b733a33323a226336653362623737353164626634656161653062306438656666666162353166223b733a33323a226431313937653136663766393438643834356262613465346235376265373134223b733a33323a223538623561626234346330343037336430373063303539643966323466383361223b733a33323a223231323264663539663730303737356465663336373239353239323866323437223b733a33323a223061326135306562366238636633613335386136303432306136383135613838223b733a33323a223431353065373537623963343339373834653539613165303863393332376563223b733a33323a223965616433653333316134623639383966633434663134646530333135666239223b733a33323a223661373937346639633935363430613435666365626139383638353662343739223b733a33323a223261356233383166623963663638363866323064373062663233666233393831223b733a33323a223565613732333066643465306164376434376231646333646562663431363363223b733a33323a226263313864353935343661306438333862616665323336646363393762643463223b733a33323a223836383238613134303637393130376338336363663764633966663334313031223b733a33323a226163396239653337386432613932366638656236393834383832373537393366223b733a33323a223930396439616164336136353366383766393636363032313661653934346432223b733a33323a223664363462333466353863323530346166643036663034313731313633356433223b733a33323a226135366230626131623538353135626532316331653233383232313763396332223b733a33323a223034326439303539346661626566666330313033643664633337663263626361223b733a33323a223833326665336232663862613932656233616431343931623865316630623261223b733a33323a226632636535346336363735343764346631346131363032343536326537346431223b733a33323a223732336536383262306437323234613333323239616636313264653466653332223b733a33323a223465656532626334316635323836633637383763373936363836323731656538223b733a33323a226630356263393239333032653232666338303334663835666565383366653662223b733a33323a223236336362656366646564666635366266316437323435626635623231373838223b733a33323a223965613731306631323364616165666335363366653763653137326134313434223b733a33323a223033653262623563646537363232663430303165343738626430303035666665223b733a33323a226565383331396337376536383331316461366233323039656563356462633963223b733a33323a226264366533343739373333326163336261313838313166373738363438326463223b733a33323a223165653061333764326438653438373132373763656462666564356163626337223b733a33323a226635623234666562613136393133376131393536343635373439656365326365223b733a33323a226138363939333839326163346135386336613636363666656661343736663730223b733a33323a223936356633323836386362333633666665333066326532613065343062613135223b733a33323a223830653061316164373130653431383338373065626366343661326363636239223b733a33323a223632633739396265656538343965366666343234633233333661666138336364223b733a33323a223138613962373633326163383166623662323836636631363235626537393965223b733a33323a226530376439393336366565646364613936363430613566333331663530646132223b733a33323a223930393139653831363633636531323837613734626339356438376231323665223b733a33323a226265613632333062393363376265353734343862663133303762323338376639223b733a33323a223736346439316562633163393737303931636437333062386330663639326631223b733a33323a226136383763323337366234336261333261396438663639393530323631373734223b733a33323a226532313637353936616361643037333930613333376531613836653863323437223b733a33323a226263336635613361663032346337326363633631396137356263613963636439223b733a33323a223263613334663165383133383966363064643664383338626232646230633530223b733a33323a226431633835376531613839353137666238383835383963653330376166373937223b733a33323a223432333230363663366465313531633966313134383930333339356238376135223b733a33323a223534643438373664663036303766303866646466356438396435353233623535223b733a33323a223037306663313034323932363966656239353763346463393666616132393336223b733a33323a223461363332363034343035383536636334616533663539333561373366376464223b733a33323a226239323832343431356438303135326266626637353537343964633536316534223b733a33323a223863323064333739356331343838376431346133373231653533643736373266223b733a33323a223631376661666539653835373539646263633461333763383937373364323065223b733a33323a223637323964373636613830366433326133316633316233393261666366623533223b733a33323a223763633734336130323439326435666438623933386334363534303437646464223b733a33323a223139636437383561613632646631663439386262653064646137326631613736223b733a33323a223435376234633739393064623733623237303566336164333863626633646438223b733a33323a223361306164323830653934623565306661376139363564666465333834653265223b733a33323a223966663531306366336565613763386634346635383565643439633530333766223b733a33323a226233313235633637353839653333356464376139333931666439363464323739223b733a33323a223463653462353666353935373835393738303761346438656331383535663730223b733a33323a226632306135396139336133306238666238646464313831346465383030396334223b733a33323a223065383036613333643338393031356232326137353163613033303335643364223b733a33323a223730363135353434316232353036393964393434383866636535306137626332223b733a33323a226630343131303765356539323633313464373232653365613238386538343731223b733a33323a226136613666313038663366636532636666313236633534376333663130363738223b733a33323a223466626666646339313635656363313062653535653137666234306435653334223b733a33323a226465376263623131323937363862613031323361306530636630313338616461223b733a33323a223961303134356331613662306665386437656333363131633263643066316133223b733a33323a223761363766363237613466303061376437653037316664613836353366353030223b733a33323a223135623535623564633931363833363438363065303863326635656434393666223b733a33323a226634303563626433663833316363313630626538663064616564376138326461223b733a33323a223431323739303538373366613463623139323139303032383134633131353230223b733a33323a226634653336373730363438636237643238646230396466356664663334643661223b733a33323a223666306631366363613861653736356462613763643464663266393235623338223b733a33323a223366336262363635633638653735396534346532613561383932363032353631223b733a33323a223734366534333361666335666664323262316631363533336463383063396431223b733a33323a223762353634313535376339383834303433646131626636633430313536646636223b733a33323a223162346561626238613266353430643536333930613739323236366235666134223b733a33323a223531333038353263313038653136626435303236376438663165656230333035223b733a33323a226639633961626331663165303932386366643830633364323339383036666561223b733a33323a226137343762616264353032363666306333303635653662363662306239666363223b733a33323a226362666566336131396565303031343833356162386138306132323830633239223b733a33323a226662346465356635646438323938393832323030623434316562373232376136223b733a33323a226566383638613231303862313863333365356239636533643264373331333965223b733a33323a226235346434346263363239616233656434623161653366633135343833653362223b733a33323a226262353534646333346464353566363134356131313666313563373836366264223b733a33323a226332376131386434613838316235343061336632666536303833343762353738223b733a33323a223031396633373965643439356466363664646330323565646138663961656562223b733a33323a223338613461323335646535633462386562306630353838643463623730633539223b733a33323a223435303333396562313137633437326538396363386332363337383038313161223b733a33323a223331313761326237343638323932663135383163613339303738346664373531223b733a33323a226463326165373864653063316338656432613233613439633164396261316435223b733a33323a226461623538323930313132346332663565363566306361633530333436336261223b733a33323a226236303133333432343339393735646138333461306137356139323238336230223b733a33323a223266626130366535336431656136636238326539313737333435613338646163223b733a33323a226433646634326333653135313464373462613930343834636630386263323863223b733a33323a223662386463313138623839323562356464663339653832613536653536383336223b733a33323a226561313061313338393164646364303430346562666562303066383864613134223b733a33323a223763343963643039626433626330313832383330396266343734663962613437223b733a33323a226663633966326463373733653765356364633464623739343663643837343039223b733a33323a226230633433623139393064626663633665633536363337663338623266326539223b733a33323a226137353462633932376537353039636565353039656430303032383031643439223b733a33323a226265313361393538323766666464386139616261646335363362386433623739223b733a33323a226134343737623135626138356161616434353739613033323266323236363039223b733a33323a223361623661643532656663363531343331383562663330373361383661613363223b733a33323a223163653662646638356436623564366663366630666338623563383733373630223b733a33323a226237316566306234393731306433636132623766396330623831623634323764223b733a33323a226638326136626163343233383138393964616366646230353432643538643933223b733a33323a226331663737636363386161323937323232326164323134303733373236653039223b733a33323a223431646461333230336234616263336531333839393863383531666231383836223b733a33323a223438363935633761333830376563653938663237653935656131316330363538223b733a33323a226663396563306536336432663437396530386463636636623561636332306530223b733a33323a226664383934616235383239613438353064373466626564376663303139396133223b733a33323a223431356434623165353963326336386135373232343263353635343866383565223b733a33323a223465356136353862363562633265363962323461323739626339376439653436223b733a33323a223430666239393666353331313531643735376366393364626630636439636465223b733a33323a226164323562636436616339656130343336393836623433396137393933343735223b733a33323a226237343864396337613665646362326438363939613936353630336638353735223b733a33323a226563623638366534643834363861356166363763343665373634306131646231223b733a33323a226535393735353062353630396534316163663461323935343162633134646137223b733a33323a223735393133383639613836643739343163333830646464623231333833636334223b733a33323a226163656230656236623939623262303630653861303937666265656531356532223b733a33323a226565623264303961653433613339626635633633646534383462366632623166223b733a33323a223462623436636662333431626639613663616561343039663331333137623563223b733a33323a223337363138633962303066336437353966636139326536323363343330313731223b733a33323a223132306234316535346335613465393333346335326434346266393264306231223b733a33323a223435396664333432656435636436336537316465353738303537303262653962223b733a33323a223162336264323438363137373039313533643134643937643164313934306234223b733a33323a226334313166656435383331366566656161623661626563353731336231376433223b733a33323a223738653866323965333235363835663966383038393333306265366139316534223b733a33323a223536396131383165613131313065653462653163383830643030643434316138223b733a33323a223066623563633563313430346133656233303137363530653632653233366336223b733a33323a226439326663316462313137333436653332356164333563633665313339306530223b733a33323a226430656434343631346335383234633461636262613662633864636261323138223b733a33323a223033386530323665333761353435653836336539336361663436356635666433223b733a33323a223536386531313462666533383236393135383263326362386266363233326664223b733a33323a226163653862326265663564623166623633633866613934643061636533383837223b733a33323a223136363465336530326264346565613439666138356633343164636261656563223b733a33323a223361646438306138666636306132323631373934623266383232303965613335223b733a33323a226638643537616137633330353637363430646261383466633630633531636563223b733a33323a226564613162613861333330316137616164626237393236663834633533643833223b733a33323a223732383462323461666364656236316238343735656638643465306464303332223b733a33323a226632323439663936626333666430636461633764393339313738626230623266223b733a33323a226366333461646434646465323161313435666262653330616638373838393631223b733a33323a223231333563306565326535616535386465616433343536616132313138666161223b733a33323a223432643137353166366561383836323462616664313064313633636130383530223b733a33323a226630626262616362633361613432396335306234333432363335313035633766223b733a33323a223630626238623561396338363936393064363631663765323564323465376364223b733a33323a226164303566336538326466316661393737323530643764356637303762313564223b733a33323a226137616532366565363132633030363130616436373931653536336464323235223b733a33323a226338316330643863653964616238346663303736393232663563306632343037223b733a33323a223338666136643835363634656535366566336330333433313164393164616564223b733a33323a223435653730643436353434666139316266643835656165336237323235313361223b733a33323a223761323730663066643236306334636261373730653330313632666331313335223b733a33323a223338333934373432313466373263316264656261306630376430623761656337223b733a33323a226132336565346134316162626530613961363834353633353962616666336561223b733a33323a226538366237666539656561303166326335336238633335333436353438353662223b7d733a343a2268617368223b733a36353a2265383662376665396565613031663263353362386333353334363534383536622d6132336565346134316162626530613961363834353633353962616666336561223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223763363239663233643264343232643661666264613631323030366536376630223b733a33323a223761633536663831643466366337643565636630383735653530623861366665223b733a33323a226139666561306136336361313965646463356133396363663962616337646533223b733a33323a223064653636306331636535313631373737643331333837623232646331333066223b733a33323a223336356662346666376564646332363235323639633162613263623761646139223b733a33323a223630303332353830636535306437666530343665343234636536626634343131223b733a33323a223930393336623664356133313964363836303364373461306662303230323465223b733a33323a226566313130303736363164626532343835346466653735666533666339333632223b733a33323a226136353931336331303434656563303931336535353236373035393138623437223b733a33323a226338316233323261623262323362666232363637383533633232616461363331223b733a33323a226231373234623432393738333565376364313835623361663464316530353732223b733a33323a223061646333616238623030646461613831393635646164313566396235313933223b733a33323a223838623132383634643832306463636634353730306463396166366363363436223b733a33323a223561646634333463623439393963373039653633313936633331323461343861223b7d733a343a2268617368223b733a36353a2235616466343334636234393939633730396536333139366333313234613438612d3838623132383634643832306463636634353730306463396166366363363436223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226132333238336164613338323736666432383661616332303338633831646433223b733a33323a226631366362316334303331313636653139313561383165663665303863623536223b7d733a343a2268617368223b733a36353a2266313663623163343033313136366531393135613831656636653038636235362d6132333238336164613338323736666432383661616332303338633831646433223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343731323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35353a7b733a33323a223038626465303436663138333838633965343430393737373963316138393464223b733a33323a223938356133656437303561303336633863326639336563623236363337313734223b733a33323a223339363730376531303264303966653039653563386130316138623436356231223b733a33323a226333633534393031363232303166626233393639333466663738313937656635223b733a33323a223063633962636437313462386231386631353231353864643430333238346266223b733a33323a223564353636363835386463616536343838353465353433333634396566393065223b733a33323a226366383533396337396662363835353363613164376666373334353933643262223b733a33323a223065326633376464663839343338323165626166366463636262616262303666223b733a33323a226536376362636666313661356236666562396239336462613862623531656336223b733a33323a223466343837316565666632353837326431313138336237366233626138353065223b733a33323a226466633861326337353666663263346532653138326231616537333161326666223b733a33323a223364353037356662313865653333326232353238346161653333336666343236223b733a33323a223865636365623533326161306638366431643864396231626137613636623836223b733a33323a223361383438333633653334656331663234363765623632616164366464623761223b733a33323a223461383463313634613564366131323437356539653730386161383466393033223b733a33323a223037613366663739353233303736623434623461633161613136653536346663223b733a33323a226334346630343961643031636132373964333330626531366434343938633664223b733a33323a226664353364303465366231306530663063636465326639623435636234396435223b733a33323a223663303530333036396133363164656664383037616166373062303564333532223b733a33323a223566366263656635383865646465363032623063376531303239306632393962223b733a33323a226564663036323339333264633365383735643566326134633933616439633431223b733a33323a223038663036363465613037386334396665303564626533623666336334393563223b733a33323a226661393137333530636137636466626334363638666336346262396130353932223b733a33323a226636336134633463393865356338633339396530623136313732656361373766223b733a33323a226330306565376434633635316535333838376636353136306436303166646632223b733a33323a223361653838643539396535393264343830623031376135653666653739666339223b733a33323a226661643430383631333664353636383637343936343365663234333635383030223b733a33323a223761323935363137383463333437373135663333393932313463343165343065223b733a33323a226462336266643233303335656462393463643062363365323765623431643134223b733a33323a226666376537353564396231636632623762353166373835323961373562623936223b733a33323a223634653465336331363564663637653464353032663563653139646166373166223b733a33323a223165393435326166653962386636643864386531656232343064343238386539223b733a33323a223230643566626137363362616236353336316232363134653235326166363262223b733a33323a223239616432376239633635353732653065393665326539336133376231303734223b733a33323a226662363636326161343536316265303331363432643865663666653935376330223b733a33323a223461323662663038653562386132653932633333623333633961393535613664223b733a33323a223135326636643038656535303734383032636137386161663463666130313065223b733a33323a223166396335666434323061343736393263366132613464633062636337663031223b733a33323a223936386437316633616438363662643265393137353239663763383739666531223b733a33323a226262346463363139363836303732653139303765363866353835376466653539223b733a33323a223063363731373330336235666666613066656337386530383135643664393730223b733a33323a226164316662613636333136326133333533663031653861386236656466353862223b733a33323a223762346666306531366534346439313532666439353966626230323832346132223b733a33323a223365666335343065376636383764633863623433626164626633376638333965223b733a33323a226337653766306439663365386232343061643534623038623434323939313537223b733a33323a226637636634663265663838383331616232396638316563646366343032636264223b733a33323a223139366430393732626561333132626661353363633666616630303961333637223b733a33323a223861356463626536386235653162643232643636323337363263363632373764223b733a33323a226665383730396235376566616139616232616361326435643934636565643464223b733a33323a226132323338343866383463663838363363653762393536363536643530313337223b733a33323a223335366364306332383438643437626231643332326465663939633530343835223b733a33323a226538393962386463363464306238323461376232363632353233343561626336223b733a33323a223861323130373333623937613563636661356538356437383661613862613731223b733a33323a223466343736366331366463613030326130386263383233613332326430623465223b733a33323a223036663333653537623530656331396137386564613065653163383165383836223b733a33323a223835653661666538336530643264663764363932396434323261353761373366223b733a33323a226435346438643662663366616661303461623263663361306366316662633866223b733a33323a226364386335366434663237643730646262326566396162616237363632343738223b733a33323a226461303734643465313566623063653366363464346165343664363864393764223b733a33323a223566663066663738346537386265343031363036343337356466353766303663223b733a33323a223638313337373262663863313565633334666663623137356234323535653361223b733a33323a223065663934326462306335373863333030363765333962656134336337316333223b733a33323a226430383264356339343433356363646235343933396166356339366636643161223b733a33323a223466383865383366393630666130343063306639343239366438626262653862223b733a33323a223866353231333833643163613763316162393134363334633732383464386365223b733a33323a226535353837333866633431626666656537626166366637663530666139623934223b733a33323a223436353066396463616162663233303538663135383565646433656638656461223b733a33323a226362623530653763306531356264643632353963393134626138323131373133223b733a33323a226231376366643638346164316161363766633362326336613037376532623034223b733a33323a223263663433663035623639663531383465643463623330386139336565623966223b733a33323a223637613862653034313762656462386535653436613438626332316239346262223b733a33323a226438623631333066653464363865633839383532666230353264643663613863223b733a33323a223765396266393339663766396362326237633330656230313134333566303732223b733a33323a226632663537656363336233613365313133643163313035333261326638303963223b733a33323a223738623834313264306538623039343266643761643831393534313934336361223b733a33323a223639626335306431633435303133386338366437313334633863303536616666223b733a33323a223664623538383930663835653362633836323763326635373433336466336563223b733a33323a226632636437616534373131376463396331636535363337383332663431626133223b733a33323a226562656232616636343636666238333066653061396264373066316237616630223b733a33323a223939346563343365613737313732363763633966396232663736623634303530223b733a33323a226437666161343931373333303636333565613862393837646265613636313532223b733a33323a223437303033346434623663333135353130363738333565396463346234303865223b733a33323a223961326165356538313562386164316531383766633864616633356164376535223b733a33323a223463646530643035653834613035663462396165323165303636663164383565223b733a33323a226338343262643238383435343639636334663265366237626637376464343364223b733a33323a226138313234366465633231653964646333323964323534376531376534323230223b733a33323a226665656339333333346337333936303136613561346533626138366439396534223b733a33323a223532623637373536353863366532313238366437373064393134303734306534223b733a33323a223133643438643531663736656639636132393539363435356230656365633464223b733a33323a223063653530383039376362383730623632316661326136393038623463663566223b733a33323a226335666138376665653265333238306131393335303433623465333336666665223b733a33323a223262306233313632396161386563303831636661666632373030363338343330223b733a33323a223536373163306131356235363234356338616166613739336335653737653463223b733a33323a223165633566656633663638396161343566613438323066333431613535326463223b733a33323a223034313764616464623235376230653336356135306134383539343830343063223b733a33323a226630306464326132663663376638333337343961643361623136616561353735223b733a33323a226534636434626534666133646639366330666464336264383433363132633963223b733a33323a223831383362386361326364373037373731323832363363386436663039353337223b733a33323a223937323262623239396337303638313864333964303066623666373663616636223b733a33323a223262336639333366633732313536393532613437333635666437393230633535223b733a33323a223864393733633933336137633866363365333538653032643465326266363963223b733a33323a223834633666323064353664363963663939636665336230656634666135376464223b733a33323a223461323836333930613962623538383538326231653834313438663765346537223b733a33323a226464393032646266633466643662356662666166323038626238356330323465223b733a33323a223832333965393365623439386434366634313038396266306131363036633137223b733a33323a223939353434653563313032663961356131313434323232353034303237666432223b733a33323a223036393665366262346433323965633865653431643834393061373732323163223b733a33323a223132643365363239396662613938343939393665303833636262396437633536223b733a33323a226135613435656536356366346536356235393739623434396466346239356630223b733a33323a223038356664666636333563343665393861613665633535353763383763393461223b7d733a343a2268617368223b733a36353a2230383566646666363335633436653938616136656335353537633837633934612d6135613435656536356366346536356235393739623434396466346239356630223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605213217);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('g7qgqtd30b6vdudcsn8g59jp94', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343931343239372e3730373837333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e69766b6a766b307435366769317668616435346472626a6962223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931363835353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373439333b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373439313b7d7d72656469726563745f75726c7c733a34313a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f766f636162756c617279223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223734323630613234316137386137336136323534626661646138363239313538223b733a33323a226133393531356333383330316366396366373931343365326539636335313565223b7d733a343a2268617368223b733a36353a2261333935313563333833303163663963663739313433653265396363353135652d3734323630613234316137386137336136323534626661646138363239313538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223734393461323062343066336164376462343662383531346230333063316434223b733a33323a223966333566383163636532656666363265343632336562343939373937343662223b733a33323a223265356533346262373937373061303564383434616666363739336433363537223b733a33323a226261633435313436323964613265386230306161343933333462303662633034223b733a33323a226630316330393366336334333966613232363939373332363530623732333432223b733a33323a223632643336663231653934663862336461303734393165373338366132333564223b733a33323a223331363566633434393864643561383431366461626633363933663165636165223b733a33323a223132366664623234363539326263663763353035383764326663663032633733223b733a33323a223538313964653766646230646530623538363664373163303633656239613338223b733a33323a223566303937636362336466653865653032396165643634646639303235646238223b7d733a343a2268617368223b733a36353a2235663039376363623364666538656530323961656436346466393032356462382d3538313964653766646230646530623538363664373163303633656239613338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223632353931656537343333363063626164316664373832323133393332656137223b733a33323a226331633561396166656462323338656365613339383534613939613861306534223b7d733a343a2268617368223b733a36353a2263316335613961666564623233386563656133393835346139396138613065342d3632353931656537343333363063626164316664373832323133393332656137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604914298),
('meslmo8iuv8cpu5fuvm5ellpef', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353436353238382e3936383030343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2234666f766f666633726e31683170676375757631363366687473223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436353936343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383630313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383634393b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383131393b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383838393b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353436383539343b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226662623864656662303039636234613538383639336563623939323864613438223b733a33323a226361393530366261333363323638353662353538383038663038336138346361223b7d733a343a2268617368223b733a36353a2263613935303662613333633236383536623535383830386630383361383463612d6662623864656662303039636234613538383639336563623939323864613438223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323331323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32353a7b733a33323a226337323138303635316438613035363366643935393964373363656436646438223b733a33323a223139666266653862393539303834373139643262643564383432386438303662223b733a33323a223366353663316462346337616261376639313430653132643330336561616166223b733a33323a226464613465366235386532653163636562393130316161366662363463333265223b733a33323a226135353065623335303964623165313731366135366562333936306238366535223b733a33323a226363663432633236643831636135666463636162386438343634326462326266223b733a33323a226332383534323263363333316231343236323239323366313333373761336535223b733a33323a223033363066623539323333343364373433643136373664396465626534623364223b733a33323a223339356365376137373038323034393163326464383234303437653838626238223b733a33323a223665643534323934323166346235366630623932666564623434313363623639223b733a33323a226435646266623261663161346436633066313261373733663031393938646532223b733a33323a223632633962623064376438626136663135393633313334346236303935336231223b733a33323a223336373864303536383537336564633361616439363661656333656636343134223b733a33323a223566313266323065386639346334646362663435356132363531653635343764223b733a33323a223731636438326365313739346539303662313266366263623131376437353734223b733a33323a226630616635376461353937663363656530346663643865363231323639666438223b733a33323a223265363262363336636537656261653033346239366264313061386530613432223b733a33323a223264306263383933623131333265303331303839623337346630383762656637223b733a33323a226537326336393866306230663030623934376534663837393436363337393338223b733a33323a223632636565653533323163643738333738616364386330333635633037346535223b733a33323a223231343139363961373263633563656231333661626632343963353232336137223b733a33323a226432376266383933326236303031316237633032383834646538666363383537223b733a33323a226561376139323166356262363963343936333530363661646235363233343765223b733a33323a223439313330613835333666303638366237646336346462346438346136323262223b733a33323a226163363932336336383934666134396335356239646538633866616664363334223b733a33323a226561323861393038386130363561343634353037383439353333376265303466223b733a33323a223432346632393664643736316461376366643730633732343837623133616164223b733a33323a226637326237323739393765313565356136646133653732376239363530383636223b733a33323a226631383635373437353033323864656664373364636464376632363834373464223b733a33323a223237386532333362336263666532306266613463613736303761303832306436223b733a33323a223936653138643866613433336132616439656463356362373066633530313435223b733a33323a223565303364333730653063623532303131346639633335396137303266623533223b733a33323a223638386362366662343831323730643665376564303962653762353533643565223b733a33323a223434626561636265636136383463386562326466613432663238663030386639223b733a33323a226337363834356361306565316431663865623733363134663435333165383138223b733a33323a226135383663306635633335386233613333376131633533623033653366383239223b733a33323a223962303264303163343539646131646666653935613030626534363234363365223b733a33323a223939366363313139343532653863316432316138303130323234323132306662223b733a33323a223266343135303732666563303535626563613162623532333231326331383165223b733a33323a223466396466323338303766336337356631396437316462656239333030636432223b733a33323a226264333036616335353734366537313863663238643937366366366637346564223b733a33323a223864303264353130346635633932383338313066313239306362663561663263223b733a33323a223062306632336239313931373137393234396166316132316334303235303236223b733a33323a223034343566313334326137353939323030313337376132643035393261626136223b733a33323a223135356535396336336233356235643235343661386636363331356336313562223b733a33323a223162616531616134326662323865666234353931666233616634343465326130223b733a33323a226231313836626135303562396262326636393535656665623233323730616338223b733a33323a223662656134343738383237363138666236666565616437306332316531323738223b733a33323a223462313461616636613861346639363231623931333331316439336263393762223b733a33323a226132633839366539336163323137383961376236616562363138363465616662223b7d733a343a2268617368223b733a36353a2261326338393665393361633231373839613762366165623631383634656166622d3462313461616636613861346639363231623931333331316439336263393762223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323633323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32393a7b733a33323a223839363231323464643634623362366639313036363934376333363961323464223b733a33323a223737373963316139633264656166653562633462353932626230383533643765223b733a33323a223162653061323561613335373464396661663963636633373134343236323832223b733a33323a223663316365346331613935356136353433623661343333636666656361393536223b733a33323a223837366166383964613534626563323661383664393465653235613034663839223b733a33323a223931656139303435353130616331396132333038363265633834303566396331223b733a33323a223830343434346662366661356532366233636132323639656338376637653931223b733a33323a226535663666393061626637623065653438623438316461393434326364333537223b733a33323a223239613462613236646438393966326537356631366561336464376631386264223b733a33323a223062373334376161346231313834666261356539386532656231623561623865223b733a33323a223863396230616431613161373132663037653334343363313263383332313464223b733a33323a226338303336323432653062383332333761343661306462323930393932373562223b733a33323a226332393233316630333566396462623465313734343465616638656134383335223b733a33323a223737623233306631313331353037316261613536643662623731363738366461223b733a33323a223430323761636165666637613431336165643331313035633237373362303839223b733a33323a223131653035656530623138633862636531363764316534663930636235363735223b733a33323a226135323965366461626633643265623138656666383237663062306564656439223b733a33323a223964313262323466323466333338633838336261366335383936366664353734223b733a33323a226163393131366265646234323766643436316131326361376330396634656535223b733a33323a226564666234363262346538323166396561316635653838336533383762313130223b733a33323a226161306130306630333066313832373839326134663437653231623964373864223b733a33323a226232623637336639623765613466373433373037396230663436353731313832223b733a33323a223630343338383463366262343961343735653334363633326364353733636161223b733a33323a223230363038363931356133633065396530356537373139653461376166366339223b733a33323a223134666262363435386338386266636137313632346632616334666637386432223b733a33323a223165326466663435336166333735663565626635616133343434316439623137223b733a33323a223462616563616334336365323034323465366165623363323531613362376663223b733a33323a226331366330626666646537356565643963333036636566316162373936633131223b733a33323a226132343033636463396463303339613339646634313464363836633830616263223b733a33323a223731363630393131353738356337363735316666366339313534626237336561223b733a33323a226532303534316162373461343539636135366562306338393039313832613161223b733a33323a226530353261353061613135323664326161323434616133383138653535633565223b733a33323a226334353464383266313964356564613530353238363761353232343433613234223b733a33323a226333393735333065326338373737643966636338353934623665323037313362223b733a33323a223933373165626330613339646533383766663136376530653162393837386535223b733a33323a223964353530643439393432316136636263663031313539343730326232623439223b733a33323a223830326237643734653032323663646334326334646137656231653132396234223b733a33323a223834303062623330643938656538346631613033353363316537656131386266223b733a33323a226532616464643464626532313265306135653862326331333765373466333830223b733a33323a226166336237653535313533663139343063646538636135353062396631313462223b733a33323a226266626464613537356134303433653537633231333530343363626563333065223b733a33323a223930333439646334376161326239633362383833663136363263393839343566223b733a33323a223639306438613663663064373438643432656637363063646234386238623934223b733a33323a226561333434323035373465353062613338616235323464626539306537306633223b733a33323a226230633266633536383663323838636466303563386162326664346437376266223b733a33323a223931656338393637326463316132363437393632313638353130653765393363223b733a33323a223762306664343466303039623137366363333731343932653065313234666638223b733a33323a223432353531616634666439393138633633366435306135373532623162616563223b733a33323a223734636233336630666437663364316366353930343032313466373363303862223b733a33323a226137366236326162383135353832643931343035366533633837343538643837223b733a33323a223162666466636164376636616237663564646533626562646236613936336635223b733a33323a223732353831326531396539656135656235316333663235666633653530326562223b733a33323a226536636161643561623533356164383432633335633338373162633033346135223b733a33323a223064353438346365376530613066623237623932303732313034653830366566223b733a33323a223734376539643436383938393432366336623333656238616364393732666461223b733a33323a226466643131363830343933383532373965366539376532656233326362663039223b733a33323a223164326338396531356532336638646665383432653338643239626334626662223b733a33323a223038343861366362646235306134323331643732623839316234636261363131223b7d733a343a2268617368223b733a36353a2230383438613663626462353061343233316437326238393162346362613631312d3164326338396531356532336638646665383432653338643239626334626662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223231666431346237356165363261313138393762623032656463383266306538223b733a33323a223862373237376462363732353230326662343530643835643161386635623834223b733a33323a226133396465616335353166306431326361396664643865373731393965653538223b733a33323a223232613234376664643161393632323465613163383430633239646164633761223b7d733a343a2268617368223b733a36353a2232326132343766646431613936323234656131633834306332396461646337612d6133396465616335353166306431326361396664643865373731393965653538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223265636433663730633133643135323364326133333135393533613636333030223b733a33323a226561653938646230363133383466636139306162363966653265643035356630223b733a33323a226632366566646434626437666364356366373438373737393733643731646338223b733a33323a226231323762383062323737613035363563366331376136623933633764303964223b733a33323a226562313533643330363031396565646464316630646365623335656530376531223b733a33323a223835393532363033366264663565366539346631643637386537653365326133223b733a33323a223938306362303435353833663633613863626239326566386338363331303165223b733a33323a223537326463366465363530366432316136306332626538616537643438366466223b733a33323a226632663866323637626339626561343434623461636362383934633861303864223b733a33323a223261666638666136383165363939666462303132616532623133353536663165223b733a33323a223937356130313265336631383038326465646636653433353830633063653834223b733a33323a226433386534643932613936653430313431393665653866333363666664326363223b7d733a343a2268617368223b733a36353a2264333865346439326139366534303134313936656538663333636666643263632d3937356130313265336631383038326465646636653433353830633063653834223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223165393762396461623366356338386364626436626135346635356564316163223b733a33323a226535636535303037636637336232616263653039373332616666333763366137223b733a33323a223265616133663931633363316566623933306566373162366532316165303364223b733a33323a226135383166356332623831386339373739373261363461383437633934313531223b733a33323a226632376231326333363237376561663566353836626434356634616130336263223b733a33323a226362393939613466613931356165316135663834336263366435343836386163223b733a33323a223539376637633438633561396164326662333065303832363565663230633333223b733a33323a223438306432376163303964363165333136363766623265383836366433636534223b733a33323a226562613063343238623736323062343034376339636238383865313235366462223b733a33323a223535393034393462343730636363616662336139343137613665306433336462223b7d733a343a2268617368223b733a36353a2235353930343934623437306363636166623361393431376136653064333364622d6562613063343238623736323062343034376339636238383865313235366462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605465289);

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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(46, 9, 139, NULL, 'literal', '', 'widad', NULL, 1),
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
(57, 12, 91, NULL, 'literal', '', 'python', NULL, 1),
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
(119, 29, 4, 12, 'resource', NULL, NULL, NULL, 1),
(120, 29, 4, 13, 'resource', NULL, NULL, NULL, 1),
(121, 29, 4, 22, 'resource', NULL, NULL, NULL, 1),
(122, 29, 4, 23, 'resource', NULL, NULL, NULL, 1),
(123, 28, 4, 10, 'resource', NULL, NULL, NULL, 1),
(124, 28, 4, 11, 'resource', NULL, NULL, NULL, 1),
(125, 28, 4, 24, 'resource', NULL, NULL, NULL, 1),
(126, 28, 4, 25, 'resource', NULL, NULL, NULL, 1),
(127, 27, 4, 7, 'resource', NULL, NULL, NULL, 1),
(128, 27, 4, 8, 'resource', NULL, NULL, NULL, 1),
(129, 27, 4, 18, 'resource', NULL, NULL, NULL, 1),
(130, 27, 4, 19, 'resource', NULL, NULL, NULL, 1),
(131, 27, 4, 20, 'resource', NULL, NULL, NULL, 1),
(132, 27, 4, 21, 'resource', NULL, NULL, NULL, 1),
(133, 26, 4, 6, 'resource', NULL, NULL, NULL, 1),
(134, 26, 4, 9, 'resource', NULL, NULL, NULL, 1),
(135, 26, 4, 14, 'resource', NULL, NULL, NULL, 1),
(136, 26, 4, 15, 'resource', NULL, NULL, NULL, 1),
(137, 26, 4, 16, 'resource', NULL, NULL, NULL, 1),
(138, 26, 4, 17, 'resource', NULL, NULL, NULL, 1);

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
