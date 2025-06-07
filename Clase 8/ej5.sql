select
f.fabricante_cod, 
sum(fd.precio_unit * fd.cantidad) as cantVendida
from fabricantes f
join productos p on f.fabricante_cod = p.fabricante_cod
join facturas_det fd on fd.producto_cod = p.producto_cod
where f.provincia_cod != 'BA'
group by f.fabricante_cod
having sum(fd.precio_unit * fd.cantidad) > ANY(
    select sum(fd.precio_unit * fd.cantidad)
    from fabricantes f
    join productos p on f.fabricante_cod = p.fabricante_cod
    join facturas_det fd on fd.producto_cod = p.producto_cod
    where f.provincia_cod = 'BA'
    group by f.fabricante_cod
)
