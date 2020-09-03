CREATE DATABASE `que_veo`;

USE `que_veo`;

CREATE TABLE `pelicula`(
  `id` int NOT NULL auto_increment,
  `titulo` varchar(100),
  `duracion` int(5),
  `director` varchar(400),
  `anio` int(5),
  `fecha_lanzamiento` date,
  `puntuacion` int(2),
  `poster` varchar(300),
  `trama` varchar(700),
  PRIMARY KEY (id)
);

CREATE TABLE `genero`(
  `id` int NOT NULL auto_increment,
  `nombre` varchar(30),
  PRIMARY KEY (id)
);

ALTER TABLE `pelicula`
ADD COLUMN `genero_id` INT NOT NULL;

CREATE TABLE `actor`(
  `id` int NOT NULL auto_increment,
  `nombre` varchar(70),
  PRIMARY KEY (id)
);

CREATE TABLE `actor_pelicula`(
  `id` int NOT NULL auto_increment,
  actor_id int NOT NULL,
  pelicula_id int NOT NULL,
  PRIMARY KEY (id),  
  FOREIGN KEY (actor_id) REFERENCES actor(id),
  FOREIGN KEY (pelicula_id) REFERENCES pelicula(id)
);