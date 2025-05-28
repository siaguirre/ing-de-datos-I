use ejerciciosIngenieria;
select factura_num,renglon, sum(cantidad * precio_unit) as "Total por renglón" 
from facturas_det
group by renglon, factura_num
order by "Total por renglón" desc