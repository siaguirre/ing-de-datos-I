select nombre, apellido,
case
    when telefono is null then  '0'
    else telefono
end as telefono
from dbo.clientes
