select c.cliente_num, nombre, apellido, f.factura_num
from clientes c
inner join facturas f on c.cliente_num = f.cliente_num


