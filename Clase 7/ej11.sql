/*Seleccione los códigos y descripciones de los productos de los fabricantes 
‘CASA’ y ‘DOTO’ de 3 maneras distintas.*/

select producto_cod, producto_desc from productos
where fabricante_cod = 'CASA' or fabricante_cod = 'DOTO'

select p.producto_cod, p.producto_desc from fabricantes f
join productos p on p.fabricante_cod = 'CASA' or p.fabricante_cod = 'DOTO'
group by p.producto_cod, p.producto_desc

select producto_cod, producto_desc 
from productos
where exists (
    select 1 
    from fabricantes f 
    where fabricante_cod = 'CASA' OR fabricante_cod = 'DOTO')