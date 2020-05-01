-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 06:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fonis`
--
CREATE DATABASE IF NOT EXISTS `fonis` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fonis`;

-- --------------------------------------------------------

--
-- Table structure for table `clanovi`
--

DROP TABLE IF EXISTS `clanovi`;
CREATE TABLE `clanovi` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `datum_rodjenja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clanovi`
--

INSERT INTO `clanovi` (`id`, `ime`, `prezime`, `email`, `datum_rodjenja`) VALUES
(17, 'Erv', 'Cicchelli', 'ecicchellig@scribd.com', '0000-00-00'),
(18, 'Susana', 'Korneichik', 'skorneichikh@house.gov', '0000-00-00'),
(19, 'Gwenny', 'Wixey', 'gwixeyi@is.gd', '0000-00-00'),
(20, 'Min', 'Hughes', 'mhughesj@earthlink.net', '0000-00-00'),
(21, 'Elihu', 'Lafford', 'elaffordk@360.cn', '0000-00-00'),
(22, 'Northrup', 'Roux', 'nrouxl@php.net', '0000-00-00'),
(24, 'Wilmer', 'Copin', 'wcopinn@skyrock.com', '0000-00-00'),
(25, 'Weylin', 'Scoon', 'wscoono@yandex.ru', '0000-00-00'),
(26, 'Zahara', 'Snoxill', 'zsnoxillp@usnews.com', '0000-00-00'),
(27, 'Annabelle', 'Roan', 'aroanq@irs.gov', '0000-00-00'),
(28, 'Ermentrude', 'Frier', 'efrierr@digg.com', '0000-00-00'),
(29, 'Tan', 'Andrewartha', 'tandrewarthas@usgs.gov', '0000-00-00'),
(30, 'Kevyn', 'Paolinelli', 'kpaolinellit@google.pl', '0000-00-00'),
(31, 'Armin', 'Letertre', 'aletertreu@sohu.com', '0000-00-00'),
(32, 'Carmine', 'Rottger', 'crottgerv@hibu.com', '0000-00-00'),
(33, 'Brandyn', 'Ridout', 'bridoutw@fc2.com', '0000-00-00'),
(34, 'Alyse', 'Thurbon', 'athurbonx@sogou.com', '0000-00-00'),
(35, 'Anita', 'Bayldon', 'abayldony@canalblog.com', '0000-00-00'),
(36, 'Domingo', 'Vernalls', 'dvernallsz@mysql.com', '0000-00-00'),
(37, 'Deirdre', 'Shawl', 'dshawl10@disqus.com', '0000-00-00'),
(38, 'Fan', 'Wilfling', 'fwilfling11@weather.com', '0000-00-00'),
(39, 'Renato', 'oldey', 'roldey12@skype.com', '0000-00-00'),
(40, 'Tonnie', 'Gush', 'tgush13@a8.net', '0000-00-00'),
(41, 'Irvin', 'Berrane', 'iberrane14@clickbank.net', '0000-00-00'),
(43, 'Husein', 'Fernie', 'hfernie16@fastcompany.com', '0000-00-00'),
(44, 'Tillie', 'Riseley', 'triseley17@ifeng.com', '0000-00-00'),
(45, 'Mildred', 'Hartle', 'mhartle18@cdc.gov', '0000-00-00'),
(46, 'Starlin', 'Jakoviljevic', 'sjakoviljevic19@posterous.com', '0000-00-00'),
(47, 'Yankee', 'Caddan', 'ycaddan1a@utexas.edu', '0000-00-00'),
(48, 'Bryon', 'Bowsher', 'bbowsher1b@phoca.cz', '0000-00-00'),
(49, 'Netta', 'Ree', 'nree1c@netlog.com', '0000-00-00'),
(50, 'Hamish', 'Roskelly', 'hroskelly1d@bandcamp.com', '0000-00-00'),
(51, 'Robyn', 'Railton', 'rrailton1e@quantcast.com', '0000-00-00'),
(52, 'Alf', 'Georgeson', 'ageorgeson1f@addthis.com', '0000-00-00'),
(53, 'Talyah', 'Girvin', 'tgirvin1g@marriott.com', '0000-00-00'),
(54, 'Chrisy', 'Youster', 'cyouster1h@salon.com', '0000-00-00'),
(55, 'Sondra', 'Bennis', 'sbennis1i@gov.uk', '0000-00-00'),
(56, 'Harwilll', 'McEntegart', 'hmcentegart1j@vk.com', '0000-00-00'),
(57, 'Tammy', 'Ronci', 'tronci1k@trellian.com', '0000-00-00'),
(58, 'Ida', 'Lowless', 'ilowless1l@squidoo.com', '0000-00-00'),
(59, 'Jayson', 'Melendez', 'jmelendez1m@indiegogo.com', '0000-00-00'),
(60, 'Elvyn', 'Cacacie', 'ecacacie1n@cbslocal.com', '0000-00-00'),
(61, 'Mervin', 'Pearsall', 'mpearsall1o@chron.com', '0000-00-00'),
(62, 'Saundra', 'Matyushenko', 'smatyushenko1p@google.com.br', '0000-00-00'),
(63, 'Gery', 'Enga', 'genga1q@phpbb.com', '0000-00-00'),
(64, 'Colline', 'Rockliffe', 'crockliffe1r@posterous.com', '0000-00-00'),
(65, 'Powell', 'Cadd', 'pcadd1s@engadget.com', '0000-00-00'),
(66, 'Hillyer', 'Kaveney', 'hkaveney1t@reddit.com', '0000-00-00'),
(67, 'Bryn', 'Henker', 'bhenker1u@so-net.ne.jp', '0000-00-00'),
(68, 'Elga', 'Crinion', 'ecrinion1v@issuu.com', '0000-00-00'),
(69, 'Fara', 'Gregori', 'fgregori1w@patch.com', '0000-00-00'),
(70, 'Eddie', 'Barendtsen', 'ebarendtsen1x@moonfruit.com', '0000-00-00'),
(71, 'Marieann', 'Stonuary', 'mstonuary1y@infoseek.co.jp', '0000-00-00'),
(72, 'Julian', 'Texton', 'jtexton1z@feedburner.com', '0000-00-00'),
(73, 'Kellina', 'Dell Casa', 'kdellcasa20@naver.com', '0000-00-00'),
(74, 'Gustav', 'Rabier', 'grabier21@techcrunch.com', '0000-00-00'),
(75, 'Vanya', 'Burgan', 'vburgan22@ox.ac.uk', '0000-00-00'),
(76, 'Tamra', 'Dowry', 'tdowry23@wiley.com', '0000-00-00'),
(77, 'Ina', 'Saltman', 'isaltman24@macromedia.com', '0000-00-00'),
(78, 'Grange', 'Deverale', 'gdeverale25@livejournal.com', '0000-00-00'),
(79, 'Shirl', 'Pagden', 'spagden26@example.com', '0000-00-00'),
(80, 'Ethan', 'Roizin', 'eroizin27@over-blog.com', '0000-00-00'),
(81, 'Marigold', 'Tolworth', 'mtolworth28@flickr.com', '0000-00-00'),
(82, 'Shana', 'McGilmartin', 'smcgilmartin29@themeforest.net', '0000-00-00'),
(83, 'Daphna', 'Ashmore', 'dashmore2a@goo.ne.jp', '0000-00-00'),
(84, 'Ainslie', 'Filipchikov', 'afilipchikov2b@a8.net', '0000-00-00'),
(85, 'Fanchon', 'Betts', 'fbetts2c@vimeo.com', '0000-00-00'),
(86, 'Eugenie', 'Johannesson', 'ejohannesson2d@cnn.com', '0000-00-00'),
(87, 'Chick', 'Boxhill', 'cboxhill2e@dmoz.org', '0000-00-00'),
(88, 'Valle', 'Radoux', 'vradoux2f@eepurl.com', '0000-00-00'),
(89, 'Jamie', 'Giovanitti', 'jgiovanitti2g@vk.com', '0000-00-00'),
(90, 'Tedmund', 'Rostern', 'trostern2h@angelfire.com', '0000-00-00'),
(91, 'Valentina', 'Bundy', 'vbundy2i@microsoft.com', '0000-00-00'),
(92, 'Vlad', 'Janek', 'vjanek2j@smugmug.com', '0000-00-00'),
(93, 'Ermanno', 'Lawther', 'elawther2k@prlog.org', '0000-00-00'),
(94, 'Jesse', 'Revington', 'jrevington2l@mayoclinic.com', '0000-00-00'),
(95, 'Casi', 'Cassely', 'ccassely2m@canalblog.com', '0000-00-00'),
(96, 'Al', 'Batho', 'abatho2n@shutterfly.com', '0000-00-00'),
(97, 'Nicolis', 'Setch', 'nsetch2o@example.com', '0000-00-00'),
(98, 'Gil', 'Donohoe', 'gdonohoe2p@boston.com', '0000-00-00'),
(99, 'Consuela', 'Vedmore', 'cvedmore2q@utexas.edu', '0000-00-00'),
(100, 'Haskell', 'Quinnette', 'hquinnette2r@google.ca', '0000-00-00'),
(101, 'Lucio', 'Sturmey', 'lsturmey2s@pagesperso-orange.fr', '0000-00-00'),
(102, 'Dulcie', 'Kernaghan', 'dkernaghan2t@pcworld.com', '0000-00-00'),
(103, 'Roxine', 'Houldin', 'rhouldin2u@symantec.com', '0000-00-00'),
(104, 'Beverley', 'Novacek', 'bnovacek2v@reference.com', '0000-00-00'),
(105, 'Jason', 'Edeson', 'jedeson2w@instagram.com', '0000-00-00'),
(106, 'Lurline', 'Brummell', 'lbrummell2x@jugem.jp', '0000-00-00'),
(107, 'Anselm', 'Lufkin', 'alufkin2y@microsoft.com', '0000-00-00'),
(108, 'Constancia', 'Lecointe', 'clecointe2z@prnewswire.com', '0000-00-00'),
(109, 'Isidor', 'Pember', 'ipember30@timesonline.co.uk', '0000-00-00'),
(110, 'Mahmud', 'Caplan', 'mcaplan31@fastcompany.com', '0000-00-00'),
(111, 'Gan', 'Mackie', 'gmackie32@army.mil', '0000-00-00'),
(112, 'Dolli', 'Whal', 'dwhal33@dot.gov', '0000-00-00'),
(113, 'Judd', 'Steadman', 'jsteadman34@linkedin.com', '0000-00-00'),
(114, 'Sibley', 'Radford', 'sradford35@usda.gov', '0000-00-00'),
(115, 'Laurel', 'Ginglell', 'lginglell36@usa.gov', '0000-00-00'),
(116, 'Madison', 'Trineman', 'mtrineman37@indiatimes.com', '0000-00-00'),
(117, 'Welch', 'Dungey', 'wdungey38@soup.io', '0000-00-00'),
(118, 'Forster', 'Hickford', 'fhickford39@slate.com', '0000-00-00'),
(119, 'Veriee', 'Nevitt', 'vnevitt3a@clickbank.net', '0000-00-00'),
(120, 'Gunilla', 'Avrashin', 'gavrashin3b@hhs.gov', '0000-00-00'),
(121, 'Joelly', 'Bes', 'jbes3c@themeforest.net', '0000-00-00'),
(122, 'Prince', 'Bende', 'pbende3d@boston.com', '0000-00-00'),
(123, 'Lynnette', 'Gabotti', 'lgabotti3e@tinypic.com', '0000-00-00'),
(124, 'Griz', 'Verny', 'gverny3f@skype.com', '0000-00-00'),
(125, 'Reena', 'Heartfield', 'rheartfield3g@live.com', '0000-00-00'),
(126, 'Alikee', 'Teodori', 'ateodori3h@biglobe.ne.jp', '0000-00-00'),
(127, 'Fonsie', 'Dover', 'fdover3i@naver.com', '0000-00-00'),
(128, 'Alexine', 'Garnson', 'agarnson3j@theatlantic.com', '0000-00-00'),
(129, 'Delinda', 'Shildrake', 'dshildrake3k@jiathis.com', '0000-00-00'),
(130, 'Ivan', 'Etchell', 'ietchell3l@topsy.com', '0000-00-00'),
(131, 'Evyn', 'Points', 'epoints3m@fc2.com', '0000-00-00'),
(132, 'Jourdan', 'Gillice', 'jgillice3n@newyorker.com', '0000-00-00'),
(133, 'Rudy', 'Wallace', 'rwallace3o@nydailynews.com', '0000-00-00'),
(134, 'Inness', 'Reay', 'ireay3p@ucoz.ru', '0000-00-00'),
(135, 'Tallia', 'Mc Caughan', 'tmccaughan3q@ustream.tv', '0000-00-00'),
(136, 'Averell', 'Stollenhof', 'astollenhof3r@ed.gov', '0000-00-00'),
(137, 'Dorian', 'Tummons', 'dtummons3s@army.mil', '0000-00-00'),
(138, 'Leoine', 'Sinnatt', 'lsinnatt3t@drupal.org', '0000-00-00'),
(139, 'Benetta', 'Duggen', 'bduggen3u@usnews.com', '0000-00-00'),
(140, 'Philis', 'Guinane', 'pguinane3v@goodreads.com', '0000-00-00'),
(141, 'Peadar', 'Gallahue', 'pgallahue3w@prweb.com', '0000-00-00'),
(142, 'Alameda', 'Bruinemann', 'abruinemann3x@wisc.edu', '0000-00-00'),
(143, 'Sharlene', 'Rous', 'srous3y@google.es', '0000-00-00'),
(144, 'Dacie', 'Ayers', 'dayers3z@ox.ac.uk', '0000-00-00'),
(145, 'Rowland', 'Kither', 'rkither40@facebook.com', '0000-00-00'),
(146, 'Theresa', 'Charrier', 'tcharrier41@posterous.com', '0000-00-00'),
(147, 'Rockey', 'Eddins', 'reddins42@simplemachines.org', '0000-00-00'),
(148, 'Else', 'Vinden', 'evinden43@histats.com', '0000-00-00'),
(149, 'Jamesy', 'De Michetti', 'jdemichetti44@sciencedirect.com', '0000-00-00'),
(150, 'Osmund', 'Napoleone', 'onapoleone45@ftc.gov', '0000-00-00'),
(151, 'Whitby', 'Beddon', 'wbeddon46@desdev.cn', '0000-00-00'),
(152, 'Laetitia', 'Hartington', 'lhartington47@hugedomains.com', '0000-00-00'),
(153, 'Carolyne', 'Seel', 'cseel48@sphinn.com', '0000-00-00'),
(154, 'Elias', 'Inde', 'einde49@stumbleupon.com', '0000-00-00'),
(155, 'Audrie', 'Sheldrick', 'asheldrick4a@businesswire.com', '0000-00-00'),
(156, 'Tate', 'Bein', 'tbein4b@time.com', '0000-00-00'),
(157, 'Lorna', 'Castelain', 'lcastelain4c@youtube.com', '0000-00-00'),
(158, 'Annabelle', 'Ludwell', 'aludwell4d@qq.com', '0000-00-00'),
(159, 'Micheil', 'Verick', 'mverick4e@indiegogo.com', '0000-00-00'),
(160, 'Frederique', 'Rief', 'frief4f@mozilla.com', '0000-00-00'),
(161, 'Raymund', 'Gersam', 'rgersam4g@xrea.com', '0000-00-00'),
(162, 'Dottie', 'Alenov', 'dalenov4h@toplist.cz', '0000-00-00'),
(163, 'Kennedy', 'O\'Dyvoie', 'kodyvoie4i@thetimes.co.uk', '0000-00-00'),
(164, 'Kellia', 'Allinson', 'kallinson4j@constantcontact.com', '0000-00-00'),
(165, 'Bruce', 'MacNeill', 'bmacneill4k@google.de', '0000-00-00'),
(166, 'Kala', 'Lacelett', 'klacelett4l@fema.gov', '0000-00-00'),
(167, 'Dolly', 'Mowlam', 'dmowlam4m@huffingtonpost.com', '0000-00-00'),
(168, 'Fancie', 'Bianco', 'fbianco4n@istockphoto.com', '0000-00-00'),
(169, 'Ben', 'Hail', 'bhail4o@cpanel.net', '0000-00-00'),
(170, 'Dollie', 'Hellen', 'dhellen4p@ft.com', '0000-00-00'),
(171, 'Joane', 'Nugent', 'jnugent4q@newsvine.com', '0000-00-00'),
(172, 'Maurene', 'Brigden', 'mbrigden4r@sohu.com', '0000-00-00'),
(173, 'Carolin', 'Whal', 'cwhal4s@scientificamerican.com', '0000-00-00'),
(174, 'Benedict', 'Downing', 'bdowning4t@blinklist.com', '0000-00-00'),
(175, 'Nadine', 'Penella', 'npenella4u@opensource.org', '0000-00-00'),
(176, 'Danita', 'Napolione', 'dnapolione4v@dot.gov', '0000-00-00'),
(177, 'Robyn', 'Grady', 'rgrady4w@nyu.edu', '0000-00-00'),
(178, 'Fifine', 'Broadfield', 'fbroadfield4x@webs.com', '0000-00-00'),
(179, 'Georgine', 'Jacks', 'gjacks4y@google.co.uk', '0000-00-00'),
(180, 'Aguie', 'Dunridge', 'adunridge4z@seattletimes.com', '0000-00-00'),
(181, 'Wadsworth', 'Henriquet', 'whenriquet50@linkedin.com', '0000-00-00'),
(182, 'Gordie', 'Fake', 'gfake51@drupal.org', '0000-00-00'),
(183, 'Lynnett', 'Bonefant', 'lbonefant52@storify.com', '0000-00-00'),
(184, 'Rhianon', 'Saladino', 'rsaladino53@cbc.ca', '0000-00-00'),
(185, 'Pet', 'Mewes', 'pmewes54@posterous.com', '0000-00-00'),
(186, 'Fitzgerald', 'Sirett', 'fsirett55@i2i.jp', '0000-00-00'),
(187, 'Ulick', 'Riccioppo', 'uriccioppo56@arstechnica.com', '0000-00-00'),
(188, 'Tammy', 'MacDearmaid', 'tmacdearmaid57@indiatimes.com', '0000-00-00'),
(189, 'Benton', 'Farfalameev', 'bfarfalameev58@meetup.com', '0000-00-00'),
(190, 'Maryl', 'Piris', 'mpiris59@moonfruit.com', '0000-00-00'),
(191, 'Heindrick', 'Loader', 'hloader5a@skyrock.com', '0000-00-00'),
(192, 'Hilda', 'Emmett', 'hemmett5b@senate.gov', '0000-00-00'),
(193, 'Jeffrey', 'Ingerfield', 'jingerfield5c@va.gov', '0000-00-00'),
(194, 'Eal', 'Arends', 'earends5d@intel.com', '0000-00-00'),
(195, 'Auberon', 'Braithwaite', 'abraithwaite5e@independent.co.uk', '0000-00-00'),
(196, 'Etty', 'MacKnight', 'emacknight5f@nhs.uk', '0000-00-00'),
(197, 'Hulda', 'Mardlin', 'hmardlin5g@is.gd', '0000-00-00'),
(198, 'Zahara', 'Housen', 'zhousen5h@mlb.com', '0000-00-00'),
(199, 'Rosa', 'Vince', 'rvince5i@barnesandnoble.com', '0000-00-00'),
(200, 'Goober', 'Hughlin', 'ghughlin5j@pbs.org', '0000-00-00'),
(201, 'Pera', 'Peric', 'pera@peric.com', NULL),
(204, 'Tamara', 'Naumovic', 'tamaranaumovic@gmail.com', NULL),
(205, 'Tamara', 'Naumovic', 'tamaranaumovic@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanovi`
--
ALTER TABLE `clanovi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanovi`
--
ALTER TABLE `clanovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
