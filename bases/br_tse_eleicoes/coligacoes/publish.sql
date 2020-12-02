/*

Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/
CREATE VIEW basedosdados.br_tse_eleicoes.coligacoes AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(tipo_eleicao AS STRING) tipo_eleicao,
SAFE_CAST(sigla_uf AS STRING) sigla_uf,
SAFE_CAST(id_municipio_tse AS INT64) id_municipio_tse,
SAFE_CAST(cargo AS STRING) cargo,
SAFE_CAST(turno AS INT64) turno,
SAFE_CAST(numero_partido AS INT64) numero_partido,
SAFE_CAST(sigla_partido AS STRING) sigla_partido,
SAFE_CAST(nome_partido AS STRING) nome_partido,
SAFE_CAST(tipo_agremiacao AS STRING) tipo_agremiacao,
SAFE_CAST(sequencial_coligacao AS INT64) sequencial_coligacao,
SAFE_CAST(coligacao AS STRING) coligacao
from basedosdados-staging.br_tse_eleicoes_staging.coligacoes as t