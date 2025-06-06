select p.producto_cod, p.producto_desc, sum(fd.cantidad) as 'Total vendido'
from facturas_det fd
join productos p on fd.producto_cod = p.producto_cod
group by p.producto_cod, p.producto_desc
having sum(fd.cantidad) > 150

