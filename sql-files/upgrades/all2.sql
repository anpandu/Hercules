#1360858500

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `sql_updates` (
  `timestamp` INT(11) UNSIGNED NOT NULL,
  `ignored` ENUM('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=MyISAM;
ALTER TABLE `skill` ADD COLUMN `flag` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1360858500);
#1360951560

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `sql_updates` ADD PRIMARY KEY (`timestamp`);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1360951560);
#1362445531

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `login` ADD `character_slots` TINYINT(3) UNSIGNED NOT NULL;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1362445531);
#1362528000

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
-- Copyright (C) Athena Dev Teams
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- This script resets all dewata quests that were done by your users before this revision
-- Author: Euphy
DELETE FROM `quest` WHERE `quest_id` > 5034 AND `quest_id` < 5055;
DELETE FROM `quest` WHERE `quest_id` > 9154 AND `quest_id` < 9166;
DELETE FROM `global_reg_value` WHERE `str` = 'dewata_gatti';
DELETE FROM `global_reg_value` WHERE `str` = 'dewata_legend';
DELETE FROM `global_reg_value` WHERE `str` = 'dewata_oldman';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1362528000);
#1362794218

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `login` ADD COLUMN `pincode` VARCHAR(4) NOT NULL DEFAULT '';
ALTER TABLE `login` ADD COLUMN `pincode_change` INT(11) unsigned NOT NULL DEFAULT '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1362794218);
#1364409316

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD COLUMN `slotchange` SMALLINT(3) unsigned NOT NULL default '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1364409316);
#1366075474

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- Info http://herc.ws/board/topic/410-skill-script-command-updatefix/
UPDATE `skill` SET `flag` = 0 WHERE `flag` = 4 AND `id` != 2535 AND `id` != 681;
#1366078541

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD `char_opt` INT(11) UNSIGNED NOT NULL DEFAULT '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1366075474); -- for the previous that missed it..
INSERT INTO `sql_updates` (`timestamp`) VALUES (1366078541);
#1381354728

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `zenylog` MODIFY `type` ENUM('T','V','P','M','S','N','D','C','A','E','I','B','K') NOT NULL DEFAULT 'S';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1381354728);
#1381423003

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `account_data` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `bank_vault` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM; 
INSERT INTO `sql_updates` (`timestamp`) VALUES (1381423003);
#1382892428

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `inventory` MODIFY `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `storage` MODIFY `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `cart_inventory` MODIFY `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `guild_storage` MODIFY `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1382892428);
#1383162785

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `account_data` ADD `base_exp` TINYINT(4) UNSIGNED NOT NULL DEFAULT '100';
ALTER TABLE `account_data` ADD `base_drop` TINYINT(4) UNSIGNED NOT NULL DEFAULT '100';
ALTER TABLE `account_data` ADD `base_death` TINYINT(4) UNSIGNED NOT NULL DEFAULT '100';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1383162785);
#1383167577

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD `font` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1383167577);
#1383205740

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `inventory` ADD COLUMN `bound` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0' AFTER `favorite`;
ALTER TABLE `cart_inventory` ADD COLUMN `bound` TINYINT(1) UNSIGNED NOT NULL default '0' AFTER `expire_time`;
ALTER TABLE `storage` ADD COLUMN `bound` TINYINT(1) UNSIGNED NOT NULL default '0' AFTER `expire_time`;
ALTER TABLE `guild_storage` ADD COLUMN `bound` TINYINT(1) UNSIGNED NOT NULL default '0' AFTER `expire_time`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1383205740);
#1383955424

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `account_data` MODIFY `base_exp` TINYINT(4) UNSIGNED NOT NULL DEFAULT '100';
ALTER TABLE `account_data` MODIFY `base_drop` TINYINT(4) UNSIGNED NOT NULL DEFAULT '100';
ALTER TABLE `account_data` MODIFY `base_death` TINYINT(4) UNSIGNED NOT NULL DEFAULT '100';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1383955424);
#1384473995


-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
-- Copyright (C) 2013 Haru <haru@dotalux.com>
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- Note: If you're running a MySQL version earlier than 5.0 (or if this scripts fails for you for any reason)
--       you'll need to run the following queries manually:
--
-- [ Pre-Renewal only ]
-- ALTER TABLE item_db2 ADD COLUMN `matk` SMALLINT(5) UNSIGNED DEFAULT NULL AFTER atk;
-- ALTER TABLE item_db2 CHANGE COLUMN `equip_level` `equip_level_min` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 ADD COLUMN `equip_level_max` SMALLINT(5) UNSIGNED DEFAULT NULL AFTER equip_level_min;
-- [ Both Pre-Renewal and Renewal ]
-- ALTER TABLE item_db2 MODIFY COLUMN `price_buy` MEDIUMINT(10) DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `price_sell` MEDIUMINT(10) DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `weight` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `atk` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `matk` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `defence` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `range` TINYINT(2) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `slots` TINYINT(2) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `equip_jobs` INT(12) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `equip_upper` TINYINT(8) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `equip_genders` TINYINT(2) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `equip_locations` SMALLINT(4) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `weapon_level` TINYINT(2) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `equip_level_min` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `equip_level_max` SMALLINT(5) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `refineable` TINYINT(1) UNSIGNED DEFAULT NULL;
-- ALTER TABLE item_db2 MODIFY COLUMN `view` SMALLINT(3) UNSIGNED DEFAULT NULL;
-- INSERT INTO `sql_updates` (`timestamp`) VALUES (1384473995);
--
-- [ End ]
-- What follows is the automated script that does all of the above.

