-- from the same location as this file in your terminal, execute: mysql -u root -p
-- once in the mysql shell, execute: source create_tables.sql;
-- this file will then run and create your tables.

DROP SCHEMA IF EXISTS mysql_demo;
CREATE SCHEMA mysql_demo;
USE mysql_demo;


CREATE TABLE powers(
  power_id    INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  title       VARCHAR(50)   NOT NULL,
  created_at  TIMESTAMP     NOT NULL  DEFAULT NOW(),
  updated_at  TIMESTAMP     NOT NULL  DEFAULT NOW()   ON UPDATE NOW()
);


CREATE TABLE heroes (
  hero_id     INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(50)   NOT NULL,
  alias       VARCHAR(50)   NOT NULL,
  power_id    INTEGER       NOT NULL,
  created_at  TIMESTAMP     NOT NULL  DEFAULT NOW(),
  updated_at  TIMESTAMP     NOT NULL  DEFAULT NOW()   ON UPDATE NOW(),

  FOREIGN KEY (power_id)
    REFERENCES powers (power_id)
);


CREATE TABLE goodguys (
  goodguy_id  INTEGER       NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(255)  NOT NULL,
  created_at  TIMESTAMP     NOT NULL  DEFAULT NOW(),
  updated_at  TIMESTAMP     NOT NULL  DEFAULT NOW()   ON UPDATE NOW()
);


CREATE TABLE heroes_goodguys (
  heroes_goodguys_id  INTEGER   NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  hero_id             INTEGER   NOT NULL,
  goodguy_id          INTEGER   NOT NULL,

  FOREIGN KEY (hero_id) 
    REFERENCES heroes (hero_id),

  FOREIGN KEY (goodguy_id)
    REFERENCES goodguys (goodguy_id)
);

