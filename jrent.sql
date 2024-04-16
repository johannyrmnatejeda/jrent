/*  
Johanny Ramona Tejeda
22-SIIT-1-030

*/



-- Creación de la tabla Cliente
CREATE TABLE Cliente (
    idCliente INT NOT NULL AUTO_INCREMENT,
    Codigo VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Telefono VARCHAR(15) NOT NULL,
    Direccion VARCHAR(45) NOT NULL,
    Correo VARCHAR(45) NOT NULL,
    PRIMARY KEY (idCliente)
);

-- Creación de la tabla Mensajero
CREATE TABLE Mensajero (
    idMensajero INT NOT NULL AUTO_INCREMENT,
    Codigo VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Telefono VARCHAR(15) NOT NULL,
    Direccion VARCHAR(45) NOT NULL,
    Correo VARCHAR(45) NOT NULL,
    PRIMARY KEY (idMensajero)
);

-- Creación de la tabla Proveedor
CREATE TABLE Proveedor (
    idProveedor INT NOT NULL AUTO_INCREMENT,
    Codigo VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Telefono VARCHAR(15) NOT NULL,
    Direccion VARCHAR(45) NOT NULL,
    Correo VARCHAR(45) NOT NULL,
    PRIMARY KEY (idProveedor)
);

-- Creación de la tabla Traje
CREATE TABLE Traje (
    idTraje INT NOT NULL AUTO_INCREMENT,
    Codigo VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Precio DECIMAL(18, 2) NOT NULL,
    Tipo VARCHAR(10) NOT NULL,
    Talla VARCHAR(10) NOT NULL,
    idProveedor INT NOT NULL,
    PRIMARY KEY (idTraje),
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor)
);

-- Creación de la tabla Vendedor
CREATE TABLE Vendedor (
    idVendedor INT NOT NULL AUTO_INCREMENT,
    Codigo VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    Telefono VARCHAR(15) NOT NULL,
    Direccion VARCHAR(45) NOT NULL,
    Correo VARCHAR(45) NOT NULL,
    PRIMARY KEY (idVendedor)
);

-- Creación de la tabla Alquiler
CREATE TABLE Alquiler (
    idAlquiler INT NOT NULL AUTO_INCREMENT,
    idTraje INT NOT NULL,
    idCliente INT NOT NULL,
    idVendedor INT NOT NULL,
    idMensajero INT NOT NULL,
    Fecha DATE NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    PRIMARY KEY (idAlquiler),
    FOREIGN KEY (idTraje) REFERENCES Traje(idTraje),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor(idVendedor),
    FOREIGN KEY (idMensajero) REFERENCES Mensajero(idMensajero)
);



-- Insertar datos en las tablas

-- Inserción de datos en la tabla Cliente
INSERT INTO Cliente (idCliente, Codigo, Nombre, Telefono, Direccion, Correo) VALUES
(1, 'CL01', 'Ivan Matos', '809-799-1044', 'Calle Primera, no. 25', 'matosivan@gmail.com'),
(2, 'CL02', 'Juan Ruiz', '829-414-7022', 'Calle Las Praderas, No. 30', 'juanruiz@gmail.com'),
(3, 'CL03', 'Miguel López', '829-785-1422', 'Calle Las Palmas, No. 13', 'miguellopez@gmail.com'),
(4, 'CL04', 'Sonia Meran', '809-878-1820', 'Av. Independencia, No. 25', 'soniameran@gmail.com'),
(5, 'CL05', 'Julissa Marrero', '849-748-0720', 'Av. España, No. 215', 'julisamarrero@gmail.com'),
(6, 'CL06', 'Nicolás Santos', '809-850-5088', 'Calle La Cruz, No. 30', 'nicolassantos@gmail.com'),
(7, 'CL07', 'Sebastian Yatra', '849-889-1425', 'Av. Los Próceres, No. 250', 'yatras@gmail.com'),
(8, 'CL08', 'Niurbi Del Orbe', '809-850-9915', 'Calle Diagonal B, No. 9', 'delorben@gmail.com'),
(9, 'CL09', 'Ninoska Sosa', '829-556-0715', 'Calle Doña Pacha, No. 45', 'ninoska@gmail.com'),
(10, 'CL10', 'Santiago Matías', '809-915-2023', 'Av. Herrera, No. 66', 'santiagomatias@gmail.com'),
(11, 'CL11', 'Carlos Araujo', '849-788-0715', 'Intersección Las Colinas, No. 40', 'araujocc@gmail.com'),
(12, 'CL12', 'Yeni De Óleo', '809-745-2144', 'Calle Las Praderas, No. 78', 'yenideoleo@gmail.com');