DELIMITER $$

DROP PROCEDURE IF EXISTS alter_if_not_exists $$
DROP PROCEDURE IF EXISTS alter_if_exists $$

CREATE PROCEDURE alter_if_not_exists(my_table TINYTEXT, my_column TINYTEXT, my_command TINYTEXT, my_predicate TEXT)
BEGIN
  set @dbname = DATABASE();
  IF EXISTS (
    SELECT * FROM information_schema.TABLES
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
  ) AND NOT EXISTS (
    SELECT * FROM information_schema.COLUMNS
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
        AND COLUMN_NAME = my_column
  )
  THEN
    SET @q = CONCAT('ALTER TABLE ', @dbname, '.', my_table, ' ',
      my_command, ' `', my_column, '` ', my_predicate);
    PREPARE STMT FROM @q;
    EXECUTE STMT;
  END IF;

END $$

CREATE PROCEDURE alter_if_exists(my_table TINYTEXT, my_column TINYTEXT, my_command TINYTEXT, my_predicate TEXT)
BEGIN
  set @dbname = DATABASE();
  IF EXISTS (
    SELECT * FROM information_schema.COLUMNS
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
        AND COLUMN_NAME = my_column
  )
  THEN
    SET @q = CONCAT('ALTER TABLE ', @dbname, '.', my_table, ' ',
      my_command, ' `', my_column, '` ', my_predicate);
    PREPARE STMT FROM @q;
    EXECUTE STMT;
  END IF;

END $$

