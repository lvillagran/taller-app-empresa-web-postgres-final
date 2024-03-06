/***** BASE DE DATOS ****/
/*
 --Tabla Usuaerio del sistema--
  drop table usuarios;
 
CREATE TABLE usuarios(	
      ID NUMBER, 
	   usuario VARCHAR2(50), 
	   password VARCHAR2(50),
     estado VARCHAR2(1) 
	  );
    
 insert into usuarios (id, usuario, password, estado) values(1,'LVILLAGRAN', '123456789','A');
 commit;
select * from usuarios;
   
   
--Tabla tipo de producto--
 drop table tipo_producto;
 
	CREATE TABLE tipo_producto (
			  id_tipo_producto NUMBER PRIMARY KEY,
			  nombre VARCHAR2(100)
			);
			

insert into tipo_producto (id_tipo_producto, nombre ) values(1,'LACTEOS');
insert into tipo_producto (id_tipo_producto, nombre ) values(2,'GRAMINEAS');
insert into tipo_producto (id_tipo_producto, nombre ) values(3,'GRASAS');
select * from tipo_producto;


--Secuencia producto--
drop SEQUENCE sec_producto;

CREATE SEQUENCE sec_producto
    START WITH 1 
    INCREMENT BY 1;

select sec_producto.nextval from dual;


--Tabla Producto--
drop table producto;

			CREATE TABLE producto (
			   id_producto NUMBER PRIMARY KEY,
			   nombre VARCHAR2(100),
			   descripcion VARCHAR2(100),
			   precio NUMBER,
			   estado VARCHAR2(1),
			   fecha_registro DATE,
			   tipo_producto_id NUMBER NOT NULL,
			  FOREIGN KEY (tipo_producto_id) REFERENCES TIPO_PRODUCTO(id_tipo_producto)
			);
 
insert into producto values(1,'arroz', 'arroz conejo',12,'A','06/01/2024',1 );
insert into producto values(2,'BONNELLA', 'mantequilla libra',12,'A','06/01/2024',2);
insert into producto values(8,'BONNELLA', 'mantequilla libra',12,'A','06/01/2024',3);
commit; 

select * from  producto;	
     
select * from  producto;	
*/
