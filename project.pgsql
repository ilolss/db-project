create EXTENSION if not exists pgcrypto;

create schema if not exists project;

create table if not exists project.sellers (
    seller_id serial PRIMARY KEY,
    name varchar(50) not null,
    phone_number varchar(10) not null,
    password bytea not null,
    rating integer not null check(rating >= 1 and rating <= 5)
);

create table if not exists project.goods (
    good_id serial PRIMARY KEY,
    seller_id integer not null references project.sellers (seller_id)
    on delete cascade
    on update cascade,
    name varchar(50) not null,
    description text,
    price decimal(12, 2) not null check(price > 0),
    count integer,
    rating integer not null check(rating >= 1 and rating <= 5),
    valid_from_dttm timestamp not null,
    valid_to_dttm timestamp
);

create table if not exists project.quarantine (
    good_id INTEGER PRIMARY KEY,
    reason TEXT NOT NULL,
    valid_from_dttm TIMESTAMP NOT NULL,
    valid_to_dttm TIMESTAMP NOT NULL,
    FOREIGN KEY (good_id) REFERENCES project.goods(good_id)
);

CREATE TABLE if not exists project.points (
    point_id SERIAL NOT NULL,
    address TEXT NOT NULL,
    rating INTEGER NOT NULL CHECK (rating >= 0 and rating <= 5),
    worktime TEXT,
    phone_number VARCHAR(10) NOT NULL,
    PRIMARY KEY (point_id)
);

create table if not exists project.clients (
    client_id SERIAL PRIMARY KEY,
    first_name varchar(31) NOT NULL,
    last_name varchar(31) NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    password BYTEA NOT NULL
);

CREATE TABLE if not exists project.orders (
    client_id INTEGER NOT NULL,
    point_id INTEGER NOT NULL,
    order_id SERIAL PRIMARY KEY,
    good_name varchar(50) NOT NULL,
    price decimal(12, 2) NOT NULL CHECK (price > 0),
    valid_from_dttm TIMESTAMP NOT NULL,
    valid_to_dttm TIMESTAMP NOT NULL,
    amount INTEGER NOT NULL CHECK (amount > 0),
    PRIMARY KEY (order_id, good_name),
    FOREIGN KEY (client_id) REFERENCES project.clients(client_id)
    on delete RESTRICT
    on update cascade,
    FOREIGN KEY (point_id) REFERENCES project.points(point_id)
    on delete set null
    on update cascade
);

CREATE TABLE IF NOT EXISTS project.employees (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR(31) NOT NULL,
    last_name VARCHAR(31) NOT NULL,
    age INTEGER NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    position VARCHAR(255) NOT NULL,
    salary DECIMAL(12, 2) NOT NULL
);

CREATE TABLE if not exists project.points_employees (
    point_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    PRIMARY KEY (point_id, employee_id),
    FOREIGN KEY (point_id) REFERENCES project.points(point_id),
    FOREIGN KEY (employee_id) REFERENCES project.employees(employee_id)
);

CREATE TABLE if not exists project.orders_goods (
    order_id INTEGER NOT NULL,
    good_id INTEGER NOT NULL,
    good_name varchar(50) NOT NULL,
    PRIMARY KEY (order_id, good_id, good_name),
    FOREIGN KEY (order_id, good_name) REFERENCES project.orders(order_id, good_name),
    FOREIGN KEY (good_id) REFERENCES project.goods(good_id)
);
