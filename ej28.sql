select fabricante_cod, fabricante_nom,
    case
        when tiempo_entrega is null then 'Tiempo de entrega no especificado'
        when tiempo_entrega < 5 then 'Entrega rápida'
        when tiempo_entrega = 5 then 'Entrega normal'
        else 'Entrega lenta'
end as tipo_entrega
from fabricantes
