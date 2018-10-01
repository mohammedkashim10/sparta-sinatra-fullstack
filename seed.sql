DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS aboutcars;

CREATE TABLE aboutcars (
	id SERIAL PRIMARY KEY,
	country VARCHAR(50),
	city VARCHAR(50),
	color VARCHAR(50)
);

CREATE TABLE cars (
	id SERIAL PRIMARY KEY,
	make VARCHAR(50),
	modelname VARCHAR(50),
	year INTEGER,
	aboutcar_id int REFERENCES aboutcars(id)
);

INSERT INTO cars (make, modelname, year)
VALUES ('Hyundai', 'Entourage', 2008);
INSERT INTO cars (make, modelname, year)
VALUES ('Lamborghini', 'Diablo', 1995);
INSERT INTO cars (make, modelname, year)
VALUES ('BMW', 'M5', 2007);
INSERT INTO cars (make, modelname, year)
VALUES ('Toyota', 'Highlander', 2002);
INSERT INTO cars (make, modelname, year)
VALUES ('Chevrolet', 'Tracker', 2000);
INSERT INTO cars (make, modelname, year)
VALUES ('Chevrolet', 'G-Series G10', 1995);
INSERT INTO cars (make, modelname, year)
VALUES ('BMW', 'X5', 2009);
INSERT INTO cars (make, modelname, year)
VALUES ('Buick', 'LeSabre', 1987);
INSERT INTO cars (make, modelname, year)
VALUES ('Toyota', 'Previa', 1993);
INSERT INTO cars (make, modelname, year)
VALUES ('Ford', 'Five Hundred', 2006);
INSERT INTO cars (make, modelname, year)
VALUES ('Ford', 'Freestar', 2003);
INSERT INTO cars (make, modelname, year)
VALUES ('Lamborghini', 'Diablo', 1993);
INSERT INTO cars (make, modelname, year)
VALUES ('Dodge', 'Ram Wagon B350', 1993);
INSERT INTO cars (make, modelname, year)
VALUES ('Acura', 'Integra', 1997);
INSERT INTO cars (make, modelname, year)
VALUES ('Ford', 'F-Series', 2010);
INSERT INTO cars (make, modelname, year)
VALUES ('Infiniti', 'FX', 2004);
INSERT INTO cars (make, modelname, year)
VALUES ('Infiniti', 'G', 1992);
INSERT INTO cars (make, modelname, year)
VALUES ('Chevrolet', 'Cobalt', 2005);
INSERT INTO cars (make, modelname, year)
VALUES ('Dodge', 'Ram 1500', 2002);
INSERT INTO cars (make, modelname, year)
VALUES ('Porsche', 'Boxster', 2012);
INSERT INTO cars (make, modelname, year)
VALUES ('BMW', '525', 2002);
INSERT INTO cars (make, modelname, year)
VALUES ('Mercedes-Benz', 'E-Class', 2009);
INSERT INTO cars (make, modelname, year)
VALUES ('Porsche', '911', 1996);
INSERT INTO cars (make, modelname, year)
VALUES ('Ford', 'Escort', 1991);
INSERT INTO cars (make, modelname, year)
VALUES ('Mercedes-Benz', 'E-Class', 1998);
INSERT INTO cars (make, modelname, year)
VALUES ('Chevrolet', 'Astro', 1996);
INSERT INTO cars (make, modelname, year)
VALUES ('Hyundai', 'Accent', 2004);
INSERT INTO cars (make, modelname, year)
VALUES ('Acura', 'Legend', 1988);
INSERT INTO cars (make, modelname, year)
VALUES ('Lexus', 'LS', 2000);
INSERT INTO cars (make, modelname, year)
VALUES ('Lincoln', 'MKZ', 2011);
INSERT INTO cars (make, modelname, year)
VALUES ('Pontiac', 'Grand Prix', 1992);
INSERT INTO cars (make, modelname, year)
VALUES ('Acura', 'TSX', 2006);
INSERT INTO cars (make, modelname, year)
VALUES ('Ford', 'F350', 2002);
INSERT INTO cars (make, modelname, year)
VALUES ('Pontiac', 'Bonneville', 1998);
INSERT INTO cars (make, modelname, year)
VALUES ('Mercedes-Benz', 'Sprinter', 2010);
INSERT INTO cars (make, modelname, year)
VALUES ('Mitsubishi', 'Diamante', 1998);
INSERT INTO cars (make, modelname, year)
VALUES ('Ford', 'Taurus', 2012);
INSERT INTO cars (make, modelname, year)
VALUES ('Porsche', 'Cayenne', 2004);
INSERT INTO cars (make, modelname, year)
VALUES ('Dodge', 'Stratus', 1995);
INSERT INTO cars (make, modelname, year)
VALUES ('Plymouth', 'Voyager', 1995);
INSERT INTO cars (make, modelname, year)
VALUES ('Audi', 'S6', 1995);
INSERT INTO cars (make, modelname, year)
VALUES ('Lexus', 'SC', 2004);
INSERT INTO cars (make, modelname, year)
VALUES ('Chevrolet', 'Lumina', 1995);
INSERT INTO cars (make, modelname, year)
VALUES ('Chevrolet', 'Suburban 1500', 1994);
INSERT INTO cars (make, modelname, year)
VALUES ('Chrysler', 'LeBaron', 1992);
INSERT INTO cars (make, modelname, year)
VALUES ('Lamborghini', 'Diablo', 1996);
INSERT INTO cars (make, modelname, year)
VALUES ('Dodge', 'Ram 3500', 2004);
INSERT INTO cars (make, modelname, year)
VALUES ('GMC', 'Savana 1500', 2004);
INSERT INTO cars (make, modelname, year)
VALUES ('Audi', 'A4', 2007);
INSERT INTO cars (make, modelname, year)
VALUES ('GMC', 'Sierra 3500', 2000);


INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Sukarara Utara', 'Green');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Wuhe Chengguanzhen', 'Mauv');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Nansha', 'Pink');
INSERT INTO aboutcars (country, city, color)
VALUES ('Argentina', 'Cutral-Có', 'Maroon');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Tegalsari', 'Goldenrod');
INSERT INTO aboutcars (country, city, color)
VALUES ('Libya', 'Al Jadīd', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('Poland', 'Jawor', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Hobonio', 'Puce');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Sasa', 'Crimson');
INSERT INTO aboutcars (country, city, color)
VALUES ('United States', 'Seattle', 'Fuscia');
INSERT INTO aboutcars (country, city, color)
VALUES ('Philippines', 'Paniqui', 'Pink');
INSERT INTO aboutcars (country, city, color)
VALUES ('Bulgaria', 'Pleven', 'Indigo');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Suwaru', 'Turquoise');
INSERT INTO aboutcars (country, city, color)
VALUES ('Moldova', 'Bender', 'Yellow');
INSERT INTO aboutcars (country, city, color)
VALUES ('Nigeria', 'Bida', 'Green');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Baisha', 'Maroon');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Merdeka', 'Green');
INSERT INTO aboutcars (country, city, color)
VALUES ('Russia', 'Podgorenskiy', 'Goldenrod');
INSERT INTO aboutcars (country, city, color)
VALUES ('Malaysia', 'Kuala Lumpur', 'Goldenrod');
INSERT INTO aboutcars (country, city, color)
VALUES ('Argentina', 'San Martín', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('Tajikistan', 'Qalaikhumb', 'Puce');
INSERT INTO aboutcars (country, city, color)
VALUES ('Canada', 'Metchosin', 'Purple');
INSERT INTO aboutcars (country, city, color)
VALUES ('Brazil', 'Cravinhos', 'Aquamarine');
INSERT INTO aboutcars (country, city, color)
VALUES ('Czech Republic', 'Holýšov', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Nanping', 'Teal');
INSERT INTO aboutcars (country, city, color)
VALUES ('Philippines', 'Lila', 'Fuscia');
INSERT INTO aboutcars (country, city, color)
VALUES ('Libya', 'Zalţan', 'Pink');
INSERT INTO aboutcars (country, city, color)
VALUES ('France', 'Cernay', 'Orange');
INSERT INTO aboutcars (country, city, color)
VALUES ('Macedonia', 'Shtip', 'Indigo');
INSERT INTO aboutcars (country, city, color)
VALUES ('United States', 'New Orleans', 'Teal');
INSERT INTO aboutcars (country, city, color)
VALUES ('Philippines', 'Concepcion', 'Goldenrod');
INSERT INTO aboutcars (country, city, color)
VALUES ('Portugal', 'Olival', 'Blue');
INSERT INTO aboutcars (country, city, color)
VALUES ('Philippines', 'San Enrique', 'Teal');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Liushun', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('Georgia', 'Gali', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Jiaoshanhe', 'Crimson');
INSERT INTO aboutcars (country, city, color)
VALUES ('Bulgaria', 'Primorsko', 'Maroon');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Shuangtang', 'Teal');
INSERT INTO aboutcars (country, city, color)
VALUES ('Philippines', 'Semirara', 'Fuscia');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Utan', 'Blue');
INSERT INTO aboutcars (country, city, color)
VALUES ('Sweden', 'Strängnäs', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('Guatemala', 'San Juan Bautista', 'Goldenrod');
INSERT INTO aboutcars (country, city, color)
VALUES ('France', 'Douarnenez', 'Aquamarine');
INSERT INTO aboutcars (country, city, color)
VALUES ('Cameroon', 'Bankim', 'Violet');
INSERT INTO aboutcars (country, city, color)
VALUES ('Ukraine', 'Vynohradivka', 'Turquoise');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Sukajadi', 'Mauv');
INSERT INTO aboutcars (country, city, color)
VALUES ('China', 'Sanzao', 'Teal');
INSERT INTO aboutcars (country, city, color)
VALUES ('Nicaragua', 'Larreynaga', 'Indigo');
INSERT INTO aboutcars (country, city, color)
VALUES ('Indonesia', 'Tanjung Pandan', 'Red');
INSERT INTO aboutcars (country, city, color)
VALUES ('Guatemala', 'San José', 'Orange');
