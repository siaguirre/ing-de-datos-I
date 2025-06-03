select 
CONCAT(c.cliente_num, ', ', nombre, ', ', apellido) as cliente_concat,
sum(cantidad * precio_unit) as total
from clientes c
JOIN facturas f ON c.cliente_num = f.cliente_num 
WHERE provincia_cod = 'BA'

select * from clientes
select * from facturas_det