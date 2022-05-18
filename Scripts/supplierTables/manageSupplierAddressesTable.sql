--create table supplier_addresses in database orders_management
CREATE TABLE public.supplier_addresses (
    address_id serial PRIMARY KEY,
    address VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    province VARCHAR(255),
    state VARCHAR(255),
    postal_code INT NOT NULL,
    CHECK(postal_code>0),
    country VARCHAR(255) NOT null
);

--drop datble 
drop table supplier_addresses;

--insert bulgarian supplier addresses

INSERT INTO public.supplier_addresses(address, city, province, postal_code, country) VALUES
('Nadejda 2, bl.290', 'Sofia', 'Sofia',  1155, 'Bulgaria'),
('Pleven, Murl Glens', 'Pleven', 'Pleven', 7246 , 'Bulgaria'),
('Samokov, 130, 82', 'Sofia','Sofia', 1111, 'Bulgaria'),
('Ivan Vazov, 648 Declan Points', 'Sofia','Sofia', 1463, 'Bulgaria'),
('Varbitsa, Mengishevo, 1, 7,', 'Shumen', 'Shumen', 1528, 'Bulgaria'),
('Tsar Samuil, 439 Herzog Center', 'Tutrakan', 'Silistra', 7640, 'Bulgaria'),
('317 Jesus Stream', 'Radnevo', 'Stara Zagora', 6260, 'Bulgaria'),
('946 Owen Crest', 'Marash', 'Shumen', 1000, 'Bulgaria'),
('5903 Catherine Cliff', 'Shumen', 'Liatno', 5903, 'Bulgaria'),
('197, 501', 'Tabachka', 'Ivanovo', 1000, 'Bulgaria'),
('8257 Franecki Walk', 'Panchevo', 'Burgas', 8317, 'Bulgaria'),
('143 Greenfelder Courts', 'Krasen', 'Ruse', 1000, 'Bulgaria'),
('8142 Gutkowski Lakes', 'Vratsa', 'Vratsa', 3000, 'Bulgaria');


--insert us customer addresses

INSERT INTO public.supplier_addresses(address, city, state, postal_code, country) VALUES
('address 1', 'New Mexico', 'Union County', 5403, 'United States'),
('address 2', 'Cochise County', 'Arizona', 48675 , 'United States'),
('address 3', 'Putnam County', 'Indiana', 46135, 'United States'),
('address 4', 'Haakon County', 'South Dakota', 57553, 'United States'),
('address 5', 'White Pine County', 'Nevada', 68, 'United States'),
('address 6', 'Oglesby', 'Illinois', 61348, 'United States'),
('address 7', 'Harding County', 'South Dakota', 586 , 'United States');


select * from supplier_addresses;


