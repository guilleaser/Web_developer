DROP DATABASE IF EXISTS DB_emails;
CREATE DATABASE DB_emails;
USE DB_emails


CREATE TABLE `links` (
  `id` int(11) NOT NULL auto_increment,
  `titel` varchar(75) NOT NULL default '',
  `name` varchar(35) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
);

CREATE TABLE `clicks` (
  `id` int(11) NOT NULL auto_increment,
  `link_id` int(10) NOT NULL default '0',
  `visitor_ip` varchar(15) NOT NULL default '',
  `click_at` datetime NOT NULL,
  `country` char(2) NOT NULL default '',
  `on_page` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
);