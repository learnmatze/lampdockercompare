-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Erstellungszeit: 20. Nov 2023 um 08:25
-- Server-Version: 8.2.0
-- PHP-Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `lamp_docker_compose`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Adresses`
--

CREATE TABLE `Adresses` (
  `PK_Adress` int NOT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Persons`
--

CREATE TABLE `Persons` (
  `PK_Person` int NOT NULL,
  `Firstname` varchar(255) DEFAULT NULL,
  `Lastname` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `socialsecuritynumber` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `Persons`
--

INSERT INTO `Persons` (`PK_Person`, `Firstname`, `Lastname`, `age`, `socialsecuritynumber`) VALUES
(1, 'John', 'Doe', 30, '123-45-6789'),
(2, 'Jane', 'Smith', 25, '987-65-4321'),
(3, 'Michael', 'Johnson', 35, '234-56-7890'),
(4, 'Emily', 'Williams', 28, '876-54-3210'),
(5, 'Christopher', 'Brown', 40, '345-67-8901'),
(6, 'Olivia', 'Davis', 22, '210-98-7654'),
(7, 'Daniel', 'Miller', 33, '789-01-2345'),
(8, 'Sophia', 'Martinez', 27, '567-89-0123'),
(9, 'Matthew', 'Taylor', 38, '432-10-9876'),
(10, 'Ava', 'Moore', 29, '109-87-6543'),
(11, 'James', 'Anderson', 32, '678-90-1234'),
(12, 'Emma', 'White', 31, '456-78-9012'),
(13, 'William', 'Lee', 36, '321-09-8765'),
(14, 'Isabella', 'Jackson', 24, '890-12-3456'),
(15, 'Benjamin', 'Harris', 37, '543-21-0987'),
(16, 'Mia', 'Thomas', 26, '012-34-5678'),
(17, 'Elijah', 'Hall', 34, '789-23-4567'),
(18, 'Charlotte', 'Walker', 23, '234-56-7891'),
(19, 'Logan', 'Perez', 39, '567-89-0123'),
(20, 'Amelia', 'Turner', 28, '345-67-8902');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Adresses`
--
ALTER TABLE `Adresses`
  ADD PRIMARY KEY (`PK_Adress`);

--
-- Indizes für die Tabelle `Persons`
--
ALTER TABLE `Persons`
  ADD PRIMARY KEY (`PK_Person`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
