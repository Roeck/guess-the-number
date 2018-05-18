
CREATE DATABASE allinfo;
\c allinfo

CREATE TABLE infos (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	year INTEGER
	);
