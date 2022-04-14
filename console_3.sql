CREATE TABLE laptops(
            id SERIAL,
            brand VARCHAR NOT NULL,
            name VARCHAR NOT NULL,
            memory INTEGER NOT NULL
);
drop table laptops;

INSERT INTO laptops ( id,brand, name, memory)
VALUES (1,'HP','Probok',256),
       (2,'MSI','Probok',256);

CREATE SEQUENCE laptops_id_generator()

CREATE SEQUENCE IF NOT EXISTS laptops_id_generator
    AS BIGINT INCREMENT BY 2 OWNED BY laptops_id_generator.