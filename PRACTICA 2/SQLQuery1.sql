use incidentesViales;

select codigo_cierre from incidentes where codigo_cierre is null;

select codigo_cierre from incidentes where codigo_cierre = 'NULL';

select codigo_cierre from incidentes;

select distinct fecha_creacion from incidentes order by fecha_creacion asc;

select fecha_creacion from incidentes;

select fecha_creacion from incidentes where fecha_creacion is null

select fecha_creacion from incidentes where fecha_creacion = 'NULL';

select folio from incidentes;

select folio from incidentes where folio is null;

select hora_creacion from incidentes where hora_creacion is null;

select distinct hora_creacion from incidentes order by hora_creacion asc;

select dia_semana from incidentes where dia_semana is null;

select dia_semana from incidentes where dia_semana = 'NULL';

select distinct dia_semana from incidentes order by dia_semana asc;

select codigo_cierre from incidentes where codigo_cierre is null;

select codigo_cierre from incidentes;

select * from incidentes where codigo_cierre = '(D) El incidente reportado se registró en dos o más ocasiones procediendo a mantener un único reporte (afirmativo, informativo, negativo o falso) como el identificador para el incidente';

select * from incidentes where codigo_cierre ='(A) La unidad de atención a emergencias fue despachada, llegó al lugar de los hechos y confirmó la emergencia reportada' and latitud is null;

select distinct codigo_cierre from incidentes order by codigo_cierre asc;

select año_cierre from incidentes where año_cierre is null;

select distinct año_cierre from incidentes;
;
select mes_cierre from incidentes where mes_cierre is null;

select mes_cierre from incidentes;

select distinct mes_cierre from incidentes;

select hora_cierre from incidentes where hora_cierre is null;

select hora_cierre from incidentes;

select distinct hora_cierre from incidentes order by hora_cierre asc;

select delegacion_inicio from incidentes where delegacion_inicio in('NULL');

select * from incidentes where delegacion_inicio in('NULL');

delete from incidentes where delegacion_inicio in('NULL');

select delegacion_inicio from incidentes where delegacion_inicio is null;

select distinct delegacion_inicio from incidentes order by delegacion_inicio asc;

select incidente_c4 from incidentes where incidente_c4 is null;

select incidente_c4 from incidentes where incidente_c4 in('NULL');

select distinct incidente_c4 from incidentes order by incidente_c4 asc;

select distinct latitud from incidentes where latitud is null;

select distinct latitud from incidentes order by latitud asc;

select distinct clas_con_f_alarma from incidentes where clas_con_f_alarma is null;

select clas_con_f_alarma from incidentes where clas_con_f_alarma is null;

select clas_con_f_alarma from incidentes where clas_con_f_alarma = 'NULL';

select clas_con_f_alarma, count(clas_con_f_alarma) as cant from incidentes group by clas_con_f_alarma order by clas_con_f_alarma asc;

select dia_semana, delegacion_inicio, incidente_c4, clas_con_f_alarma, delegacion_cierre, mes from incidentes where clas_con_f_alarma = 'FALSA ALARMA';

select count(folio) as cantidadNulos from incidentes group by folio having folio is null;

select tipo_entrada, COUNT(tipo_entrada) from incidentes group by tipo_entrada;

select tipo_entrada from incidentes where tipo_entrada is null;

select tipo_entrada from incidentes where tipo_entrada = 'NULL';

select delegacion_cierre from incidentes where delegacion_cierre is null;

select delegacion_cierre from incidentes where delegacion_cierre = 'NULL';

select delegacion_cierre, count(delegacion_cierre) from incidentes group by delegacion_cierre;

select folio, geopoint from incidentes where geopoint = '19.30431996,-99.08714016';

select geopoint from incidentes where geopoint = 'NULL';

select geopoint, count(geopoint) as conteo from incidentes group by geopoint order by conteo desc;

select mes from incidentes where mes is null;

select distinct mes from incidentes order by mes desc;

SELECT longitud from incidentes;

SELECT longitud from incidentes where longitud is null;

SELECT distinct longitud from incidentes;

SELECT longitud, count(longitud) as conteo from incidentes group by longitud order by conteo desc;

select count(folio) as despuesDeLimpieza from incidentes;

drop database copyIncdentes;

select incidente_c4, count(incidente_c4) as cant from incidentes group by incidente_c4 order by cant asc;

select incidente_c4, count(incidente_c4) as cant from incidentes group by incidente_c4 order by cant desc;

select dia_semana, count(incidente_c4) as cant from incidentes group by dia_semana order by cant desc;

select mes, count(incidente_c4) as cant from incidentes group by mes order by cant desc;

select count(hora_creacion), count(incidente_c4) as cant from incidentes group by hora_creacion order by cant desc;

select delegacion_inicio, count(incidente_c4) as cant from incidentes group by delegacion_inicio order by cant desc;

select clas_con_f_alarma, count(incidente_c4) as cant from incidentes group by clas_con_f_alarma order by cant desc;

select tipo_entrada, count(incidente_c4) as  cant from incidentes group by tipo_entrada order by cant desc;

select codigo_cierre, count(incidente_c4) as cant from incidentes group by codigo_cierre order by cant desc;

select incidente_c4, count(incidente_c4) as cantHORA0 from incidentes group by incidente_c4 having incidente_c4 in(select incidente_c4 from incidentes where datepart([hour],hora_cierre) = 0) order by cantHORA0 desc;

select incidente_c4, count(incidente_c4) as cant from incidentes group by incidente_c4 order by cant desc;

select distinct delegacion_inicio from incidentes;

select count(delegacion_inicio) as cantInciFreqCUAJIMALPA from incidentes where incidente_c4 = 'accidente-choque sin lesionados' and delegacion_inicio = 'CUAJIMALPA';