-- Inserción de datos en la tabla Mensajero
INSERT INTO Mensajero (idMensajero, Codigo, Nombre, Telefono, Direccion, Correo) VALUES
(1, 'MN01', 'Santos Trinidad', '809-799-1044', 'Calle Primera, no. 25', 'santostrinidad@gmail.com'),
(2, 'MN02', 'Nicolas Maquiavelo', '829-414-7022', 'Calle Las Praderas, No. 30', 'elcorteingles@gmail.com'),
(3, 'MN03', 'Mark Twain', '829-785-1422', 'Calle Las Palmas, No. 13', 'tomsawyer@gmail.com'),
(4, 'MN04', 'Arthur Conan Doyle', '809-878-1820', 'Av. Independencia, No. 25', 'sherlokholmes@gmail.com'),
(5, 'MN05', 'San Agustin de Hipona', '849-748-0720', 'Av. España, No. 215', 'laciudadedios@gmail.com'),
(6, 'MN06', 'Ricardo Manzueta', '809-850-5088', 'Calle La Cruz, No. 30', 'licmanzueta@gmail.com'),
(7, 'MN07', 'Sebastian Álvarez', '849-889-1425', 'Av. Los Próceres, No. 250', 'sebastiana@gmail.com'),
(8, 'MN08', 'Carlitos Vásquez', '809-850-9915', 'Calle Diagonal B, No. 9', 'carlitosvasquez@gmail.com'),
(9, 'MN09', 'Julio Contreras', '829-556-0715', 'Calle Doña Pacha, No. 45', 'contrerasjulio@gmail.com'),
(10, 'MN10', 'Carina Hernández', '809-915-2023', 'Av. Herrera, No. 66', 'carinahernandez@gmail.com'),
(11, 'MN11', 'Michael García', '849-788-0715', 'Intersección Las Colinas, No. 40', 'michaelgarcia@gmail.com'),
(12, 'MN12', 'Adalberto López', '809-745-2144', 'Calle Las Praderas, No. 78', 'adalbertolopez@gmail.com');

-- Inserción de datos en la tabla Proveedor
INSERT INTO Proveedor (idProveedor, Codigo, Nombre, Telefono, Direccion, Correo) VALUES
(1, 'PR01', 'Sunilda José', '809-799-1044', 'Calle Primera, no. 25', 'sunildajose@gmail.com'),
(2, 'PR02', 'Joaquín Sabina', '829-414-7022', 'Calle Las Praderas, No. 30', 'joaquinasabina@gmail.com'),
(3, 'PR03', 'Ricardo Arjona', '829-785-1422', 'Calle Las Palmas, No. 13', 'arjoniano@gmail.com'),
(4, 'PR04', 'Alejandro Sanz', '809-878-1820', 'Av. Independencia, No. 25', 'alejandrinos@gmail.com'),
(5, 'PR05', 'Juan Luis Guerra', '849-748-0720', 'Av. España, No. 215', 'banda440@gmail.com'),
(6, 'PR06', 'Sofia Jiménez', '809-850-5088', 'Calle La Cruz, No. 30', 'jimeness@gmail.com'),
(7, 'PR07', 'Camilo Hernández', '849-889-1425', 'Av. Los Próceres, No. 250', 'chernandez@gmail.com'),
(8, 'PR08', 'Neuris Vásquez', '809-850-9915', 'Calle Diagonal B, No. 9', 'neurisvasquez@gmail.com'),
(9, 'PR09', 'Julio Iglesias', '829-556-0715', 'Calle Doña Pacha, No. 45', 'iglesiasjulio@gmail.com'),
(10, 'PR10', 'Carlos Zapata', '809-915-2023', 'Av. Herrera, No. 66', 'carloszapata@gmail.com'),
(11, 'PR11', 'Félix Contreras', '849-788-0715', 'Intersección Las Colinas, No. 40', 'ingfelix@gmail.com'),
(12, 'PR12', 'Nolberto Castro', '809-745-2144', 'Calle Las Praderas, No. 78', 'nolbertocastro@gmail.com');

