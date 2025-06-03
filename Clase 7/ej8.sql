/*Seleccionar una lista de los códigos de productos identificando 
con una leyenda si fue comprado o no.*/

select 
p.producto_cod,
case
    WHEN fd.producto_cod is not null then 'El producto fue comprado'
    WHEN fd.producto_cod is null then 'El producto no fue comprado'
end as 'Producto comprado?'

from productos p
left join facturas_det fd on fd.producto_cod = p.producto_cod

