SET  @num := 0;
UPDATE auth_usergroup SET id = @num := (@num+1);
ALTER TABLE auth_usergroup AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE auth_userlevel SET id = @num := (@num+1);
ALTER TABLE auth_userlevel AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE auth_users SET id = @num := (@num+1);
ALTER TABLE auth_users AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE m_company SET id = @num := (@num+1);
ALTER TABLE m_company AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE m_company_store SET id = @num := (@num+1);
ALTER TABLE m_company_store AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE m_customer SET id = @num := (@num+1);
ALTER TABLE m_customer AUTO_INCREMENT = 1

SET  @num := 0;
UPDATE m_valas SET id = @num := (@num+1);
ALTER TABLE m_valas AUTO_INCREMENT = 1