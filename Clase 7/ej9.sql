/*
Seleccionar la lista de productos del fabricante ‘CASA’ que fueron comprados
*/

select 
case
    WHEN fd.producto_cod is not null then fd.producto_cod
end as 'Productos de CASA comprados'
from productos p
left join facturas_det fd on fd.producto_cod = p.producto_cod
where p.fabricante_cod = 'CASA'
GROUP by fd.producto_cod

