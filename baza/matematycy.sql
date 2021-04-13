-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Kwi 2021, 10:39
-- Wersja serwera: 10.4.16-MariaDB
-- Wersja PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `matematycy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematycy`
--

CREATE TABLE `matematycy` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `matematycy`
--

INSERT INTO `matematycy` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Carl', 'Gauss'),
(2, 'Stefan', 'Banach'),
(3, 'Stefan', 'Banach');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publikacje`
--

CREATE TABLE `publikacje` (
  `idAutora` int(11) NOT NULL,
  `tytul` text NOT NULL,
  `rokWydania` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `publikacje`
--

INSERT INTO `publikacje` (`idAutora`, `tytul`, `rokWydania`) VALUES
(1, 'Badania arytmetyczne', 1801),
(2, 'Rachunek różniczkowy i całkowy', 1929),
(3, 'Teoria operacji', 1931);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `matematycy`
--
ALTER TABLE `matematycy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  ADD PRIMARY KEY (`idAutora`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `matematycy`
--
ALTER TABLE `matematycy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  MODIFY `idAutora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
