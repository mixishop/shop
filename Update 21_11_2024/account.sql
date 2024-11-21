CREATE TABLE account (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(255)
);

INSERT INTO account (username, password, email, address) VALUES 
('Mixi', '123456', 'mixi@example.com', 'Hà Nội'),
('TộcTrưởng', '654321', 'toctruong@example.com', 'TP. Hồ Chí Minh'),
('FanCứng', '112233', 'fancung@example.com', 'Đà Nẵng');