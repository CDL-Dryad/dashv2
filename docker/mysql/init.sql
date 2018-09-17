-- CREATE DATABASE dryad CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- add a user to the database
CREATE USER 'travis'@'%';

-- grant the user privileges
-- GRANT ALL PRIVILEGES ON dryad.* TO 'dryad'@'%';
GRANT ALL PRIVILEGES ON dryad.* TO 'travis'@'%';

FLUSH PRIVILEGES;