-- Inserción de datos en la tabla Traje
INSERT INTO Traje (idTraje, Codigo, Nombre, Precio, Tipo, Talla, idProveedor) VALUES
(1, 'TR01', 'Roberto Cavalli', 1550.00, 'Hombre', 'M', 1),
(2, 'TR02', 'Charles Milleston', 1380.00, 'Hombre', 'S', 1),
(3, 'TR03', 'Roberto Cavalli', 1250.00, 'Mujer', 'M', 4),
(4, 'TR04', 'Michael Kors', 1100.00, 'Mujer', 'S', 3),
(5, 'TR05', 'Julissa Cavallier', 1475.00, 'Hombre', 'L', 5),
(6, 'TR06', 'Julissa Cavallier', 1200.00, 'Mujer', 'M', 5),
(7, 'TR07', 'Roberto Cavalli', 1390.00, 'Hombre', 'S', 4),
(8, 'TR08', 'Carolina Herrera', 2050.00, 'Hombre', 'L', 9),
(9, 'TR10', 'Crolina Herrera', 1975.00, 'Mujer', 'M', 9),
(10, 'TR11', 'Salvatore Ferragamo', 1800.00, 'Hombre', 'M', 11),
(11, 'TR12', 'Giancarlo Farusso', 1890.00, 'Mujer', 'S', 8),
(12, 'TR12', 'Giancarlo Farusso', 1890.00, 'Hombre', 'L', 7),
(13, 'TR12', 'Chacabana', 1850.00, 'Hombre', 'M', 10),
(14, 'TR12', 'Chacabana', 2100.00, 'Mujer', 'M', 6);

-- Inserción de datos en la tabla Vendedor
INSERT INTO Vendedor (idVendedor, Codigo, Nombre, Telefono, Direccion, Correo) VALUES
(1, 'VN01', 'María Alt. Sosa', '809-799-1044', 'Calle Primera, no. 25', 'mariasosa@gmail.com'),
(2, 'VN02', 'Carla Santana', '829-414-7022', 'Calle Las Praderas, No. 30', 'carlasantana@gmail.com'),
(3, 'VN03', 'Nelson Batista', '829-785-1422', 'Calle Las Palmas, No. 13', 'nelsonbatista@gmail.com'),
(4, 'VN04', 'Jairo Mercedes', '809-878-1820', 'Av. Independencia, No. 25', 'jairomercedes@gmail.com'),
(5, 'VN05', 'Milagros Germán', '849-748-0720', 'Av. España, No. 215', 'milagrosgerman@gmail.com'),
(6, 'VN06', 'Antonio Santos', '809-850-5088', 'Calle La Cruz, No. 30', 'antoniosantos@gmail.com'),
(7, 'VN07', 'Nani Castro', '849-889-1425', 'Av. Los Próceres, No. 250', 'castrocastro@gmail.com'),
(8, 'VN08', 'Antonella Rodríguez', '809-850-9915', 'Calle Diagonal B, No. 9', 'lachichi@gmail.com'),
(9, 'VN09', 'Jose Armando Jose', '829-556-0715', 'Calle Doña Pacha, No. 45', 'jaj94@gmail.com'),
(10, 'VN10', 'Odani Eustaquio', '809-915-2023', 'Av. Herrera, No. 66', 'odanieustaquio@gmail.com'),
(11, 'VN11', 'Domingo Talavera', '849-788-0715', 'Intersección Las Colinas, No. 40', 'talaverad@gmail.com'),
(12, 'VN12', 'Ramón Núñez', '809-745-2144', 'Calle Las Praderas, No. 78', 'donramon@gmail.com');

