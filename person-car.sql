CREATE TABLE car(
    car_uid UUID NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC(19, 2) NOT NULL CHECK (price > 0)
);

CREATE TABLE person (
    person_uid UUID NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50) NOT NULL,
    car_uid UUID REFERENCES car (car_uid) ON DELETE CASCADE
);


insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Ford', 'Econoline E150', '11479.96');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Mazda', 'MX-6', '58238.86');

insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Marina', 'D''Ugo', 'mdugo0@github.com', 'Female', '9/3/2023', 'Burundi');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Flori', 'Delaney', 'fdelaney1@themeforest.net', 'Female', '3/2/2023', 'Poland');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Hildy', 'Heister', 'hheister2@shareasale.com', 'Female', '7/27/2023', 'Brazil');
