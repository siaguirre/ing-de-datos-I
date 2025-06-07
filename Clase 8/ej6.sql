select c.cliente_num, c.nombre, c.apellido from clientes c 
join facturas f on c.cliente_num = f.cliente_num
join facturas_det fd on f.factura_num = fd.factura_num
group by c.cliente_num, c.nombre, c.apellido
having sum(fd.cantidad * fd.precio_unit) > (
        select 
        sum(cantidad * precio_unit) / count(distinct cliente_num)
        from facturas f 
        join facturas_det fd on fd.factura_num = f.factura_num)
