## API Endpoints

### user

- index: `GET /user/all` (TOKEN REQUIRED)

- show: `GET /user/:id` (TOKEN REQUIRED)

- create: `POST /user`

  body { firstname, lastname, password }



### product

- index: `GET /product/all`

- show: `GET /product/:id`

- create: `POST /product` (TOKEN REQUIRED)

  body { name, price }



### order

- Current Order by user: `GET /order/:id`



## Data Shapes

#### Product

- id
- name
- price

```sql
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  price money,
);
```



#### User

- id
- firstName
- lastName
- password

```sql
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  password text
);
```



#### Orders

- id
- id of the user [FK]
- status of order (ACTIVE | COMPLETE)

```sql
CREATE TYPE order_status as ENUM ('ACTIVE', 'COMPLETE');

CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  user_id INT,
  status order_status,
  CONSTRAINT fk_user
	FOREIGN KEY(user_id)
		REFERENCES users(id)
);
```

