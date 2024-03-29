-- Creating a new test database if it does not exist
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Creating the test user if it does not exist and setting the password
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Granting all privileges on the test database to the test user
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Granting SELECT privilege on performance_schema to the test user
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- Applying the changes
FLUSH PRIVILEGES;
