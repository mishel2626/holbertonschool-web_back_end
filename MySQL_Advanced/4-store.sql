-- script to list all databases

CREATE TRIGGER decrease_quantity_trigger BEFORE INSERT ON orders
FOR EACH ROW UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;