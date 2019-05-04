-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 06, 2018 alle 15:55
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guarina`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `book`
--

CREATE TABLE `book` (
  `codB` int(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `author` varchar(60) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `book`
--

INSERT INTO `book` (`codB`, `title`, `author`, `subject`, `description`) VALUES
(1, 'C++ Primer', 'Stanley B. Lippman', 'Computer Science', 'Fully updated and recast for the newly released C++11 standard, this authoritative and comprehensive introduction to C++ will help you to learn the language fast, and to use it in modern, highly effective ways. Highlighting today’s best practices, the authors show how to use both the core language and its standard library to write efficient, readable, and powerful code.'),
(2, 'Java How to Program 9th edition', 'Paul Deitel', 'Computer Science', 'The Deitels’ groundbreaking How to Program series offers unparalleled breadth and depth of object-oriented programming concepts and intermediate-level topics for further study. This survey of Java programming contains an optional extensive OOD/UML 2 case study on developing and implementing the software for an automated teller machine. '),
(3, 'Compilers: Principles, Techiniques, and Tools', 'Monica S. Lam', 'Computer Science', 'Compilers: Principles, Techniques and Tools, known to professors, students, and developers worldwide as the \"Dragon Book,\" is available in a new edition.  Every chapter has been completely revised to reflect developments in software engineering, programming languages, and computer architecture that have occurred since 1986, when the last edition published.  The authors, recognizing that few readers will ever go on to construct a compiler, retain their focus on the broader set of problems faced in software design and software development.'),
(4, 'Learning Python', 'Mark Lutz', 'Computer Science', 'Get a comprehensive, in-depth introduction to the core Python language with this hands-on book. Based on author Mark Lutz’s popular training course, this updated fifth edition will help you quickly write efficient, high-quality code with Python. It’s an ideal way to begin, whether you’re new to programming or a professional developer versed in other languages.'),
(5, 'Dark Energy', 'Miao Li', 'Physical Science', 'This book introduces the current state of research on dark energy. It consists of three parts. The first part is for preliminary knowledge, including general relativity, modern cosmology, etc. The second part reviews major theoretical ideas and models of dark energy. The third part reviews some observational and numerical works. The aim of this book is to provide a sufficient level of understanding of dark energy problems, so that the reader can both get familiar with this area quickly and also be prepared to tackle the scientific literature on this subject. It will be useful for graduate students and researchers who are interested in dark energy.'),
(6, 'Pulsating Stars', 'Morcio Catelan', 'Physical Science', 'This book surveys our understanding of stars which change in brightness because they pulsate. Pulsating variable stars are keys to distance scales inside and beyond the Milky Way galaxy. They test our understanding not only of stellar pulsation theory but also of stellar structure and evolution theory. Moreover, pulsating stars are important probes of the formation and evolution of our own and neighboring galaxies. Our understanding of pulsating stars has greatly increased in recent years as large-scale surveys of pulsating stars in the Milky Way and other Local Group galaxies have provided a wealth of new observations and as space-based instruments have studied particular pulsating stars in unprecedented detail.'),
(7, 'The Geometry of Time', 'Dierck-Ekkehard Liebscher', 'Physical Science', 'A description of the geometry of space-time with all the questions and issues explained without the need for formulas. As such, the author shows that this is indeed geometry, with actual constructions familiar from Euclidean geometry, and which allow exact demonstrations and proofs. The formal mathematics behind these constructions is provided in the appendices. \r\nThe result is thus not a textbook introducing readers to the theory of special relativity so they may calculate formally, but rather aims to show the connection with synthetic geometry. It presents the relation to projective geometry and uses this to illustrate the starting points of general relativity. Written at an introductory level for undergraduates, this novel presentation will also benefit teaching staff. '),
(8, 'Formation and Evolution of Exoplantes', 'Rory Barnes', 'Physical Science', 'This single, coherent review of the theory behind extrasolar planet formation and interaction systematically covers all aspects of the topic, including different formation processes, planet-planet scattering, giant planets and brown dwarfs. With a chapter on observation, careful referencing and an elaborate bibliography at the end of each chapter, this is indispensable reading for researchers, theorists and observers alike.');

-- --------------------------------------------------------

--
-- Struttura della tabella `reservation`
--

CREATE TABLE `reservation` (
  `idR` int(20) NOT NULL,
  `refU` varchar(60) NOT NULL,
  `refB` int(20) NOT NULL,
  `initialDate` date NOT NULL,
  `finalDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `reservation`
--

