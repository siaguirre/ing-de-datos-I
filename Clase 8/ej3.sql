select 
p.provincia_cod, p.provincia_desc
from provincias p 
left join fabricantes f on p.provincia_cod = f.provincia_cod
where f.fabricante_cod is NULL
