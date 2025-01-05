truncate table tr_detail
delete from tr_header

truncate table log_b
delete from log_a

truncate table inventory_detail
delete from inventory_header

SET  @num := 0;
UPDATE inventory_header SET id = @num := (@num+1);
ALTER TABLE inventory_header AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE inventory_detail SET id = @num := (@num+1);
ALTER TABLE inventory_detail AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE log_a SET id = @num := (@num+1);
ALTER TABLE log_a AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE log_b SET id = @num := (@num+1);
ALTER TABLE log_b AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE tr_header SET id = @num := (@num+1);
ALTER TABLE tr_header AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE tr_detail SET id = @num := (@num+1);
ALTER TABLE tr_detail AUTO_INCREMENT = 1