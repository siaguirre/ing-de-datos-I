select 
p.provincia_cod, 
p.provincia_desc, 
(select 
    count(cliente_num) 
    from clientes c
    where p.provincia_cod = c.provincia_cod
) as 'Cant clientes por provincia' 
from provincias p
group by provincia_cod, p.provincia_desc
order by 'Cant clientes por provincia' desc