CALL alter_if_not_exists('item_db2', 'matk', 'ADD COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL AFTER atk') $$
CALL alter_if_exists('item_db2', 'equip_level', 'CHANGE COLUMN', 'equip_level_min SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_not_exists('item_db2', 'equip_level_max', 'ADD COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL AFTER equip_level_min') $$

CALL alter_if_exists('item_db2', 'price_buy', 'MODIFY COLUMN', 'MEDIUMINT(10) DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'price_sell', 'MODIFY COLUMN', 'MEDIUMINT(10) DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'weight', 'MODIFY COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'atk', 'MODIFY COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'matk', 'MODIFY COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'defence', 'MODIFY COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'range', 'MODIFY COLUMN', 'TINYINT(2) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'slots', 'MODIFY COLUMN', 'TINYINT(2) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'equip_jobs', 'MODIFY COLUMN', 'INT(12) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'equip_upper', 'MODIFY COLUMN', 'TINYINT(8) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'equip_genders', 'MODIFY COLUMN', 'TINYINT(2) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'equip_locations', 'MODIFY COLUMN', 'SMALLINT(4) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'weapon_level', 'MODIFY COLUMN', 'TINYINT(2) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'equip_level_min', 'MODIFY COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'equip_level_max', 'MODIFY COLUMN', 'SMALLINT(5) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'refineable', 'MODIFY COLUMN', 'TINYINT(1) UNSIGNED DEFAULT NULL') $$
CALL alter_if_exists('item_db2', 'view', 'MODIFY COLUMN', 'SMALLINT(3) UNSIGNED DEFAULT NULL') $$

DROP PROCEDURE IF EXISTS alter_if_not_exists $$
DROP PROCEDURE IF EXISTS alter_if_exists $$

DELIMITER ';'

INSERT INTO `sql_updates` (`timestamp`) VALUES (1384473995);
#1384545461

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

UPDATE `account_data` SET `base_exp` = '100' WHERE `base_exp` = '0';
UPDATE `account_data` SET `base_drop` = '100' WHERE `base_drop` = '0';
UPDATE `account_data` SET `base_death` = '100' WHERE `base_death` = '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1384545461);
#1384588175

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD COLUMN `unban_time` INT(11) UNSIGNED NOT NULL DEFAULT '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1384588175);
#1384763034


-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
-- Copyright (C) 2013 Haru <haru@dotalux.com>
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- Note: If you're running a MySQL version earlier than 5.0 (or if this scripts fails for you for any reason)
--       you'll need to run the following queries manually:
--
-- [ Both Pre-Renewal and Renewal ]
-- ALTER TABLE item_db2 ADD COLUMN `bindonequip` TINYINT(1) UNSIGNED DEFAULT NULL AFTER `view`;
-- INSERT INTO `sql_updates` (`timestamp`) VALUES (1384763034);
--
-- [ End ]
-- What follows is the automated script that does all of the above.

DELIMITER $$

DROP PROCEDURE IF EXISTS alter_if_not_exists $$
DROP PROCEDURE IF EXISTS alter_if_exists $$

CREATE PROCEDURE alter_if_not_exists(my_table TINYTEXT, my_column TINYTEXT, my_command TINYTEXT, my_predicate TEXT)
BEGIN
  set @dbname = DATABASE();
  IF EXISTS (
    SELECT * FROM information_schema.TABLES
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
  ) AND NOT EXISTS (
    SELECT * FROM information_schema.COLUMNS
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
        AND COLUMN_NAME = my_column
  )
  THEN
    SET @q = CONCAT('ALTER TABLE ', @dbname, '.', my_table, ' ',
      my_command, ' `', my_column, '` ', my_predicate);
    PREPARE STMT FROM @q;
    EXECUTE STMT;
  END IF;

END $$

CREATE PROCEDURE alter_if_exists(my_table TINYTEXT, my_column TINYTEXT, my_command TINYTEXT, my_predicate TEXT)
BEGIN
  set @dbname = DATABASE();
  IF EXISTS (
    SELECT * FROM information_schema.COLUMNS
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
        AND COLUMN_NAME = my_column
  )
  THEN
    SET @q = CONCAT('ALTER TABLE ', @dbname, '.', my_table, ' ',
      my_command, ' `', my_column, '` ', my_predicate);
    PREPARE STMT FROM @q;
    EXECUTE STMT;
  END IF;

END $$

CALL alter_if_not_exists('item_db2', 'bindonequip', 'ADD COLUMN', 'TINYINT(1) UNSIGNED DEFAULT NULL AFTER `view`') $$

DROP PROCEDURE IF EXISTS alter_if_not_exists $$
DROP PROCEDURE IF EXISTS alter_if_exists $$

DELIMITER ';'

INSERT INTO `sql_updates` (`timestamp`) VALUES (1384763034);
#1387844126

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `npc_market_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`itemid`)
) ENGINE=MyISAM;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1387844126);
#1388854043

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `mapreg` ADD PRIMARY KEY (`varname`, `index`);
ALTER TABLE `mapreg` DROP INDEX `varname`;
ALTER TABLE `mapreg` DROP INDEX `index`;
ALTER TABLE `mapreg` MODIFY `varname` VARCHAR(32) BINARY NOT NULL;
CREATE TABLE IF NOT EXISTS `acc_reg_num_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;
CREATE TABLE IF NOT EXISTS `acc_reg_str_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;
CREATE TABLE IF NOT EXISTS `char_reg_num_db` (
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;
CREATE TABLE IF NOT EXISTS `char_reg_str_db` (
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;
CREATE TABLE IF NOT EXISTS `global_acc_reg_num_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;
CREATE TABLE IF NOT EXISTS `global_acc_reg_str_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;
INSERT INTO `acc_reg_num_db` (`account_id`, `key`, `index`, `value`) SELECT `account_id`, `str`, 0, `value` FROM `global_reg_value` WHERE `type` = 2 AND `str` NOT LIKE '%$';
INSERT INTO `acc_reg_str_db` (`account_id`, `key`, `index`, `value`) SELECT `account_id`, `str`, 0, `value` FROM `global_reg_value` WHERE `type` = 2 AND `str` LIKE '%$';
INSERT INTO `char_reg_num_db` (`char_id`, `key`, `index`, `value`) SELECT `char_id`, `str`, 0, `value` FROM `global_reg_value` WHERE `type` = 3 AND `str` NOT LIKE '%$';
INSERT INTO `char_reg_str_db` (`char_id`, `key`, `index`, `value`) SELECT `char_id`, `str`, 0, `value` FROM `global_reg_value` WHERE `type` = 3 AND `str` LIKE '%$';
INSERT INTO `global_acc_reg_num_db` (`account_id`, `key`, `index`, `value`) SELECT `account_id`, `str`, 0, `value` FROM `global_reg_value` WHERE `type` = 1 AND `str` NOT LIKE '%$';
INSERT INTO `global_acc_reg_str_db` (`account_id`, `key`, `index`, `value`) SELECT `account_id`, `str`, 0, `value` FROM `global_reg_value` WHERE `type` = 1 AND `str` LIKE '%$';
# DROP TABLE `global_reg_value`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1388854043);
#1389028967

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `autotrade_merchants` (
  `account_id` INT(11) NOT NULL DEFAULT '0',
  `char_id` INT(11) NOT NULL DEFAULT '0',
  `sex` TINYINT(2) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT 'Buy From Me!',
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=MyISAM; 
CREATE TABLE IF NOT EXISTS `autotrade_data` (
  `char_id` INT(11) NOT NULL DEFAULT '0',
  `itemkey` INT(11) NOT NULL DEFAULT '0',
  `amount` INT(11) NOT NULL DEFAULT '0',
  `price` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`itemkey`)
) ENGINE=MyISAM; 
INSERT INTO `sql_updates` (`timestamp`) VALUES (1389028967);
#1392832626

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

DELETE FROM `sc_data` WHERE `tick` = '-1';
ALTER TABLE `sc_data` ADD PRIMARY KEY (`account_id`,`char_id`,`type`);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1392832626);
#1395789302

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `charlog` ADD COLUMN `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `account_id`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1395789302);
#1396893866

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD COLUMN `uniqueitem_counter` BIGINT(20) NOT NULL AFTER `unban_time`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1396893866);
#1398477600

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` CHANGE COLUMN `uniqueitem_counter` `uniqueitem_counter` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1398477600);
#1400256139

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `pet` CHANGE `incuvate` `incubate` int(11) unsigned NOT NULL default '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1400256139);
#1409590380

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE  `account_data` CHANGE  `base_exp`  `base_exp` SMALLINT(6) UNSIGNED NOT NULL DEFAULT  '100',
CHANGE  `base_drop`  `base_drop` SMALLINT(6) UNSIGNED NOT NULL DEFAULT  '100',
CHANGE  `base_death`  `base_death` SMALLINT(6) UNSIGNED NOT NULL DEFAULT  '100';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1409590380);
#1414975503

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2014-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE  `char` ADD COLUMN `sex` ENUM('M','F','U') NOT NULL DEFAULT 'U';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1414975503);
#1435860840

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

DELIMITER $$

DROP PROCEDURE IF EXISTS alter_if_not_exists $$
DROP PROCEDURE IF EXISTS alter_if_exists $$

CREATE PROCEDURE alter_if_not_exists(my_table TINYTEXT, my_column TINYTEXT, my_command TINYTEXT, my_predicate TEXT)
BEGIN
  set @dbname = DATABASE();
  IF EXISTS (
    SELECT * FROM information_schema.TABLES
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
  ) AND NOT EXISTS (
    SELECT * FROM information_schema.COLUMNS
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
        AND COLUMN_NAME = my_column
  )
  THEN
    SET @q = CONCAT('ALTER TABLE ', @dbname, '.', my_table, ' ',
      my_command, ' `', my_column, '` ', my_predicate);
    PREPARE STMT FROM @q;
    EXECUTE STMT;
  END IF;

END $$

CREATE PROCEDURE alter_if_exists(my_table TINYTEXT, my_column TINYTEXT, my_command TINYTEXT, my_predicate TEXT)
BEGIN
  set @dbname = DATABASE();
  IF EXISTS (
    SELECT * FROM information_schema.COLUMNS
      WHERE TABLE_SCHEMA = @dbname
        AND TABLE_NAME = my_table
        AND COLUMN_NAME = my_column
  )
  THEN
    SET @q = CONCAT('ALTER TABLE ', @dbname, '.', my_table, ' ',
      my_command, ' `', my_column, '` ', my_predicate);
    PREPARE STMT FROM @q;
    EXECUTE STMT;
  END IF;

END $$

CALL alter_if_not_exists('item_db', 'forceserial', 'ADD COLUMN', 'TINYINT(1) UNSIGNED DEFAULT NULL AFTER `bindonequip`') $$
CALL alter_if_not_exists('item_db2', 'forceserial', 'ADD COLUMN', 'TINYINT(1) UNSIGNED DEFAULT NULL AFTER `bindonequip`') $$

DROP PROCEDURE IF EXISTS alter_if_not_exists $$
DROP PROCEDURE IF EXISTS alter_if_exists $$

DELIMITER ';'

INSERT INTO `sql_updates` (`timestamp`) VALUES (1435860840);
#1436360978

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

DROP TABLE IF EXISTS interreg;
DROP TABLE IF EXISTS sstatus;

INSERT INTO `sql_updates` (`timestamp`) VALUES (1436360978);
#1440688342

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE  `char` ADD COLUMN `hotkey_rowshift` TINYINT(3) UNSIGNED NOT NULL DEFAULT  '0';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1440688342);
#1450241859

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` MODIFY COLUMN `max_hp` INT(9) NOT NULL DEFAULT '0';
ALTER TABLE `char` MODIFY COLUMN `max_sp` INT(9) NOT NULL DEFAULT '0';
ALTER TABLE `char` MODIFY COLUMN `hp` INT(9) NOT NULL DEFAULT '0';
ALTER TABLE `char` MODIFY COLUMN `sp` INT(9) NOT NULL DEFAULT '0';

