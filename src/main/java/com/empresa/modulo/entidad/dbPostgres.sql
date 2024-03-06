/***** BASE DE DATOS POSTGRES  Version: 9.6 ****/
 
 --***********TABLA USUARIOS*************--
 drop table desarrollo.usuarios;

CREATE TABLE desarrollo.usuarios (
    id SERIAL PRIMARY KEY,
    usuario VARCHAR(100),
    password VARCHAR(100),
    estado VARCHAR(1)
   );

--Creamos secuencia y asociamos con la tabla--
drop SEQUENCE desarrollo.secuencia_users;
CREATE SEQUENCE desarrollo.secuencia_users;
ALTER TABLE desarrollo.usuarios ALTER COLUMN id SET DEFAULT nextval('secuencia_users');
SELECT nextval('desarrollo.secuencia_users');

--Insertamos usuario--
INSERT INTO desarrollo.usuarios(id, usuario, password, estado)VALUES (1, 'LVILLAGRAN', '123456789', 'A');
commit;
select * from desarrollo.usuarios;

   
--*********TABLA TIPO_PRODUCTO***********--
     drop table desarrollo.tipo_producto;
 
	CREATE TABLE desarrollo.tipo_producto (
			  id_tipo_producto SERIAL PRIMARY KEY,
			  nombre VARCHAR(100)
			);
			
insert into desarrollo.tipo_producto (id_tipo_producto, nombre ) values(1,'LACTEOS');
insert into desarrollo.tipo_producto (id_tipo_producto, nombre ) values(2,'GRAMINEAS');
insert into desarrollo.tipo_producto (id_tipo_producto, nombre ) values(3,'GRASAS');
commit; 
select * from desarrollo.tipo_producto;


--********** TABLA PRODUCTO ************--
     drop table desarrollo.producto;

			CREATE TABLE desarrollo.producto (
		    id_producto SERIAL PRIMARY KEY,
		    nombre VARCHAR(100),
		    descripcion VARCHAR(100),
		    precio BIGINT,
		    estado VARCHAR(1),
		    fecha_registro DATE,
		    tipo_producto_id BIGINT NOT NULL,
		    CONSTRAINT fk_tipo_producto FOREIGN KEY (tipo_producto_id)
		        REFERENCES tipo_producto(id_tipo_producto)
		);
		
--Creamos secuencia y asociamos con la tabla--
drop sequence desarrollo.secuencia_producto;
CREATE SEQUENCE desarrollo.secuencia_producto;
ALTER TABLE desarrollo.producto ALTER COLUMN id_producto SET DEFAULT nextval('secuencia_producto');	
SELECT nextval('desarrollo.secuencia_producto');

--
insert into desarrollo.producto values(1,'arroz', 'arroz conejo',12,'A','06/01/2024',1 );
insert into desarrollo.producto values(2,'BONNELLA', 'mantequilla libra',12,'A','06/01/2024',2);
insert into desarrollo.producto values(3,'BONNELLA', 'mantequilla libra',12,'A','06/01/2024',3);
commit; 
select * from  desarrollo.producto;
--delete from desarrollo.producto;
*/