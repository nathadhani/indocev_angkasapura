SET foreign_key_checks = 0;
ALTER TABLE m_customer MODIFY COLUMN id BIGINT NOT NULL AUTO_INCREMENT;
SET foreign_key_checks = 1;