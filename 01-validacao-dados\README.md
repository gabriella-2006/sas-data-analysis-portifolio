# Projeto 01 — Validação e Análise de Inconsistências com SAS

## Objetivo

O projeto demonstra a utilização do **SAS** para validar registros, identificar inconsistências com base em regras de negócio e gerar indicadores de qualidade dos dados.

## Tecnologias e recursos utilizados

- SAS
- DATA Step
- IF / THEN
- DO / END
- PROC PRINT
- PROC FREQ
- PROC SQL
- CASE WHEN
- GROUP BY
- ORDER BY

## Etapas do projeto

### 1. Criação da base de dados

Foi criada uma base contendo informações como:

- Identificador do registro
- Fornecedor
- Código do serviço
- Descrição do serviço
- Valor

### 2. Aplicação de regras de negócio

Foram desenvolvidas regras para identificar situações como:

- Divergência entre código e descrição do serviço
- Valores inválidos
- Registros que necessitam de revisão

### 3. Classificação dos registros

Após a aplicação das regras de negócio, os registros foram classificados como:

- **Regular**
- **Inconsistente**

Também criamos uma variável contendo o motivo da inconsistência encontrada.

### 4. Geração de indicadores

A partir dos registros validados, foram gerados indicadores como:

- Total de registros analisados
- Total de registros regulares
- Total de registros inconsistentes
- Taxa de inconsistência
- Frequência por tipo de problema

### 5. Análise das inconsistências

Utilizando **PROC SQL**, `GROUP BY` e `ORDER BY`, os registros inconsistentes foram agrupados por motivo, permitindo identificar os problemas de maior recorrência.

## Aplicação prática

Esse tipo de análise pode ser aplicado em processos de:
- Qualidade de dados
- Conformidade
- Auditoria
- Validação documental
- Monitoramento de regras de negócio

## Estrutura do projeto

```text
01-validacao-dados/
│
├── README.md
├── dados_ficticios.sas
├── validacao_regras.sas
├── validacao_motivos.sas
├── indicadores_kpi.sas
└── resumo_inconsistencias.sas
