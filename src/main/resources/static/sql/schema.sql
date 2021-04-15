CREATE DATABASE accenturemarket;
-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
--Table "CATEGORIAS"
-------------------------------------------------------------------------------------------------------------

CREATE TABLE CATEGORIAS (
"idCategoria" SERIAL NOT NULL,
"descripcion" VARCHAR(45) NOT NULL,
"estado" BOOLEAN NOT NULL,
PRIMARY KEY ("idCategoria"));

-------------------------------------------------------------------------------------------------------------
--Table "PRODUCTOS"
-------------------------------------------------------------------------------------------------------------

CREATE TABLE PRODUCTOS(
"idProdcuto" SERIAL NOT NULL,
"nombre" VARCHAR(45) NULL,
"idCategoria" INT NOT NULL,
"codigoBarras" VARCHAR(150)  NULL,
"precioVenta" DECIMAL(16,2)  NULL,
"cantidadStock" INT NOT NULL,
"estado" BOOLEAN  NULL,
PRIMARY KEY ("idProdcuto"),
CONSTRAINT "FK_PRODUCTOS_CATEGORIAS"
FOREIGN KEY ("idCategoria")
REFERENCES CATEGORIAS ("idCategoria")
ON DELETE NO ACTION
ON UPDATE NO ACTION);
