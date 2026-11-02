INSERT INTO users (username, password) VALUES
('john_doe', 'password123'),
('jane_smith', 'securepass'),
('alice_jones', 'mypassword'),
('bob_brown', 'passw0rd');

INSERT INTO error_messages (error_code, message) VALUES
('INVALID_CREDENTIALS', 'The username or password is incorrect.'),
('USER_NOT_FOUND', 'The specified user does not exist.'),
('ACCOUNT_LOCKED', 'The account is locked due to multiple failed login attempts.'),
('PASSWORD_EXPIRED', 'The password has expired and needs to be reset.');

INSERT INTO login_attempts (user_id, username_entered, successful, error_id) VALUES
(1, 'john_doe', TRUE, NULL),
(2, 'jane_smith', FALSE, 1),
(3, 'alice_jones', FALSE, 2),
(4, 'bob_brown', FALSE, 3),
(1, 'john_doe', FALSE, 4);