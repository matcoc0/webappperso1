DROP TABLE IF EXISTS indiv_activity;
DROP TABLE IF EXISTS indiv_restaurant;
DROP TABLE IF EXISTS indiv_drink;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS drink;
DROP TABLE IF EXISTS restaurant;
DROP TABLE IF EXISTS indiv;


CREATE TABLE indiv(
    id_indiv SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);

INSERT INTO indiv (first_name, last_name) VALUES ('Alice', 'Dupont');
INSERT INTO indiv (first_name, last_name) VALUES ('Bob', 'Martin');
INSERT INTO indiv (first_name, last_name) VALUES ('Charlie', 'Lambert');

-- ITEMS
CREATE TABLE restaurant(
    id_restau SERIAL PRIMARY KEY,
    name VARCHAR(20),
    food_type VARCHAR(20),
    avg_price DECIMAL(10,2)
);

INSERT INTO restaurant (food_type, name, avg_price) VALUES ('Italien', 'Mamma Mia', 25.50);
INSERT INTO restaurant (food_type, name, avg_price) VALUES ('Japonais', 'Yokito', 32.90);
INSERT INTO restaurant (food_type, name, avg_price) VALUES ('Mexicain', 'Chipotle', 20.00);


CREATE TABLE drink(
    id_drink SERIAL PRIMARY KEY,
    drink_name VARCHAR(20),
    alcohol BOOLEAN,
    price DECIMAL(10,2)
);

INSERT INTO drink (drink_name, alcohol, price) VALUES ('Mojito', TRUE, 8.50);
INSERT INTO drink (drink_name, alcohol, price) VALUES ('Coca-Cola', FALSE, 3.00);
INSERT INTO drink (drink_name, alcohol, price) VALUES ('Whisky', TRUE, 12.00);


CREATE TABLE activity(
    id_activity SERIAL PRIMARY KEY,
    activity_name VARCHAR(20),
    min_num INTEGER,
    max_num INTEGER, 
    total_price DECIMAL(10,2) DEFAULT NULL
);

INSERT INTO activity (activity_name, min_num, max_num, total_price) VALUES ('Bowling', 2, 6, 30.00);
INSERT INTO activity (activity_name, min_num, max_num, total_price) VALUES ('Escape Room', 3, 6, 80.00);
INSERT INTO activity (activity_name, min_num, max_num, total_price) VALUES ('Karaoke', 2, 10, 0);

-- TABLES PIVOTS
CREATE TABLE indiv_drink(
    id_indiv INTEGER,
    id_drink INTEGER,
    PRIMARY KEY (id_indiv, id_drink),
    FOREIGN KEY (id_indiv) REFERENCES indiv(id_indiv) ON DELETE CASCADE,
    FOREIGN KEY (id_drink) REFERENCES drink(id_drink) ON DELETE CASCADE
);

INSERT INTO indiv_drink (id_indiv, id_drink) VALUES (1, 1);
INSERT INTO indiv_drink (id_indiv, id_drink) VALUES (1, 2);
INSERT INTO indiv_drink (id_indiv, id_drink) VALUES (2, 3);


CREATE TABLE indiv_restaurant(
    id_indiv INTEGER,
    id_restau INTEGER,
    PRIMARY KEY (id_indiv, id_restau),
    FOREIGN KEY (id_indiv) REFERENCES indiv(id_indiv) ON DELETE CASCADE,
    FOREIGN KEY (id_restau) REFERENCES restaurant(id_restau) ON DELETE CASCADE
);

INSERT INTO indiv_restaurant (id_indiv, id_restau) VALUES (1, 1);
INSERT INTO indiv_restaurant (id_indiv, id_restau) VALUES (2, 2); 
INSERT INTO indiv_restaurant (id_indiv, id_restau) VALUES (3, 3);

CREATE TABLE indiv_activity(
    id_indiv INTEGER,
    id_activity INTEGER,
    PRIMARY KEY (id_indiv, id_activity),
    FOREIGN KEY (id_indiv) REFERENCES indiv(id_indiv) ON DELETE CASCADE,
    FOREIGN KEY (id_activity) REFERENCES activity(id_activity) ON DELETE CASCADE
);

INSERT INTO indiv_activity (id_indiv, id_activity) VALUES (1, 1); 
INSERT INTO indiv_activity (id_indiv, id_activity) VALUES (2, 2); 
INSERT INTO indiv_activity (id_indiv, id_activity) VALUES (3, 3); 
