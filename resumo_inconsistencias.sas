proc sql;

    select
        motivo_inconsistencia,
        count(*) as quantidade

    from notas_validadas

    where status_validacao = "Inconsistente"

    group by motivo_inconsistencia

    order by quantidade desc;

quit;
