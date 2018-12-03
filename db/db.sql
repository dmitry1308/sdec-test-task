CREATE TABLE orders
(
  "number" serial NOT NULL unique ,
  date date,
  "time" text
)
  WITH (
    OIDS=FALSE
  );
ALTER TABLE orders
  OWNER TO postgres;

INSERT INTO orders(
  "number", date, "time")
VALUES (1,'2018-12-12' , '12:12:12'),
       (2,'2018-12-13' , '07:12:12'),
       (3,'2018-12-14' , '08:12:12')
;

