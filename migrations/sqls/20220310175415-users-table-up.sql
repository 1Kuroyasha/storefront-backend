CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  password text
);


INSERT INTO users(first_name, last_name, password) VALUES('Shayma', 'Blakesley', '12345f');
INSERT INTO users(first_name, last_name, password) VALUES('Archil', 'Ingersleben', '112233');
INSERT INTO users(first_name, last_name, password) VALUES('Shauna', 'Garbutt', 'abcd22');
INSERT INTO users(first_name, last_name, password) VALUES('King', 'Noschese', 'qwerty7');
INSERT INTO users(first_name, last_name, password) VALUES('Liana', 'Bolkvadze', '1992F');