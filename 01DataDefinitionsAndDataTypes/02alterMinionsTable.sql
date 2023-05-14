-- ALTER TABLE `minions`.`towns` 
-- CHANGE COLUMN `town_id` `id` INT NOT NULL AUTO_INCREMENT ;

alter table minions
add column town_id int;

alter table minions
add constraint pk_minions_towns
foreign key minions(town_id)
references towns(id);