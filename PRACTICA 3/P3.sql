create database victimasJULIO2021;

use victimasJULIO2021;

select * from julio2021;

select Edad from julio2021 where Edad = 'NA';

select Edad from julio2021 where Edad is null;

update julio2021 set Edad = NULL where Edad = 'NA';

select A�o_hecho from julio2021 where A�o_hecho = 'NA';

select A�o_hecho from julio2021 where A�o_hecho is null;

UPDATE julio2021 SET Calle_hechos = NULL WHERE Calle_hechos = 'NA';

select * from julio2021 where Calle_hechos2 = 'NA';

select count(*) as totalRegistros from julio2021;

select distinct Ano_inicio from julio2021 order by Ano_inicio desc;

select distinct A�o_hecho from julio2021 order by A�o_hecho desc;

select count(*) from julio2021 where A�o_hecho is null;

sqlcmd -d victimasJULIO2021 -i c:\Users\BRANDON\Documents\victimas.sql

select idCarpeta, count(idCarpeta) as cant from julio2021 group by idCarpeta order by cant desc;

select * from julio2021 where FechaHecho is null;

select * from julio2021 where AlcaldiaHechos is null and ColoniaHechos is null and Calle_hechos is null and Calle_hechos2 is null and latitud is null and longitud is null;

select * from julio2021;