INSERT INTO `sql_updates` (`timestamp`) VALUES (1450241859);
#1450367880

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD `body` smallint(5) unsigned NOT NULL default '0' AFTER `clothes_color`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1450367880);
#1457638175

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `picklog` MODIFY `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','K','Y','Z','W','Q','J','H','@','0','1','2') NOT NULL default 'P';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1457638175)
#1467934919

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `charlog` MODIFY `time` DATETIME NULL;
ALTER TABLE `interlog` MODIFY `time` DATETIME NULL;
ALTER TABLE `ipbanlist` MODIFY `btime` DATETIME NULL;
ALTER TABLE `ipbanlist` MODIFY `rtime` DATETIME NULL;
ALTER TABLE `login` MODIFY `lastlogin` DATETIME NULL;
ALTER TABLE `login` MODIFY `birthdate` DATE NULL;

UPDATE `charlog` SET `time` = NULL WHERE `time` = '0000-00-00 00:00:00';
UPDATE `interlog` SET `time` = NULL WHERE `time` = '0000-00-00 00:00:00';
UPDATE `ipbanlist` SET `btime` = NULL WHERE `btime` = '0000-00-00 00:00:00';
UPDATE `ipbanlist` SET `rtime` = NULL WHERE `rtime` = '0000-00-00 00:00:00';
UPDATE `login` SET `lastlogin` = NULL WHERE `lastlogin` = '0000-00-00 00:00:00';
UPDATE `login` SET `birthdate` = NULL WHERE `birthdate` = '0000-00-00';

INSERT INTO `sql_updates` (`timestamp`) VALUES (1467934919)
#1467935469

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `atcommandlog` MODIFY `atcommand_date` DATETIME NULL;
ALTER TABLE `branchlog` MODIFY `branch_date` DATETIME NULL;
ALTER TABLE `chatlog` MODIFY `time` DATETIME NULL;
ALTER TABLE `loginlog` MODIFY `time` DATETIME NULL;
ALTER TABLE `mvplog` MODIFY `mvp_date` DATETIME NULL;
ALTER TABLE `npclog` MODIFY `npc_date` DATETIME NULL;
ALTER TABLE `picklog` MODIFY `time` DATETIME NULL;
ALTER TABLE `zenylog` MODIFY `time` DATETIME NULL;

INSERT INTO `sql_updates` (`timestamp`) VALUES (1467935469)
#1475526420

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `charlog` ADD `class` MEDIUMINT(9) NOT NULL DEFAULT '0' AFTER `char_num`;

INSERT INTO `sql_updates` (`timestamp`) VALUES (1475526420);
#1477434595

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `zenylog` CHANGE `type` `type` ENUM('T','V','P','M','S','N','D','C','A','E','I','B','K')  CHARACTER SET utf8  COLLATE utf8_general_ci  NOT NULL  DEFAULT 'S';

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1477434595 , 'No');
#1488454834

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `auction`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;

ALTER TABLE `cart_inventory`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;

ALTER TABLE `guild_storage`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;
	
ALTER TABLE `inventory`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;
	
ALTER TABLE `mail`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;
	
ALTER TABLE `storage`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;
 
INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1488454834 , 'No');
#1488744559

ALTER TABLE `picklog`
	ADD COLUMN `opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `card3`,
	ADD COLUMN `opt_val0` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx0`,
	ADD COLUMN `opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val0`,
	ADD COLUMN `opt_val1` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx1`,
	ADD COLUMN `opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val1`,
	ADD COLUMN `opt_val2` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx2`,
	ADD COLUMN `opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val2`,
	ADD COLUMN `opt_val3` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx3`,
	ADD COLUMN `opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `opt_val3`,
	ADD COLUMN `opt_val4` SMALLINT(5) NOT NULL DEFAULT '0' AFTER `opt_idx4`;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1488744559 , 'No');
#1489588190

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2017-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `rodex_items` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`mail_id` BIGINT(20) NOT NULL DEFAULT '0',
	`nameid` INT(11) NOT NULL DEFAULT '0',
	`amount` INT(11) NOT NULL DEFAULT '0',
	`equip` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`identify` SMALLINT(6) NOT NULL DEFAULT '0',
	`refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
	`attribute` TINYINT(4) NOT NULL DEFAULT '0',
	`card0` SMALLINT(11) NOT NULL DEFAULT '0',
	`card1` SMALLINT(11) NOT NULL DEFAULT '0',
	`card2` SMALLINT(11) NOT NULL DEFAULT '0',
	`card3` SMALLINT(11) NOT NULL DEFAULT '0',
	`opt_idx0` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`opt_val0` SMALLINT(5) NOT NULL DEFAULT '0',
	`opt_idx1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`opt_val1` SMALLINT(5) NOT NULL DEFAULT '0',
	`opt_idx2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`opt_val2` SMALLINT(5) NOT NULL DEFAULT '0',
	`opt_idx3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`opt_val3` SMALLINT(5) NOT NULL DEFAULT '0',
	`opt_idx4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`opt_val4` SMALLINT(5) NOT NULL DEFAULT '0',
	`expire_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
	`bound` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
	`unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
  KEY `mail_id` (`mail_id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `rodex_mail` (
	`mail_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`sender_name` VARCHAR(30) COLLATE 'utf8_unicode_ci' NOT NULL,
	`sender_id` INT(11) NOT NULL,
	`receiver_name` VARCHAR(30) COLLATE 'utf8_unicode_ci' NOT NULL,
	`receiver_id` INT(11) NOT NULL,
	`receiver_accountid` INT(11) NOT NULL,
	`title` VARCHAR(50) COLLATE 'utf8_unicode_ci' NOT NULL,
	`body` VARCHAR(510) COLLATE 'utf8_unicode_ci' NOT NULL,
	`zeny` BIGINT(20) NOT NULL,
	`type` TINYINT(8) UNSIGNED NOT NULL,
	`is_read` TINYINT(8) NOT NULL,
	`send_date` INT(11) NOT NULL,
	`expire_date` INT(11) NOT NULL,
	`weight` INT(11) NOT NULL,
	PRIMARY KEY (`mail_id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `receiver_accountid` (`receiver_accountid`),
  KEY `send_date` (`send_date`),
  KEY `expire_date` (`expire_date`)
) ENGINE=MyISAM;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1489588190 , 'No');
#1496588640

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2017-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD COLUMN `clan_id` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `guild_id`;
ALTER TABLE `char` ADD COLUMN `last_login` BIGINT(20) NULL DEFAULT '0' AFTER `robe`;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1496588640 , 'No');
#1496588700

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2017-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `chatlog` MODIFY COLUMN `type` enum('O','W','P','G','M','C') NOT NULL DEFAULT 'O' AFTER `time`;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1496588700 , 'No');
#1509835214

ALTER TABLE `homunculus`
	ADD COLUMN `autofeed` TINYINT(2) NOT NULL DEFAULT '0' AFTER `vaporize`;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1509835214 , 'No');
#1519671456

ALTER TABLE `rodex_mail`
	ADD COLUMN `sender_read` TINYINT(2) NOT NULL DEFAULT '0' AFTER `is_read`;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1519671456 , 'No');
#1520654809

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2017-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD COLUMN `attendance_count` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `hotkey_rowshift`;
ALTER TABLE `char` ADD COLUMN `attendance_timer` BIGINT(20) NULL DEFAULT '0' AFTER `attendance_count`;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1520654809 , 'No');
#1527964800

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2018-2020 Hercules Dev Team
-- Copyright (C) Smokexyz
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE `char_achievements` (
	`char_id` INT(11) UNSIGNED NOT NULL,
	`ach_id` INT(11) UNSIGNED NOT NULL,
	`completed_at` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`rewarded_at` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_0` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_5` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_6` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_7` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_8` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`obj_9` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`char_id`, `ach_id`)
) ENGINE=MyISAM;

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1527964800, 'No');
#1528026381

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2018-2020 Hercules Dev Team
-- Copyright (C) Dastgir
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD `title_id` INT(11) UNSIGNED NOT NULL DEFAULT '0';

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1528026381, 'No');
#1528180320

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2018-2020 Hercules Dev Team
-- Copyright (C) 2018 Dastgir
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `pet` ADD COLUMN `autofeed` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0';

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1528180320 , 'No');
#1532403228

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2018-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

