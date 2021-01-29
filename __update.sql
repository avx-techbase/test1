ALTER TABLE  `norma_artikl` ADD  `ok_ks_hod_10` INT UNSIGNED NULL ;
ALTER TABLE  `normy` ADD  `ks_hod_10` double UNSIGNED NOT NULL DEFAULT  '0';
ALTER TABLE  `log_normy` ADD  `ks_hod_10` double UNSIGNED NOT NULL DEFAULT  '0';
ALTER TABLE  `zaznamy` CHANGE  `kontrola`  `kontrola` ENUM(  '1',  '2',  '3' ) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL