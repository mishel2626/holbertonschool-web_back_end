-- script to list all databases
DELIMITER $
CREATE TRIGGER reset_attribute BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
  IF NEW.email <> OLD.email THEN
  SET NEW.valid_email = 0;
  END IF;
END;
$