UPDATE `inventory` SET `identify` = 1, `attribute` = 1 WHERE `card0` = -256 and `identify` = 0;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1532403228);
#1535865732

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2018-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `auction`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';

ALTER TABLE `cart_inventory`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';

ALTER TABLE `guild_storage`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';
	
ALTER TABLE `inventory`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';
	
ALTER TABLE `mail`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';

ALTER TABLE `rodex_items`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';
	
ALTER TABLE `storage`
	MODIFY `card0` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card1` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card2` INT(11) NOT NULL DEFAULT '0',
	MODIFY `card3` INT(11) NOT NULL DEFAULT '0';
 
INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1535865732, 'No');
#1544738447

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2018-2020 Hercules Dev Team
-- Copyright (C) 4144
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `char` ADD `inventory_size` INT(11) UNSIGNED NOT NULL DEFAULT '100';

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1544738447, 'No');
#1546059075

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `npc_barter_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemId` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `priceId` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `priceAmount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`, `itemid`, `priceId`, `priceAmount`)
) ENGINE=MyISAM;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1546059075);
#1554760320

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

UPDATE `auction` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);
UPDATE `cart_inventory` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);
UPDATE `inventory` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);
UPDATE `guild_storage` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);
UPDATE `mail` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);
UPDATE `rodex_items` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);
UPDATE `storage` SET `card3` = `card2` >> 16, `card2` = `card2` % 65536 WHERE `card2` > 65536 AND (`card0` = 255 OR `card0` = 254);

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES (1554760320, 'No');
#1556147483

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

