/*
Seleccionar cliente_num, nombre, apellido, codigo y descripción de producto y monto total de 
los productos comprados por cliente ordenados por cliente y producto en forma ascendente y 
monto en forma descendente.
*/
select f.cliente_num, c.nombre, c.apellido, p.producto_cod, p.producto_desc, sum(fd.cantidad * fd.precio_unit) as montoTotal from facturas f
join facturas_det fd on f.factura_num = fd.factura_num
join productos p on p.producto_cod = fd.producto_cod
join clientes c on f.cliente_num = c.cliente_num
GROUP by f.cliente_num, c.nombre, c.apellido, p.producto_cod, p.producto_desc
order by f.cliente_num ASC, p.producto_cod ASC, montoTotal DESC