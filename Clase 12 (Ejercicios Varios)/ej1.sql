ALTER PROCEDURE totalCompraPR(@cliente_desde int, @cliente_hasta int) AS
BEGIN
    IF OBJECT_ID('comprasHist') is NULL
    BEGIN
        CREATE TABLE comprasHist (
            cliente_num int,
            monto_total int
        )
    END;

    IF OBJECT_ID('erroresProcedure') is NULL
    BEGIN
        CREATE TABLE erroresProcedure (
            num_error int NOT NULL IDENTITY(1,1),
            descripcion VARCHAR(50),
            procedure_asociado VARCHAR(20)
        )
    END;

    declare @cliente_actual INT
    declare @compra_total INT
    declare @cant_validos INT
    declare @cant_errores INT
    declare @cant_leidos INT

    set @cant_errores = 0
    set @cant_leidos = 0
    set @cant_validos = 0
    set @cliente_actual = @cliente_desde

    WHILE @cliente_actual <= @cliente_hasta
    BEGIN
        set @compra_total = (select sum(fd.cantidad * fd.cantidad) from clientes c
        join facturas f on c.cliente_num = f.cliente_num
        join facturas_det fd on f.factura_num = fd.factura_num
        where c.cliente_num = @cliente_actual
        GROUP by c.cliente_num)

        set @cant_leidos += 1
        IF NOT EXISTS (select 1 from comprasHist where cliente_num = @cliente_actual) AND @compra_total IS NOT NULL
            BEGIN
                INSERT INTO comprasHist (cliente_num, monto_total) 
                VALUES (@cliente_actual, @compra_total)
                set @cant_validos += 1
            END
        ELSE
            BEGIN
                INSERT INTO erroresProcedure (descripcion, procedure_asociado)
                VALUES (CONCAT(@cliente_actual, 'ya fue registrado'), 'totalCompraPR')
                set @cant_errores += 1
            END
        set @cliente_actual += 1
        print @cliente_actual
    END;

    print str(@cant_errores)
    print 'La cantidad de usuarios leidos fue ' + str(@cant_leidos)
    print 'La cantidad de usuarios validos fue ' + str(@cant_validos)
    print 'La cantidad de errores encontrados fue ' + str(@cant_errores)
END;


EXECUTE totalCompraPR @cliente_desde = 108, @cliente_hasta = 150
select * from facturas_det
select * from comprasHist