-- noinspection LossyEncodingForFile

use ejerciciosIngenieria
-- 1) select count(*) 'Cantidad de Facturas' from facturas
-- 2) select * from facturas
-- 3) Select cliente_num, nombre, apellido from clientes where provincia_cod = 'BA'
-- 4) Select cliente_num, nombre, apellido from clientes where provincia_cod = 'BA' and cliente_ref is null
-- 5) select * from fabricantes where tiempo_entrega between 1 and 5
-- 6) select factura_num, cliente_num, fecha_pago from facturas where fecha_pago between '2021-01-01' and '2021-02-28'
-- 7) select *, precio_unit + precio_unit * 0.2  '20% aumento' from productos where fabricante_cod = 'CASA' 
-- 8) select top 3 * from facturas order by fecha_pago desc
-- 9) select top 1 * from fabricantes order by tiempo_entrega
-- 10) select top 1 * from fabricantes where tiempo_entrega is not null order by tiempo_entrega 
-- 11) select cliente_num, nombre, apellido from clientes order by cliente_num offset 4 rows fetch next 5 rows only
-- 12) select count(*) 'Clientes sin telefono' from clientes where telefono is null
-- 13) select provincia_cod, count(*) 'Fabricantes por provincia' from fabricantes group by provincia_cod
-- 14) select distinct factura_num, f.cliente_num, c.nombre, c.apellido, c.empresa from facturas f join clientes c  on f.cliente_num = c.cliente_num where f.cliente_num is not null  
-- 15) select * from clientes where provincia_cod in ('SA', 'JU')
-- 16) select * from clientes where provincia_cod in ('SA', 'JU') and estado = 'I'
-- 17) select * from fabricantes where fabricante_cod LIKE '%E%' and tiempo_entrega > 5
-- 18) select * from fabricantes where SUBSTRING(fabricante_nom, 2, 1) in ('E', 'F', 'G', 'H', 'I', 'J')
-- 19) select factura_num, renglon, (precio_unit * cantidad) 'Precio Total' from facturas_det
-- 20) select count(factura_num) 'Total de facturas', min(fecha_emision) 'Primera factura', max(fecha_emision) 'Ultima factura' from facturas
-- 21) select factura_num, sum(cantidad * precio_unit) 'Precio total' from facturas_det group by factura_num
-- 22) select count(*) as cantidad_por_provincia, provincia_cod from clientes where provincia_cod is not null group by provincia_cod order by cantidad_por_provincia desc
-- 23) select avg(cantidad * precio_unit) 'Promedio facturaci�n' from facturas_det 
-- 24) select count(factura_num) 'Facturas de clientes > 108' from facturas where cliente_num > 108
-- 25) select cliente_num, count(*) as cant_facturas from facturas where cliente_num > 104 group by cliente_num having count(factura_num) >= 2order by cant_facturas desc