TRUNCATE TABLE `guild_expulsion`;
ALTER TABLE `guild_expulsion` ADD `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `account_id`;

INSERT INTO `sql_updates` (`timestamp`) VALUES (1556147483);
#1557414445

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2015-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE  `char` ADD COLUMN `hotkey_rowshift2` TINYINT(3) UNSIGNED NOT NULL DEFAULT  '0' AFTER `hotkey_rowshift`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1557414445);
#1565293394

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `guild_castle` DROP PRIMARY KEY;
ALTER TABLE `guild_castle` ADD COLUMN `castle_name` VARCHAR(24) AFTER `castle_id`;
UPDATE `guild_castle` SET `castle_name` = 'aldeg_cas01' WHERE castle_id = 0;
UPDATE `guild_castle` SET `castle_name` = 'aldeg_cas02' WHERE castle_id = 1;
UPDATE `guild_castle` SET `castle_name` = 'aldeg_cas03' WHERE castle_id = 2;
UPDATE `guild_castle` SET `castle_name` = 'aldeg_cas04' WHERE castle_id = 3;
UPDATE `guild_castle` SET `castle_name` = 'aldeg_cas05' WHERE castle_id = 4;
UPDATE `guild_castle` SET `castle_name` = 'gefg_cas01' WHERE castle_id = 5;
UPDATE `guild_castle` SET `castle_name` = 'gefg_cas02' WHERE castle_id = 6;
UPDATE `guild_castle` SET `castle_name` = 'gefg_cas03' WHERE castle_id = 7;
UPDATE `guild_castle` SET `castle_name` = 'gefg_cas04' WHERE castle_id = 8;
UPDATE `guild_castle` SET `castle_name` = 'gefg_cas05' WHERE castle_id = 9;
UPDATE `guild_castle` SET `castle_name` = 'payg_cas01' WHERE castle_id = 10;
UPDATE `guild_castle` SET `castle_name` = 'payg_cas02' WHERE castle_id = 11;
UPDATE `guild_castle` SET `castle_name` = 'payg_cas03' WHERE castle_id = 12;
UPDATE `guild_castle` SET `castle_name` = 'payg_cas04' WHERE castle_id = 13;
UPDATE `guild_castle` SET `castle_name` = 'payg_cas05' WHERE castle_id = 14;
UPDATE `guild_castle` SET `castle_name` = 'prtg_cas01' WHERE castle_id = 15;
UPDATE `guild_castle` SET `castle_name` = 'prtg_cas02' WHERE castle_id = 16;
UPDATE `guild_castle` SET `castle_name` = 'prtg_cas03' WHERE castle_id = 17;
UPDATE `guild_castle` SET `castle_name` = 'prtg_cas04' WHERE castle_id = 18;
UPDATE `guild_castle` SET `castle_name` = 'prtg_cas05' WHERE castle_id = 19;
UPDATE `guild_castle` SET `castle_name` = 'nguild_alde' WHERE castle_id = 20;
UPDATE `guild_castle` SET `castle_name` = 'nguild_gef' WHERE castle_id = 21;
UPDATE `guild_castle` SET `castle_name` = 'nguild_pay' WHERE castle_id = 22;
UPDATE `guild_castle` SET `castle_name` = 'nguild_prt' WHERE castle_id = 23;
UPDATE `guild_castle` SET `castle_name` = 'schg_cas01' WHERE castle_id = 24;
UPDATE `guild_castle` SET `castle_name` = 'schg_cas02' WHERE castle_id = 25;
UPDATE `guild_castle` SET `castle_name` = 'schg_cas03' WHERE castle_id = 26;
UPDATE `guild_castle` SET `castle_name` = 'schg_cas04' WHERE castle_id = 27;
UPDATE `guild_castle` SET `castle_name` = 'schg_cas05' WHERE castle_id = 28;
UPDATE `guild_castle` SET `castle_name` = 'arug_cas01' WHERE castle_id = 29;
UPDATE `guild_castle` SET `castle_name` = 'arug_cas02' WHERE castle_id = 30;
UPDATE `guild_castle` SET `castle_name` = 'arug_cas03' WHERE castle_id = 31;
UPDATE `guild_castle` SET `castle_name` = 'arug_cas04' WHERE castle_id = 32;
UPDATE `guild_castle` SET `castle_name` = 'arug_cas05' WHERE castle_id = 33;

-- Change the castle ids
UPDATE `guild_castle` SET `castle_id` = 1 WHERE castle_name = 'prtg_cas01';
UPDATE `guild_castle` SET `castle_id` = 2 WHERE castle_name = 'prtg_cas02';
UPDATE `guild_castle` SET `castle_id` = 3 WHERE castle_name = 'prtg_cas03';
UPDATE `guild_castle` SET `castle_id` = 4 WHERE castle_name = 'prtg_cas04';
UPDATE `guild_castle` SET `castle_id` = 5 WHERE castle_name = 'prtg_cas05';
UPDATE `guild_castle` SET `castle_id` = 6 WHERE castle_name = 'aldeg_cas01';
UPDATE `guild_castle` SET `castle_id` = 7 WHERE castle_name = 'aldeg_cas02';
UPDATE `guild_castle` SET `castle_id` = 8 WHERE castle_name = 'aldeg_cas03';
UPDATE `guild_castle` SET `castle_id` = 9 WHERE castle_name = 'aldeg_cas04';
UPDATE `guild_castle` SET `castle_id` = 10 WHERE castle_name = 'aldeg_cas05';
UPDATE `guild_castle` SET `castle_id` = 11 WHERE castle_name = 'gefg_cas01';
UPDATE `guild_castle` SET `castle_id` = 12 WHERE castle_name = 'gefg_cas02';
UPDATE `guild_castle` SET `castle_id` = 13 WHERE castle_name = 'gefg_cas03';
UPDATE `guild_castle` SET `castle_id` = 14 WHERE castle_name = 'gefg_cas04';
UPDATE `guild_castle` SET `castle_id` = 15 WHERE castle_name = 'gefg_cas05';
UPDATE `guild_castle` SET `castle_id` = 16 WHERE castle_name = 'payg_cas01';
UPDATE `guild_castle` SET `castle_id` = 17 WHERE castle_name = 'payg_cas02';
UPDATE `guild_castle` SET `castle_id` = 18 WHERE castle_name = 'payg_cas03';
UPDATE `guild_castle` SET `castle_id` = 19 WHERE castle_name = 'payg_cas04';
UPDATE `guild_castle` SET `castle_id` = 20 WHERE castle_name = 'payg_cas05';
UPDATE `guild_castle` SET `castle_id` = 21 WHERE castle_name = 'arug_cas01';
UPDATE `guild_castle` SET `castle_id` = 22 WHERE castle_name = 'arug_cas02';
UPDATE `guild_castle` SET `castle_id` = 23 WHERE castle_name = 'arug_cas03';
UPDATE `guild_castle` SET `castle_id` = 24 WHERE castle_name = 'arug_cas04';
UPDATE `guild_castle` SET `castle_id` = 25 WHERE castle_name = 'arug_cas05';
UPDATE `guild_castle` SET `castle_id` = 26 WHERE castle_name = 'schg_cas01';
UPDATE `guild_castle` SET `castle_id` = 27 WHERE castle_name = 'schg_cas02';
UPDATE `guild_castle` SET `castle_id` = 29 WHERE castle_name = 'schg_cas04';
UPDATE `guild_castle` SET `castle_id` = 28 WHERE castle_name = 'schg_cas03';
UPDATE `guild_castle` SET `castle_id` = 30 WHERE castle_name = 'schg_cas05';
UPDATE `guild_castle` SET `castle_id` = 31 WHERE castle_name = 'nguild_prt';
UPDATE `guild_castle` SET `castle_id` = 32 WHERE castle_name = 'nguild_alde';
UPDATE `guild_castle` SET `castle_id` = 33 WHERE castle_name = 'nguild_gef';
UPDATE `guild_castle` SET `castle_id` = 34 WHERE castle_name = 'nguild_pay';
ALTER TABLE `guild_castle` ADD PRIMARY KEY (`castle_id`);
ALTER TABLE `guild_castle` DROP COLUMN `castle_name`;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1565293394);
#1570309293

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- Adds new total_tick column
ALTER TABLE `sc_data` ADD COLUMN `total_tick` INT(11) NOT NULL AFTER `tick`;

-- Copy current tick to total_tick so players doesn't lose their current
-- status_changes, although those will still appear wrong until they end
UPDATE `sc_data` SET `total_tick` = `tick`; 

INSERT INTO `sql_updates` (`timestamp`) VALUES (1570309293);
#1570870260

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.


ALTER TABLE `picklog` MODIFY `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','K','Y','Z','W','Q','J','H','@','0','1','2', '3') NOT NULL DEFAULT 'P';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1570870260);
#1574463539

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.


