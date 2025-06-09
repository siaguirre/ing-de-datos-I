-- Resolución con query correlacionado
select p.producto_cod, p.producto_desc from productos p
where not exists(
    select 1 
    from facturas_det fd
    where fd.producto_cod = p.producto_cod
)

-- Resolución con subquery
select p.producto_cod, p.producto_desc from productos p 
where p.producto_cod in (select 
        p2.producto_cod 
        from productos p2
        left join facturas_det fd 
            on p2.producto_cod = fd.producto_cod
        where fd.factura_num is null)

