-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 06 月 19 日 07:55
-- 服务器版本: 5.1.50
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ngblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `category`
--


-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `option_value` varchar(64) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `options`
--

INSERT INTO `options` (`ID`, `option_name`, `option_value`) VALUES
(1, 'user', 'admin'),
(2, 'password', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_title` text CHARACTER SET utf8 NOT NULL,
  `post_content` longtext CHARACTER SET utf8 NOT NULL,
  `post_markdown` longtext CHARACTER SET utf8 NOT NULL,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`ID`, `post_title`, `post_content`, `post_markdown`, `post_date`) VALUES
(12, 'Test', '<h1>Test</h1>\n\n<h2>Test</h2>\n\n<ul><li>test1</li><li>test2</li></ul>', '# Test\r\n\r\n## Test\r\n\r\n- test1\r\n- test2', '2015-06-19 13:52:24'),
(13, 'Test', '<h1>Test</h1>\n\n<h2>Test</h2>\n\n<ul><li>test1</li><li>test2saaaaaa</li></ul>', '# Test\r\n\r\n## Test\r\n\r\n- test1\r\n- test2saaaaaa', '2015-06-19 13:52:33'),
(11, 'markdown test', '<h2>这是表示</h2>\n\n<p>=======</p>\n\n<blockquote><p>这是列表\n列表</p></blockquote>', '## 这是表示\r\n\r\n=======\r\n\r\n> 这是列表\r\n> 列表', '2015-06-19 10:32:44');

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tags_name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `tags`
--

