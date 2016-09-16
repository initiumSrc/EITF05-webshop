SET foreign_key_checks = 0;
DROP TABLE IF EXISTS Users;
SET foreign_key_checks = 1;

CREATE TABLE Users(
	_id INTEGER AUTO_INCREMENT NOT NULL,
	username VARCHAR(20) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL, -- Suitable length for BCRYPT / BLOWFISH
	fails INTEGER NOT NULL DEFAULT 0,
	locked TIMESTAMP NOT NULL DEFAULT 0,
	PRIMARY KEY(_id)
);
