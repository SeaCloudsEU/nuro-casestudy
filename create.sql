--  * Nurogames SeaClouds Casestudy
--  *
--  * database1 creation file
--  *
--  * @version     Early14.09.25 v1.1
--  *
--  * @author      Christian Tismer, Nurogames GmbH
--  * @copyright   Copyright (c) 2014, Nurogames GmbH

-- MySQL dump 10.11
-- Server version	5.0.51a-24+lenny5

create database database1;
grant all privileges on database1.* to 'brooklyn'@'%' identified by 'br00k11n';
use database1;
--
-- Table structure for table "logs"
--

DROP TABLE IF EXISTS logs;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `logs` (
  `log_id` bigint(20) NOT NULL auto_increment,
  `log_request_start` timestamp NOT NULL default '0000-00-00 00:00:00',
  `log_php_start` double NOT NULL,
  `log_response_time` double NOT NULL,
  `log_response_length` int(11) NOT NULL default '0',
  `log_ip_forward` varchar(15) default NULL,
  `log_ip` varchar(15) NOT NULL,
  `log_request` varchar(255) NOT NULL,
  `log_user_agent` varchar(255) NOT NULL,
  `log_request_ticket` bigint(20) NOT NULL default '0',
  `log_debug_mode` tinyint(4) NOT NULL,
  `player_id` bigint(20) NOT NULL,
  `log_request_data` bigint(20) NOT NULL,
  `log_do` int(11) NOT NULL default '0',
  `log_on` varchar(25) default NULL,
  `log_quantity` int(11) NOT NULL default '0',
  `log_value` varchar(255) default NULL,
  `log_text` varchar(255) default NULL,
  `log_state` bigint(20) NOT NULL default '0',
  `log_result_error` bigint(20) NOT NULL,
  `log_result_alert` bigint(20) NOT NULL,
  `log_response_ticket` bigint(20) NOT NULL default '0',
  `log_client_request_time` double default NULL,
  PRIMARY KEY  (`log_id`),
  KEY `fk_logs_players1` (`player_id`),
  KEY `log_do_index` (`log_do`),
  KEY `log_on_index` (`log_on`),
  KEY `log_request_start_index` (`log_request_start`),
  KEY `log_state_index` (`log_state`),
  KEY `ct_log_do_start_idx` (`log_do`,`log_request_start`),
  KEY `log_response_ticket_idx` (`log_response_ticket`)
);
SET character_set_client = @saved_cs_client;
-- Dump completed on 2015-09-21 15:43
