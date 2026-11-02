CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE error_messages (
    error_id INT AUTO_INCREMENT PRIMARY KEY,
    error_code VARCHAR(50) NOT NULL UNIQUE,
    message VARCHAR(255) NOT NULL
);

CREATE TABLE login_attempts (
    attempt_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NULL,
    username_entered VARCHAR(100) NOT NULL,
    successful BOOLEAN NOT NULL,
    error_id INT NULL,
    attempted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (error_id) REFERENCES error_messages(error_id)
);