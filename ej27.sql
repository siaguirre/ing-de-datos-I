select nombre, apellido, 
    case 
        when domicilio is null and (telefono is null or telefono = '') then 'SIN DATOS'
        when domicilio is null then telefono
        else domicilio
    end as contacto
from clientes