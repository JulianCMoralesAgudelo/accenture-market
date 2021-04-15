CREATE DATABASE accenturemarket;

CREATE TABLE categorias (
    idCategoria int(11) NOT NULL,
    descripcion varchar(45) NOT NULL,
    estado boolean NOT NULL
) ;

CREATE TABLE productos (
    idProdcuto int(11) NOT NULL,
    nombre varchar(45),
    idCategoria int(11) NOT NULL,
    codigoBarras varchar(150),
    precioVenta numeric(16,2),
    cantidadStock int(11) NOT NULL,
    estado boolean
) ;

ALTER TABLE categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (idCategoria);
ALTER TABLE productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (idProdcuto);
