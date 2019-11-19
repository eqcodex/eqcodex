ALTER TABLE `zone` ADD `min_expansion` TINYINT(4)  UNSIGNED  NOT NULL  DEFAULT '0'  AFTER `npc_max_aggro_dist`;
ALTER TABLE `zone` ADD `max_expansion` TINYINT(4)  UNSIGNED  NOT NULL  DEFAULT '0'  AFTER `min_expansion`;
