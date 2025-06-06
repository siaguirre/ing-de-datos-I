select
f.fabricante_cod, 
f.tiempo_entrega,
f.provincia_cod
from fabricantes f
where f.provincia_cod != 'BA'
and f.tiempo_entrega <= (select 
                        min(f.tiempo_entrega)
                        from fabricantes f
                        where f.provincia_cod = 'BA')

