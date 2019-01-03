CREATE TABLE IF NOT EXISTS Vehicles (
	`id`		SERIAL PRIMARY KEY,
    `owner`		VARCHAR(32) NOT NULL,
	`year`		YEAR NOT NULL,
    `make`		VARCHAR(16) NOT NULL,
    `model`		VARCHAR(16) NOT NULL,
    `color`		VARCHAR(16) NOT NULL,
    `vinNumber` VARCHAR(17) NOT NULL
);