INSERT INTO `reservation` (`idR`, `refU`, `refB`, `initialDate`, `finalDate`) VALUES
(1, 'Keenan', 2, '2018-09-05', '2018-09-12'),
(2, 'Laila', 6, '2018-09-06', '2018-09-09'),
(3, 'Audreanne', 7, '2018-09-07', '2018-09-14'),
(4, 'Keenan', 3, '2018-09-06', '2018-09-18'),
(5, 'filippo92', 1, '2018-09-06', '2018-09-13'),
(6, 'filippo92', 5, '2018-10-01', '2018-10-16'),
(7, 'Jammie', 5, '2018-11-14', '2018-11-30'),
(8, 'Keenan', 1, '2018-10-18', '2018-10-24'),
(9, 'Audreanne', 1, '2018-11-01', '2018-11-30'),
(10, 'Laila', 8, '2018-09-06', '2018-09-27'),
(11, 'Laila', 5, '2018-12-01', '2018-12-15'),
(12, 'Laila', 4, '2018-12-13', '2018-12-31'),
(13, 'Jammie', 4, '2018-09-06', '2018-09-11');

-- --------------------------------------------------------

--
-- Struttura della tabella `review`
--

CREATE TABLE `review` (
  `idReview` int(20) NOT NULL,
  `refUser` varchar(60) NOT NULL,
  `refBook` int(20) NOT NULL,
  `dateReview` datetime NOT NULL,
  `titleReview` varchar(120) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `review`
--

INSERT INTO `review` (`idReview`, `refUser`, `refBook`, `dateReview`, `titleReview`, `text`) VALUES
(1, 'Keenan', 2, '2018-09-05 17:48:35', 'Really good', 'As all Deitel books, it is really good and comprehensive. However, it is in complete black and white, as it is the cheap version. For the color in the code, search for more expensive editions.'),
(2, 'Audreanne', 7, '2018-09-05 17:53:30', 'A confounding composition', 'It is difficult for me to believe this book was published by Wiley. The very same publisher of Jackson\'s book on Classical Electrodynamics and many other great works. Perhaps it may have something to do with the fact that it is Wiley-VCH. In any case the book takes mature notions from many sources and simply confounds the collective logic. It is as though the author is mainly interested in elevating certain physicists/mathematicians in spite of the fact that they were in error or their contribution was far less relevant. One of many, many examples is the important fact that Newtons\'s second law of motion as stated yields conservation of linear momentum.\r\n\r\nI can not imagine using this book as a text book for a course in either physics or mathematics.'),
(3, 'Keenan', 3, '2018-09-05 18:07:20', 'Useful book', 'I\'m a computer engineering student and I purchased the book for my programming languages and compilers course. At present I still haven\'t completed the course, but I\'ve already found this book pretty useful so far. The concepts are clearly and well explained, so that I could better understand some points that I found rather obscure during the lessons. It\'s being of great help, so I\'m very satisfied of this purchase.'),
(4, 'filippo92', 1, '2018-09-06 10:52:41', 'Consigliato!', 'Tutto ciò che c?è da sapere sul C++ è scritto in questo libro.\r\nOttimo sia per chi deve imparare il linguaggio da zero sia per chi lo conosce ma vuole approfondire alcuni aspetti. \r\nPuò essere anche usato come manuale di riferimento.'),
(5, 'Jammie', 4, '2018-09-06 15:25:57', 'Very detailed', 'Book is very good, great details, sometimes too verbose, in my opinion but still ok. Easy to read and with good examples. Very satisfied.');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `username` varchar(60) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `university` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `firstname`, `lastname`, `age`, `university`) VALUES
('Audreanne', 'a1234', 'Idella.Bernhard@christy.ca', 'Julianne', 'Baumbach', 23, 'Physics'),
('filippo92', 'admin1', 'filippoguarina@gmail.com', 'Filippo', 'Guarina', 26, 'Computer Engineering            '),
('Jammie', 'd1234', 'Dameon@logan.com', 'Clinton', 'Maggio', 28, 'History and philosophy'),
('Keenan', 'b1234', 'Quinten.Botsford@lucas.us', 'Geovanni', 'Simonis', 25, 'Computer Engineering'),
('Laila', 'c1234', 'Orland.Goyette@otha.me', 'Jo', 'Walker', 19, 'Physics');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`codB`);

--
-- Indici per le tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idR`),
  ADD KEY `FK: refU REFERENCE USER` (`refU`),
  ADD KEY `FK: refB REFERENCE BOOK` (`refB`);

--
-- Indici per le tabelle `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`idReview`),
  ADD KEY `FK: refUser REFERENCE USER` (`refUser`),
  ADD KEY `FK: refBook REFERENCE BOOK` (`refBook`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idR` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT per la tabella `review`
--
ALTER TABLE `review`
  MODIFY `idReview` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK: refB REFERENCE BOOK` FOREIGN KEY (`refB`) REFERENCES `book` (`codB`),
  ADD CONSTRAINT `FK: refU REFERENCE USER` FOREIGN KEY (`refU`) REFERENCES `user` (`username`);

--
-- Limiti per la tabella `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK: refBook REFERENCE BOOK` FOREIGN KEY (`refBook`) REFERENCES `book` (`codB`),
  ADD CONSTRAINT `FK: refUser REFERENCE USER` FOREIGN KEY (`refUser`) REFERENCES `user` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
