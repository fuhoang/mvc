-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2013 at 05:49 PM
-- Server version: 5.5.32
-- PHP Version: 5.5.4-1+debphp.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new_era_geeks`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_table`
--

CREATE TABLE IF NOT EXISTS `blog_table` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `blog_title` varchar(250) NOT NULL,
  `blog_content` varchar(2000) NOT NULL,
  `author` tinytext NOT NULL,
  `display` tinyint(2) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `embed_url` varchar(200) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `date_posted` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `blog_table`
--

INSERT INTO `blog_table` (`id`, `cat_id`, `blog_title`, `blog_content`, `author`, `display`, `image_url`, `embed_url`, `keywords`, `date_posted`) VALUES
(1, 0, 'hello', 'hello world', '', 3, '', 'some url', 'hi', '0'),
(2, 0, 'hello', 'hello world', '', 3, '', 'some url', 'hi', '0'),
(3, 0, 'hello', 'hello world', '', 3, '', 'some url', 'hi', '0'),
(4, 0, 'hi', 'hi', '', 3, '', 'hi', 'hi', '0'),
(5, 0, 'hello world', 'the is the first test for the upload pix', '', 3, '', 'url embed', 'keywords', '0'),
(6, 0, 'hello world', 'the is the first test for the upload pix', '', 3, '', 'url embed', 'keywords', '0'),
(7, 0, 'tyga', 'gone', '', 3, 'picture/20120416/', 'leaving this dump', 'hate egypt', '0'),
(8, 0, 'Egypt is the worst country i have evr been too', 'I need to leave this place i had enough', '', 3, 'picture/20120416/', 'video url', 'some keyword', '0'),
(9, 0, 'Egypt is the worst country i have evr been too', 'I need to leave this place i had enough', '', 3, 'picture/20120416/2_php-main.jpg', 'video url', 'some keyword', '0'),
(10, 0, 'hello', 'hihihihihi', '', 3, 'picture/20120416/3_php-main.jpg', 'www.youtube.com', 'time', '0'),
(11, 0, 'hello', 'shit i hate this county', '', 3, 'picture/20120416/4_php-main.jpg', 'insert so,e shit', 'inert some shit', '0'),
(12, 0, 'Today is mon', 'hello', '', 3, '', 'some link', 'keywords', '0'),
(13, 0, 'hello 2 ', 'helloo wolr', '', 3, 'picture/20120430/php-main.jpg', 'ndakh', 'hkbu', '1333256400'),
(14, 0, 'fuffu', 'fufuffu', '', 3, '', 'fufufu', 'fufuuf', '1333256400'),
(15, 0, 'hhoho', 'gigiy', '', 3, '', 'iuhiuhiu', 'iuhiuhui', '1333256400'),
(16, 0, 'hhoho', 'gigiy', '', 3, '', 'iuhiuhiu', 'iuhiuhui', '1333256400'),
(17, 0, 'hhoho', 'gigiy', '', 3, '', 'iuhiuhiu', 'iuhiuhui', '1335793887'),
(18, 0, 'hhoho', 'gigiy', '', 3, '', 'iuhiuhiu', 'iuhiuhui', '1335793916'),
(19, 0, 'hhoho', 'gigiy', '', 3, '', 'iuhiuhiu', 'iuhiuhui', '1335794124'),
(20, 0, 'hhoho', 'gigiy', '', 3, '', 'iuhiuhiu', 'iuhiuhui', '1335794166'),
(21, 0, 'This time its personal', 'hello hi', '', 3, 'picture/20120506/php-main.jpg', 'hello', 'keywords', '1336325321'),
(22, 0, 'HELLO HI', 'Come let go...', '', 3, 'picture/20120506/1_php-main.jpg', 'URL', 'keywords', '1336325457'),
(23, 0, 'HELLO HI', 'Come let go...', '', 3, 'picture/20120506/2_php-main.jpg', 'URL', 'keywords', '1336325465'),
(24, 4, 'HELLO HI', 'Come let go...', '', 3, 'picture/20120506/3_php-main.jpg', 'URL', 'keywords', '1336325485'),
(25, 0, 'HELLO HI', 'Come let go...', '', 1, 'picture/20120506/4_php-main.jpg', 'URL', 'keywords', '1336325488'),
(26, 0, 'HELLO HI', 'Come let go...', '', 2, 'picture/20120506/5_php-main.jpg', 'URL', 'keywords', '1336325492'),
(27, 0, 'HELLO HI', 'Come let go...', '', 2, 'picture/20120506/6_php-main.jpg', 'URL', 'keywords', '1336325498'),
(28, 0, 'HELLO HI', 'Come let go...', '', 2, 'picture/20120506/7_php-main.jpg', 'URL', 'keywords', '1336325503'),
(29, 0, 'HELLO HI', 'Come let go...', '', 1, 'picture/20120506/8_php-main.jpg', 'URL', 'keywords', '1336325507'),
(30, 0, 'it london baby', 'hahaah', '', 3, 'picture/20120506/9_php-main.jpg', 'timebomb', 'keywrods', '1336325615'),
(31, 0, 'it london baby', 'hahaah', '', 3, 'picture/20120506/10_php-main.jpg', 'timebomb', 'keywrods', '1336325621'),
(32, 0, 'it london baby', 'hahaah', '', 3, 'picture/20120506/11_php-main.jpg', 'timebomb', 'keywrods', '1336325624'),
(33, 0, 'it london baby', 'hahaah', '', 3, 'picture/20120506/12_php-main.jpg', 'timebomb', 'keywrods', '1336325631'),
(34, 0, 'it london baby', 'hahaah hahaahhahaahhahaahhahaah ha hahaah hahaahhahaahhahaahhahaahhahaahhahaahhahaahhahaahhahaahhahaahhahaahhahaahhahaah hahaahhahaahhahaahhahaah hahaahhahaahhahaahhahaahhahaahhaahhahaahhahaah hahaahhahaah hahaahhahaahhahaahhahaahhahaahhahaah hahaahhahaahhahaah hahaahhahaahhahaahhahaahhahaah hahaah hahaah', 'Fu Hoang', 3, 'picture/20120506/13_php-main.jpg', 'timebomb', 'keywrods', '1336325640'),
(35, 0, 'it london baby', 'hahaah', '', 3, 'picture/20120506/14_php-main.jpg', 'timebomb', 'keywrods', '1336325673'),
(36, 0, 'hello its london baby', 'hahaah', 'fu', 2, 'picture/20120506/15_php-main.jpg', 'timebomb', 'keywrods', '1336325677'),
(37, 0, 'test t', '', '', 2, '', '', '', '1342021158'),
(38, 0, 'test', 'test', '', 2, 'picture/20120711/ancient-egypt-gods.jpg', 'test', 'test', '1342021260'),
(39, 0, 'test', 'test', '', 1, 'picture/20120711/1_ancient-egypt-gods.jpg', 'test', 'test', '1342021367'),
(40, 0, 'One to one connect with people', 'test', 'fuhoang', 1, 'picture/20120711/2_ancient-egypt-gods.jpg', 'test', 'test', '1342021392'),
(41, 0, 'Private and public', 'utho some how over the rainbow. lets go, i can do this become better then i am now', 'author', 1, 'picture/20120711/3_ancient-egypt-gods.jpg', 'author', 'author', '1342021685'),
(42, 0, 'author', 'utho', 'author', 1, 'picture/20120711/3_ancient-egypt-gods.jpg', 'author', 'author', '1342353158'),
(43, 0, 'update author blog', 'utho', 'author', 1, 'picture/20120711/3_ancient-egypt-gods.jpg', 'author', 'author', '1342353195'),
(44, 0, 'where are we?', 'utho', 'author', 1, 'picture/20120711/3_ancient-egypt-gods.jpg', 'author', 'author', '1342353322'),
(45, 0, 'update author blog 12345', 'utho', 'author', 3, 'picture/20120711/3_ancient-egypt-gods.jpg', 'author', 'author', '1342353453'),
(46, 4, 'Latest news on today topic', 'some content goes here have to say something about this', 'Fu hoang', 1, 'picture/20120715/ancient-egypt-gods.jpg', 'url goes here', 'some, keywords, goes , here', '1342355884'),
(47, 3, '', '', '', 3, '', '', '', '1350989589'),
(48, 5, 'hello duane', 'my name is fu', 'new era geek', 1, '', '', 'hi', '1355496850'),
(49, 3, 'some', 'hello hi hello hi hello', 'Fu hoang', 1, 'picture/20121222/2_Stooshe_640.jpg', 'jlb', 'jbkjb', '1356099398'),
(50, 1, 'hellooooooooooooooo', 'ojhohuhgoug', 'oihoghog', 3, '', 'ghogho', 'oghoighoi', '1356103629'),
(51, 4, 'fufufuuf', 'fufufuf', 'fuufuff', 3, '', 'fufufu', 'fufufu', '1356103840'),
(52, 1, 'test private', 'some texts goes here, and here and other there! some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!\r\n\r\nsome texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!\r\n\r\nsome texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!some texts goes here, and here and other there!', 'sgsg`', 1, 'picture/20130417/stones.jpg', 'sfsfsa', 'sfsdfsdf', '1356173095'),
(53, 2, 'rick ', 'rossy cnxz,cnzx mzc ,zcx mzxc, zc,zx cmz,xc z,c ,zxc,zc z,c zxc,z xc,zxczxcmzx.cmzx.c cnzx.cnzxlcnlkzx lzxkcnlzcnlzx clzkcnzxlckz zlxcknzlxcnzxlk kzxnclzxc lzx ckclzkclzxc kczlcnzxlcnxz kclznclzxnclzxncl; kcznclnzclz ckzlcnlzncz kcznclznclzx ckzxcnzlcnlz\r\nckmnzlcnlzxnclkzxnc;zxc lzcnlkzxnclkzx zxknclzxnclzx kcnzlcnzxlcn\r\nczxclknzxlc ncklzxnclxzncl cnzlkxnclzxnc kxnclzxnclzx ckxzlcnlzxcn kxnclznxc kxnclzxnclzxn ckzxnclzxnclzx cnzlxcnlzxnclzx czxlcnzlxkcnxzl cknzxlcnxzlcnxzkxlncl lzxnclzxnclzx', 'dkal', 1, 'picture/20130417/pier.jpg', 'lklk', 'rick', '1356203876'),
(54, 6, 'les twins', 'hello', 'hello', 1, '', 'sdnon', 'les twins', '1356203914'),
(55, 5, 'Duane is a shit', 'hello', 'kljfll', 1, 'picture/20121222/Stooshe_640.jpg', 'kll', 'keywords', '1356204058'),
(56, 1, 'Music popop', 'helooo world', 'Fu hoang', 1, 'picture/20121222/1_Stooshe_640.jpg', 'ddddpop', 'pop', '1356213563'),
(57, 2, 'hello', 'fufufufdaslb, dada, dADAS,jkjkdasda ddnnd jdjjd jd djd dj jdjdjd jddjjddoadj;a jd;asdjas; jdaskdjska;d djasdjsa;ld jdksjdkisn djsdjsld  jsldjs d\r\nd jsdsldjsldjsldj sjdsldjs djsldjslds djlsdjs djslds dsjdlsd sjldjs ldjsdlsjdlsd sjdlsdsj ds\r\nsjdlsjds\r\ndsl djsldjsldjsldjsldjsldjsldjsldjlsdjlsd\r\n\r\nsjdkshdkshd kshd kshdkssfufufufdaslb, dada, dADAS,jkjkdasda ddnnd jdjjd jd djd dj jdjdjd jddjjddoadj;a jd;asdjas; jdaskdjska;d djasdjsa;ld jdksjdkisn djsdjsld  jsldjs d\r\nd jsdsldjsldjsldj sjdsldjs djsldjslds djlsdjs djslds dsjdlsd sjldjs ldjsdlsjdlsd sjdlsdsj ds\r\nsjdlsjdsfafas afas', 'fufufuf', 1, 'picture/20130417/mojave.jpg', 'fufufu', 'ffufufu', '1356352138'),
(58, 6, 'xmas', 'hoho', 'hoho', 1, '', 'hoho', 'hoho', '1356352202'),
(59, 1, 'baby babu baubbauba nabauba ajbkabka ajakjak labnajl', 'contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..contetnt goes here..', 'baby', 1, 'picture/20130412/Stooshe_640.jpg', 'baby', 'baby', '1356352227'),
(60, 1, 'dj ez', 'Tet goes here, Tet goes here, Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,\r\nTet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,\r\nTet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,\r\nTet goes here,Tet goes here,Tet goes here,\r\nTet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,Tet goes here,', 'hahaha', 1, 'picture/20130417/ladybug.jpg', 'ahhaha', 'ahhaa', '1356352262'),
(61, 1, 'test 12234', 'sone texts goes here, sone texts goes heresone texts goes here,sone texts goes here ,sone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes here\r\n\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes here\r\n\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes here\r\n\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes here\r\n\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes heresone texts goes here\r\nsone texts goes heresone texts goes here\r\nsone texts goes here', 'dada', 1, 'picture/20130417/Stooshe_640.jpg', 'blh', 'haha', '1356352651'),
(62, 0, 'fu', 'fu', '', 0, '', '', 'fu', '2013-04-21 08:35:14'),
(64, 9, 'fyfuf', 'ffff', '', 0, '', '', 'ffff', '2013-04-21 12:26:52'),
(72, 0, '', '', '', 0, '', '', '', '2013-05-31 16:46:34'),
(67, 0, '', '', '', 0, '', '', '', '2013-05-28 10:09:17'),
(68, 0, '', '', '', 0, '', '', '', '2013-05-28 10:13:19'),
(69, 0, '', '', '', 0, '', '', '', '2013-05-28 10:13:24'),
(70, 0, '', '', '', 0, '', '', '', '2013-05-28 10:20:56'),
(71, 0, 'd', 'f', '', 0, '', '', 'f', '2013-05-28 10:21:24'),
(73, 0, '', '', '', 0, '', '', '', '2013-05-31 16:47:15'),
(74, 0, 'mlk', 'klkl', 'klk', 2, 'picture/20130531/lightning.jpg', 'lk', 'lk', '1370017294'),
(75, 0, 'mlk', 'klkl', 'klk', 2, 'picture/20130531/1_lightning.jpg', 'lk', 'lk', '1370017498'),
(77, 4, 'Hello world this is a test', 'this is a test', 'by me', 1, 'picture/20130611/sea-mist.jpg', '', 'feature', '1370909741'),
(78, 4, 'Nice Picture', 'hello everyone', 'by me', 1, 'picture/20130611/pier.jpg', '', 'picture', '1370910565'),
(79, 4, 'Its another one', 'Come on lets go???', 'by me', 1, 'picture/20130611/lightning.jpg', '', 'hello', '1370910612'),
(80, 4, 'bad boi', 'bbbbbb', 'bbb', 1, 'picture/20130611/flowing-rock.jpg', 'bbb', 'bb', '1370910707'),
(81, 4, 'dflklknl;nl ;k lk lk  k', 'klklk', ' klkl ', 1, 'picture/20130611/large.jpg', 'kl l', 'klkl', '1370913374'),
(82, 0, 'Malawi', 'some text goes here', '', 0, 'uploads/20130820/mvumi_school.png', '', 'malawi', '1370913374'),
(83, 0, 'Malawi', 'some texts goes here', '', 0, 'uploads/20130820/Chairs-1.png', '', 'malawi', '1370913374'),
(84, 0, 'nhkata bay ', 'biggest lake in the world ', '', 0, 'uploads/20130820/1_mvumi_school.png', '', 'bay', '1370913374'),
(85, 0, 'sfsd', 'sfsd', '', 0, 'uploads/20130820/always.png', '', 'asfs', '1370913374'),
(86, 0, 'in east africa', 'long journey but its worth it ', '', 0, 'uploads/20130820/bus1.png', '', 'africa', '1376994788');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
