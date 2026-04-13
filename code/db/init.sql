CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price NUMERIC(10,2) NOT NULL,
  image_url TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, price, image_url) VALUES
('Wireless Mouse', 29.99, 'https://via.placeholder.com/150'),
('Mechanical Keyboard', 89.00, 'https://via.placeholder.com/150'),
('USB-C Hub', 49.50, 'https://via.placeholder.com/150')
ON CONFLICT DO NOTHING;
