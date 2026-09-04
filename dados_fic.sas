data notas_fiscais;

    input id_nf fornecedor $ codigo_servico $ descricao $ valor status $;

    datalines;
1 EmpresaA 101 Digitacao 1500 Regular
2 EmpresaB 102 Coordenacao 2500 Regular
3 EmpresaC 101 Coordenacao 1800 Revisar
4 EmpresaD 103 Consultoria 3200 Regular
5 EmpresaE 101 Digitacao 0 Revisar
6 EmpresaF 104 Secretaria 2100 Regular
7 EmpresaG 102 Coordenacao 2700 Regular
8 EmpresaH 101 Digitacao 1600 Regular
9 EmpresaI 103 Consultoria 0 Revisar
10 EmpresaJ 104 Digitacao 1900 Revisar;

run;

proc print data=notas_fiscais;
run;