-- Inserción de datos en la tabla Alquiler
INSERT INTO Alquiler (idAlquiler, idTraje, idCliente, idVendedor, idMensajero, Fecha, Estado) VALUES
(21, 1, 3, 4, 9, '2024-05-07', 'Devuelto'),
(22, 5, 2, 5, 6, '2024-05-07', 'Alquilado'),
(23, 3, 1, 3, 2, '2024-05-07', 'Alquilado'),
(24, 8, 3, 1, 1, '2024-05-07', 'Alquilado'),
(25, 1, 5, 2, 3, '2024-05-07', 'Alquilado'),
(26, 9, 4, 2, 4, '2024-05-07', 'Alquilado'),
(27, 4, 6, 6, 4, '2024-05-07', 'Alquilado'),
(28, 5, 10, 11, 3, '2024-05-07', 'Alquilado'),
(29, 7, 3, 10, 10, '2024-05-07', 'Devuelto'),
(30, 1, 4, 8, 3, '2024-05-07', 'Alquilado'),
(31, 6, 5, 4, 4, '2024-05-07', 'Alquilado'),
(32, 10, 8, 9, 5, '2024-05-07', 'Devuelto'),
(33, 12, 8, 10, 6, '2024-05-07', 'Devuelto'),
(34, 8, 9, 2, 10, '2024-05-07', 'Alquilado'),
(35, 11, 2, 3, 8, '2024-05-07', 'Alquilado'),
(36, 2, 2, 6, 6, '2024-05-07', 'Devuelto'),
(37, 5, 1, 7, 11, '2024-05-07', 'Alquilado'),
(38, 4, 6, 5, 3, '2024-05-07', 'Alquilado'),
(39, 3, 5, 9, 7, '2024-05-07', 'Devuelto'),
(40, 2, 8, 8, 12, '2024-05-07', 'Alquilado'),
(41, 10, 1, 2, 8, '2024-05-07', 'Devuelto'),
(42, 12, 3, 11, 9, '2024-05-07', 'Alquilado'),
(43, 11, 8, 12, 1, '2024-05-07', 'Devuelto'),
(44, 9, 7, 9, 3, '2024-05-07', 'Alquilado'),
(45, 7, 11, 7, 2, '2024-05-07', 'Alquilado'),
(46, 5, 10, 7, 5, '2024-05-07', 'Devuelto'),
(47, 7, 9, 5, 10, '2024-05-07', 'Alquilado');


-- Obtener datos

-- Trajes alquilados por clientes
SELECT 
    c.Nombre AS NombreCliente,
    c.Correo AS CorreoCliente,
    t.Nombre AS NombreTraje,
    t.Precio AS PrecioTraje,
    a.Estado AS EstadoAlquiler,
    m.Nombre AS NombreMensajero
FROM 
    Alquiler a
JOIN 
    Cliente c ON a.idCliente = c.idCliente
JOIN 
    Traje t ON a.idTraje = t.idTraje
JOIN 
    Mensajero m ON a.idMensajero = m.idMensajero;


SELECT 
    t.Nombre AS Traje,
    COUNT(a.idAlquiler) AS VecesAlquilado,
    SUM(t.Precio) AS GananciasGeneradas,
    SUM(DATEDIFF('2024-11-17', a.Fecha)) AS DiasFuera
FROM 
    Alquiler a
JOIN 
    Traje t ON a.idTraje = t.idTraje
WHERE 
    a.Estado = 'Devuelto'
GROUP BY 
    t.Nombre;
