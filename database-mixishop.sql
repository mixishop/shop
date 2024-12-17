CREATE DATABASE mixishop;

USE mixishop;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    categoryID INT,
    FOREIGN KEY (categoryID) REFERENCES category(id)
);

INSERT INTO category (name) VALUES
('Cốc bình'),
('Áo Mixi'),
('Lego');

INSERT INTO product (name, image, price, categoryID) VALUES
('Cốc Mixi 1200ml', 'coc-mixi-1200ml.webp', 250000, 1),
('Bình giữ nhiệt Mixi', 'binh-giu-nhiet-mixi.webp', 190000, 1),
('Bình giữ nhiệt Fan cứng Mixi', 'binh-giu-nhiet-fan-cung-mixi.webp', 170000, 1),
('Áo hoodie Mixi đen khóa ngực', 'ao-hoodie-mixi-den-khoa-nguc.webp', 500000, 2),
('Áo khoác Mixi đen', 'ao-khoac-mixi-den.webp', 500000, 2),
('Áo phông Mixi - Tộc Trưởng', 'ao-phong-mixi-toc-truong.webp', 149000, 2),
('Áo phông Mixi - Phòng Stream', 'ao-phong-mixi-phong-stream.webp', 149000, 2),
('Áo phông Mixi - Trắng', 'ao-phong-mixi-trang.webp', 220000, 2),
('Áo phông Mixi logo - Đen', 'ao-phong-mixi-logo-den.webp', 250000, 2),
('Áo Sologan MixiGaming 2024', 'ao-sologan-mixigaming-2024.webp', 250000, 2),
('Áo logo 2023', 'ao-logo-2023.webp', 250000, 2),
('Áo nỉ dài tay Mixi', 'ao-ni-dai-tay-mixi.webp', 350000, 2),
('Áo nỉ dài tay MixiCity', 'ao-ni-dai-tay-mixicity.webp', 350000, 2),
('Áo nỉ dài tay MXG - Đen', 'ao-ni-dai-tay-mxg-den.webp', 350000, 2),
('Lego Mixi Block SS1', 'lego-mixi-block-ss1.webp', 350000, 3),
('Lego Mixi Block SS2', 'lego-mixi-block-ss2.webp', 350000, 3),
('Lego Mixi Block SS3', 'lego-mixi-block-ss3.webp', 350000, 3),
('Lego Mixi Block SS4', 'lego-mixi-block-ss4.webp', 350000, 3),
('Lego Mixi Block SS5', 'lego-mixi-block-ss5.webp', 350000, 3),
('Lego Mixi Block SS6', 'lego-mixi-block-ss6.webp', 350000, 3),
('Lego Mixi Block SS7', 'lego-mixi-block-ss7.webp', 350000, 3),
('Lego Mixi Block SS8', 'lego-mixi-block-ss8.webp', 350000, 3);
