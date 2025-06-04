select
p.producto_cod,
p.producto_desc
from productos p 
where p.fabricante_cod = 'EXPO'
AND NOT EXISTS (
    select 1
    from facturas_det fd 
    where fd.producto_cod = p.producto_cod
)

