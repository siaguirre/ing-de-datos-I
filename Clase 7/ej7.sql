/*Seleccionar los nombres y apellidos de los clientes junto con 
los de sus referentes*/

select c.nombre, c.apellido, c.cliente_ref, c2.nombre, c2.apellido  from clientes c
join clientes c2 on c.cliente_ref = c2.cliente_num



