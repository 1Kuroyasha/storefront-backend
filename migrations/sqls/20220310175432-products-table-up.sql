CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  price money
);

INSERT INTO products(name, price) VALUES('mousepad', 3);
INSERT INTO products(name, price) VALUES('keyboard', 10);
INSERT INTO products(name, price) VALUES('mouse', 8);
INSERT INTO products(name, price) VALUES('headset', 11);
INSERT INTO products(name, price) VALUES('monitor', 15);
INSERT INTO products(name, price) VALUES('desk', 10);