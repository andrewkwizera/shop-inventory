-- Tested on Postgres 

DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

DROP TYPE IF EXISTS user_role;
DROP TYPE IF EXISTS category_type;

CREATE TYPE user_role AS ENUM('user', 'admin');
CREATE TYPE category_type AS ENUM('add-stock', 'sale', 'expired');

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  names VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role user_role DEFAULT 'user',
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  description TEXT,
  user_id INT NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  image VARCHAR(255),
  description TEXT,
  buying_price FLOAT NOT NULL,
  selling_price FLOAT NOT NULL,
  currency VARCHAR(255) DEFAULT 'rwf',
  user_id INT NOT NULL,
  category_id INT NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  type category_type DEFAULT 'add-stock',
  description TEXT,
  unit_price FLOAT NOT NULL,
  quantity FLOAT NOT NULL,
  total_price FLOAT NOT NULL,
  receipt_id INT,
  user_id INT NOT NULL,
  product_id INT NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
