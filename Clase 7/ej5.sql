/*Seleccionar monto total comprado por cliente y el monto promedio 
de sus facturas para aquellos clientes que tengan más de 2 facturas. Ordenado por total comprado de manera 
descendente.*/
select 
c.cliente_num,
sum(fd.precio_unit * fd.cantidad) 'Monto total comprado',
sum(fd.precio_unit * fd.cantidad) / count(distinct f.factura_num) 'Monto promedio por factura'
from clientes c
join facturas f on c.cliente_num = f.cliente_num 
join facturas_det fd on f.factura_num = fd.factura_num
group by c.cliente_num
having (count(distinct f.factura_num) > 2)
ORDER BY SUM(fd.precio_unit * fd.cantidad) DESC;


select * from facturas_det
select cliente_num from facturas 
GROUP by cliente_num having(count(cliente_num) > 2)