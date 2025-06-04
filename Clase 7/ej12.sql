/*Seleccione los productos en 
común que hayan comprado los clientes 103, 114 y 106.  */

select fd.producto_cod from facturas_det fd
join facturas f on f.factura_num = fd.factura_num
where f.cliente_num in (103, 114, 106)
group by fd.producto_cod having COUNT(distinct f.cliente_num) = 3