ALTER TABLE `ipbanlist` MODIFY `list` VARCHAR(13) NOT NULL DEFAULT '';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1574463539);
#1579817630

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2013-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

CREATE TABLE IF NOT EXISTS `npc_expanded_barter_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemId` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `zeny` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyId1` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount1` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine1` INT(11) NOT NULL DEFAULT '0',
  `currencyId2` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount2` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine2` INT(11) NOT NULL DEFAULT '0',
  `currencyId3` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount3` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine3` INT(11) NOT NULL DEFAULT '0',
  `currencyId4` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount4` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine4` INT(11) NOT NULL DEFAULT '0',
  `currencyId5` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount5` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine5` INT(11) NOT NULL DEFAULT '0',
  `currencyId6` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount6` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine6` INT(11) NOT NULL DEFAULT '0',
  `currencyId7` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount7` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine7` INT(11) NOT NULL DEFAULT '0',
  `currencyId8` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount8` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine8` INT(11) NOT NULL DEFAULT '0',
  `currencyId9` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount9` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine9` INT(11) NOT NULL DEFAULT '0',
  `currencyId10` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyAmount10` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `currencyRefine10` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`, `itemid`, `zeny`,
    `currencyId1`, `currencyAmount1`, `currencyRefine1`,
    `currencyId2`, `currencyAmount2`, `currencyRefine2`,
    `currencyId3`, `currencyAmount3`, `currencyRefine3`,
    `currencyId4`, `currencyAmount4`, `currencyRefine4`
)
) ENGINE=MyISAM;
INSERT INTO `sql_updates` (`timestamp`) VALUES (1579817630);
#1584838560

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.


ALTER TABLE `ipbanlist` MODIFY `list` VARCHAR(39) NOT NULL DEFAULT '';
INSERT INTO `sql_updates` (`timestamp`) VALUES (1584838560);
#1584842940

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `login` ALTER `userid` DROP DEFAULT;
ALTER TABLE `login` DROP INDEX `name`;
ALTER TABLE `login` ADD CONSTRAINT `name` UNIQUE (`userid`);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1584842940);
#1588301040

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

ALTER TABLE `acc_reg_str_db` MODIFY `value` VARCHAR(255) NOT NULL DEFAULT '0';
ALTER TABLE `char_reg_str_db` MODIFY `value` VARCHAR(255) NOT NULL DEFAULT '0';
ALTER TABLE `global_acc_reg_str_db` MODIFY `value` VARCHAR(255) NOT NULL DEFAULT '0';

INSERT INTO `sql_updates` (`timestamp`) VALUES (1588301040);
#1589145060

-- This file is part of Hercules.
-- http://herc.ws - http://github.com/HerculesWS/Hercules
--
-- Copyright (C) 2019-2020 Hercules Dev Team
--
-- Hercules is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- Add separate tables for global integer and string variables.
CREATE TABLE IF NOT EXISTS `map_reg_num_db` (
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`, `index`)
) ENGINE=MyISAM;
CREATE TABLE IF NOT EXISTS `map_reg_str_db` (
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`, `index`)
) ENGINE=MyISAM;

-- Copy data from mapreg table to new map_reg_*_db tables.
INSERT INTO `map_reg_num_db` (`key`, `index`, `value`) SELECT `varname`, `index`, CAST(`value` AS SIGNED) FROM `mapreg` WHERE NOT RIGHT(`varname`, 1)='$';
INSERT INTO `map_reg_str_db` (`key`, `index`, `value`) SELECT `varname`, `index`, `value` FROM `mapreg` WHERE RIGHT(`varname`, 1)='$';

-- Remove mapreg table.
DROP TABLE IF EXISTS `mapreg`;

-- Add update timestamp.
INSERT INTO `sql_updates` (`timestamp`) VALUES (1589145060);
