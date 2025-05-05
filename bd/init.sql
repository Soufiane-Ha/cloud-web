-- Base de données : shop_db (PostgreSQL version)

-- DROP TABLES if they exist
DROP TABLE IF EXISTS admins, cart, messages, orders, products, users, wishlist;

-- Table: admins
CREATE TABLE admins (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Table: cart
CREATE TABLE cart (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    pid INTEGER NOT NULL,
    name VARCHAR(100) NOT NULL,
    price INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    image VARCHAR(100) NOT NULL
);

-- Table: messages
CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    number VARCHAR(12) NOT NULL,
    message TEXT NOT NULL
);

-- Table: orders
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    name VARCHAR(20) NOT NULL,
    number VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    method VARCHAR(50) NOT NULL,
    address TEXT NOT NULL,
    total_products TEXT NOT NULL,
    total_price INTEGER NOT NULL,
    placed_on DATE NOT NULL DEFAULT current_timestamp,
    payment_status VARCHAR(20) NOT NULL DEFAULT 'pending'
);

-- Table: products
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    details TEXT NOT NULL,
    price INTEGER NOT NULL,
    image_01 VARCHAR(100) NOT NULL,
    image_02 VARCHAR(100) NOT NULL,
    image_03 VARCHAR(100) NOT NULL
);

-- Table: users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Table: wishlist
CREATE TABLE wishlist (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    pid INTEGER NOT NULL,
    name VARCHAR(100) NOT NULL,
    price INTEGER NOT NULL,
    image VARCHAR(100) NOT NULL
);

-- Insert example data
INSERT INTO users (name, email, password) VALUES
('soufiane', 'sofianeadm@gimal.com', 'aeb54d13ec1e549e863db14fc01472bdde0fc7c0');

INSERT INTO cart (user_id, pid, name, price, quantity, image) VALUES
(1, 6, 'mouse', 5600, 1, 'images (2).jpg'),
(1, 3, 'camera', 3420, 1, 'camera1.webp');

INSERT INTO orders (user_id, name, number, email, method, address, total_products, total_price, placed_on, payment_status) VALUES
(1, 'soufiane', '444', 'sofianeadm@gimal.com', 'credit card', 'flat no. JAMAA, JAMAA ELOUED, EL_OUED, JAMAA, algeria - 32132', 'laptop (72000 x 2) - ', 144000, '2023-04-04', 'completed');

INSERT INTO products (name, details, price, image_01, image_02, image_03) VALUES
('laptop', 'Processeur: Intel Core i7-1165G7 ...', 1700, 'huawei23.png', 'huawei2.jpg', 'huawei21.png'),
('camera', 'Type: Environ 22,3 mm × 14,9 mm ...', 3420, 'camera1.webp', 'camera2.webp', 'camira3.jpg'),
('fridge', 'dergeedfgdrgegd', 56800, 'tlo-lodowki.jpg', 'fridge1.png', 'pr4.png'),
('smart phone', 'phone', 67770, 'phone2.png', 'télécharger (4).jpg', 'télécharger (5).jpg'),
('mouse', 'kkkkkk', 5600, 'images (2).jpg', 'mouse2.jpg', 'mouse3.jpg'),
('waiching machine', 'hhhhh', 888700, 'pr1.png', 'pr2.png', 'pr1.png'),
('watch', 'wa', 9900, 'w1.png', 'télécharger (3).jpg', 'w1.png'),
('tv', 'gggg', 62100, 'pr8.png', 'pr8.png', 'pcm1.png');
