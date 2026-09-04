/* Frequência por status */

proc freq data=notas_validadas;
    tables status_validacao;
run;


/* Frequência por motivo da inconsistência */

proc freq data=notas_validadas;
    tables motivo_inconsistencia;
run;


/* Criação de KPIs com PROC SQL */

proc sql;

    select 
        count(*) as total_registros,

        sum(case 
                when status_validacao = "Inconsistente" 
                then 1 
                else 0 
            end) as total_inconsistentes,

        sum(case 
                when status_validacao = "Regular" 
                then 1 
                else 0 
            end) as total_regulares,

        calculated total_inconsistentes / calculated total_registros * 100
            as taxa_inconsistencia format=8.2

    from notas_validadas;

quit;
