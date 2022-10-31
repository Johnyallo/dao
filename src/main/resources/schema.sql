CREATE TABLE orders(
                       id INT primary key GENERATED ALWAYS AS IDENTITY,
                       date DATE not null,
                       customer_id INT unique ,
                       product_name VARCHAR(30) not null,
                       amount INT not null,
                       FOREIGN KEY (customer_id)
                           REFERENCES orders(id)
);

CREATE TABLE customers(
                          id INT primary key GENERATED ALWAYS AS IDENTITY,
                          name VARCHAR(30) not null,
                          surname VARCHAR(30) not null,
                          age INT CHECK ( age > 0 ),
                          phone_number INT unique
);

