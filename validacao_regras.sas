data notas_validadas;
    set notas_fiscais;

    status_validacao = "Regular";

    if codigo_servico = "101" and descricao ne "Digitacao" then
        status_validacao = "Inconsistente";

    else if codigo_servico = "102" and descricao ne "Coordenacao" then
        status_validacao = "Inconsistente";

    else if codigo_servico = "103" and descricao ne "Consultoria" then
        status_validacao = "Inconsistente";

    else if codigo_servico = "104" and descricao ne "Secretaria" then
        status_validacao = "Inconsistente";

    else if valor <= 0 then
        status_validacao = "Inconsistente";
run;

proc print data=notas_validadas;
run;
