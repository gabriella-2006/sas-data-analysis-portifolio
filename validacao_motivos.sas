data notas_validadas;
    set notas_fiscais;

    length status_validacao $15;
    length motivo_inconsistencia $60;

    status_validacao = "Regular";
    motivo_inconsistencia = "Sem inconsistencias";

    if codigo_servico = "101" and descricao ne "Digitacao" then do;
        status_validacao = "Inconsistente";
        motivo_inconsistencia = "Codigo 101 divergente da descricao";
    end;

    else if codigo_servico = "102" and descricao ne "Coordenacao" then do;
        status_validacao = "Inconsistente";
        motivo_inconsistencia = "Codigo 102 divergente da descricao";
    end;

    else if codigo_servico = "103" and descricao ne "Consultoria" then do;
        status_validacao = "Inconsistente";
        motivo_inconsistencia = "Codigo 103 divergente da descricao";
    end;

    else if codigo_servico = "104" and descricao ne "Secretaria" then do;
        status_validacao = "Inconsistente";
        motivo_inconsistencia = "Codigo 104 divergente da descricao";
    end;

    else if valor <= 0 then do;
        status_validacao = "Inconsistente";
        motivo_inconsistencia = "Valor invalido";
    end;
run;

proc print data=notas_validadas;
run;
