// ACAO
CREATE CONSTRAINT ON (node:ACAO) ASSERT node.id_acao IS UNIQUE;
CREATE INDEX ON :ACAO(ano_exercicio);
CREATE INDEX ON :ACAO(cd_acao);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmacao2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:ACAO {id_acao:line.ID_ACAO})
SET
node.id_acao = line.ID_ACAO,
node.ano_exercicio = line.ANO_EXERCICIO,
node.cd_acao = line.CD_ACAO,
node.nome = line.NOME;

// CATEG_ECON
CREATE CONSTRAINT ON (node:CATEG_ECON) ASSERT node.id_categ_econ IS UNIQUE;
CREATE INDEX ON :CATEG_ECON(cd_categ_econ);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmcategecon2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:CATEG_ECON {id_categ_econ:line.ID_CATEG_ECON})
SET
node.id_categ_econ = line.ID_CATEG_ECON,
node.cd_categ_econ = line.CD_CATEG_ECON,
node.nome = line.NOME;

// ELEMENTO
CREATE CONSTRAINT ON (node:ELEMENTO) ASSERT node.id_elemento IS UNIQUE;
CREATE INDEX ON :ELEMENTO(cd_elemento);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmelementodesp2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:ELEMENTO {id_elemento:line.ID_ELEMENTO})
SET
node.id_elemento = line.ID_ELEMENTO,
node.cd_elemento = line.CD_ELEMENTO,
node.nome = line.NOME;



// FAVORECIDO
CREATE CONSTRAINT ON (node:FAVORECIDO) ASSERT node.id_favorecido IS UNIQUE;
CREATE INDEX ON :FAVORECIDO(nr_documento);
CREATE INDEX ON :FAVORECIDO(tp_documento);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmfavorecido2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:FAVORECIDO {id_favorecido:line.ID_FAVORECIDO})
SET
node.id_favorecido = line.ID_FAVORECIDO,
node.nr_documento = line.NR_DOCUMENTO,
node.tp_documento = line.TP_DOCUMENTO,
node.nome = line.NOME;

// FONTE
CREATE CONSTRAINT ON (node:FONTE) ASSERT node.id_fonte IS UNIQUE;
CREATE INDEX ON :FONTE(cd_fonte);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmfonte2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:FONTE {id_fonte:line.ID_FONTE})
SET
node.id_fonte = line.ID_FONTE,
node.cd_fonte = line.CD_FONTE,
node.nome = line.NOME;

// FUNCAO
CREATE CONSTRAINT ON (node:FUNCAO) ASSERT node.id_funcao IS UNIQUE;
CREATE INDEX ON :FUNCAO(ano_exercicio);
CREATE INDEX ON :FUNCAO(cd_funcao);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmfuncaodesp2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:FUNCAO {id_funcao:line.ID_FUNCAO})
SET
node.id_funcao = line.ID_FUNCAO,
node.ano_exercicio = line.ANO_EXERCICIO,
node.cd_funcao = line.CD_FUNCAO,
node.nome = line.NOME;

// GRUPO
CREATE CONSTRAINT ON (node:GRUPO) ASSERT node.id_grupo IS UNIQUE;
CREATE INDEX ON :GRUPO(cd_grupo);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmgrupodesp2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:GRUPO {id_grupo:line.ID_GRUPO})
SET
node.id_grupo = line.ID_GRUPO,
node.cd_grupo = line.CD_GRUPO,
node.nome = line.NOME;

// ITEM
CREATE CONSTRAINT ON (node:ITEM) ASSERT node.id_item IS UNIQUE;
CREATE INDEX ON :ITEM(cd_item);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmitemdesp2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:ITEM {id_item:line.ID_ITEM})
SET
node.id_item = line.ID_ITEM,
node.cd_item = line.CD_ITEM,
node.nome = line.NOME;

// SUBFUNCAO
CREATE CONSTRAINT ON (node:SUBFUNCAO) ASSERT node.id_subfuncao IS UNIQUE;
CREATE INDEX ON :SUBFUNCAO(ano_exercicio);
CREATE INDEX ON :SUBFUNCAO(cd_subfuncao);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmsubfuncaodesp2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:SUBFUNCAO {id_subfuncao:line.ID_SUBFUNCAO})
SET
node.id_subfuncao = line.ID_SUBFUNCAO,
node.ano_exercicio = line.ANO_EXERCICIO,
node.cd_subfuncao = line.CD_SUBFUNCAO,
node.nome = line.NOME;

// TEMPO_ANO
CREATE CONSTRAINT ON (node:TEMPO_ANO) ASSERT node.id_tempo IS UNIQUE;

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmtempoanual2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:TEMPO_ANO {id_tempo:line.ID_TEMPO})
SET
node.id_tempo = line.ID_TEMPO,
node.ano = line.ANO;

// TEMPO_DIA
CREATE CONSTRAINT ON (node:TEMPO_DIA) ASSERT node.id_tempo IS UNIQUE;
CREATE INDEX ON :TEMPO_DIA(data_iso);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmtempodiario2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:TEMPO_DIA {id_tempo:line.ID_TEMPO})
SET
node.id_tempo = line.ID_TEMPO,
node.data_iso = line.DATA_ISO,
node.dia = line.DIA,
node.mes = line.MES,
node.ano = line.ANO,
node.data_formatada = line.DATA_FORMATADA;

// TEMPO_MES_ANO
CREATE CONSTRAINT ON (node:TEMPO_MES_ANO) ASSERT node.id_tempo IS UNIQUE;
CREATE INDEX ON :TEMPO_MES_ANO(anomes_iso);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmtempomensal2016.csv' AS line
FIELDTERMINATOR ';'
MERGE (node:TEMPO_MES_ANO {id_tempo:line.ID_TEMPO})
SET
node.id_tempo = line.ID_TEMPO,
node.anomes_iso = line.ANOMES_ISO,
node.mes = line.MES,
node.ano = line.ANO,
node.anomes_formatado = line.ANOMES_FORMATADO;

// DESPESA
CREATE CONSTRAINT ON (node:DESPESA) ASSERT node.line_number IS UNIQUE;
CREATE INDEX ON :DESPESA(cdevento);
CREATE INDEX ON :DESPESA(cd_documento);
CREATE INDEX ON :DESPESA(ano_particao);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 0
LIMIT 500000
MERGE (node:DESPESA {line_number:line.line_number})
SET
node.line_number = line.line_number,
// node.id_tempo = line.ID_TEMPO,
// node.id_categ_econ = line.ID_CATEG_ECON,
// node.id_grupo = line.ID_GRUPO,
// node.id_elemento = line.ID_ELEMENTO,
// node.id_item = line.ID_ITEM,
// node.id_fonte = line.ID_FONTE,
// node.id_modalidade_aplic = line.ID_MODALIDADE_APLIC,
// node.id_funcao = line.ID_FUNCAO,
// node.id_subfuncao = line.ID_SUBFUNCAO,
// node.id_programa = line.ID_PROGRAMA,
// node.id_acao = line.ID_ACAO,
// node.id_procedencia = line.ID_PROCEDENCIA,
// node.id_unidade_orc = line.ID_UNIDADE_ORC,
// node.id_favorecido = line.ID_FAVORECIDO,
// node.id_empenho = line.ID_EMPENHO,
// node.id_tipo_documento = line.ID_TIPO_DOCUMENTO,
node.sqa_empenho = line.SQA_EMPENHO,
node.sqa_liquidacao = line.SQA_LIQUIDACAO,
node.sqa_pagamento = line.SQA_PAGAMENTO,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.cdevento = line.CDEVENTO,
node.tpoperacao = line.TPOPERACAO,
node.cd_documento = line.CD_DOCUMENTO,
node.ano_particao = line.ANO_PARTICAO,
node.vr_empenhado = toFloat(line.VR_EMPENHADO),
node.vr_liquidado = toFloat(line.VR_LIQUIDADO),
node.vr_pago = toFloat(line.VR_PAGO);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 500000
LIMIT 500000
MERGE (node:DESPESA {line_number:line.line_number})
SET
node.line_number = line.line_number,
// node.id_tempo = line.ID_TEMPO,
// node.id_categ_econ = line.ID_CATEG_ECON,
// node.id_grupo = line.ID_GRUPO,
// node.id_elemento = line.ID_ELEMENTO,
// node.id_item = line.ID_ITEM,
// node.id_fonte = line.ID_FONTE,
// node.id_modalidade_aplic = line.ID_MODALIDADE_APLIC,
// node.id_funcao = line.ID_FUNCAO,
// node.id_subfuncao = line.ID_SUBFUNCAO,
// node.id_programa = line.ID_PROGRAMA,
// node.id_acao = line.ID_ACAO,
// node.id_procedencia = line.ID_PROCEDENCIA,
// node.id_unidade_orc = line.ID_UNIDADE_ORC,
// node.id_favorecido = line.ID_FAVORECIDO,
// node.id_empenho = line.ID_EMPENHO,
// node.id_tipo_documento = line.ID_TIPO_DOCUMENTO,
node.sqa_empenho = line.SQA_EMPENHO,
node.sqa_liquidacao = line.SQA_LIQUIDACAO,
node.sqa_pagamento = line.SQA_PAGAMENTO,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.cdevento = line.CDEVENTO,
node.tpoperacao = line.TPOPERACAO,
node.cd_documento = line.CD_DOCUMENTO,
node.ano_particao = line.ANO_PARTICAO,
node.vr_empenhado = toFloat(line.VR_EMPENHADO),
node.vr_liquidado = toFloat(line.VR_LIQUIDADO),
node.vr_pago = toFloat(line.VR_PAGO);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 1000000
LIMIT 500000
MERGE (node:DESPESA {line_number:line.line_number})
SET
node.line_number = line.line_number,
// node.id_tempo = line.ID_TEMPO,
// node.id_categ_econ = line.ID_CATEG_ECON,
// node.id_grupo = line.ID_GRUPO,
// node.id_elemento = line.ID_ELEMENTO,
// node.id_item = line.ID_ITEM,
// node.id_fonte = line.ID_FONTE,
// node.id_modalidade_aplic = line.ID_MODALIDADE_APLIC,
// node.id_funcao = line.ID_FUNCAO,
// node.id_subfuncao = line.ID_SUBFUNCAO,
// node.id_programa = line.ID_PROGRAMA,
// node.id_acao = line.ID_ACAO,
// node.id_procedencia = line.ID_PROCEDENCIA,
// node.id_unidade_orc = line.ID_UNIDADE_ORC,
// node.id_favorecido = line.ID_FAVORECIDO,
// node.id_empenho = line.ID_EMPENHO,
// node.id_tipo_documento = line.ID_TIPO_DOCUMENTO,
node.sqa_empenho = line.SQA_EMPENHO,
node.sqa_liquidacao = line.SQA_LIQUIDACAO,
node.sqa_pagamento = line.SQA_PAGAMENTO,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.cdevento = line.CDEVENTO,
node.tpoperacao = line.TPOPERACAO,
node.cd_documento = line.CD_DOCUMENTO,
node.ano_particao = line.ANO_PARTICAO,
node.vr_empenhado = toFloat(line.VR_EMPENHADO),
node.vr_liquidado = toFloat(line.VR_LIQUIDADO),
node.vr_pago = toFloat(line.VR_PAGO);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 1500000
LIMIT 500000
MERGE (node:DESPESA {line_number:line.line_number})
SET
node.line_number = line.line_number,
// node.id_tempo = line.ID_TEMPO,
// node.id_categ_econ = line.ID_CATEG_ECON,
// node.id_grupo = line.ID_GRUPO,
// node.id_elemento = line.ID_ELEMENTO,
// node.id_item = line.ID_ITEM,
// node.id_fonte = line.ID_FONTE,
// node.id_modalidade_aplic = line.ID_MODALIDADE_APLIC,
// node.id_funcao = line.ID_FUNCAO,
// node.id_subfuncao = line.ID_SUBFUNCAO,
// node.id_programa = line.ID_PROGRAMA,
// node.id_acao = line.ID_ACAO,
// node.id_procedencia = line.ID_PROCEDENCIA,
// node.id_unidade_orc = line.ID_UNIDADE_ORC,
// node.id_favorecido = line.ID_FAVORECIDO,
// node.id_empenho = line.ID_EMPENHO,
// node.id_tipo_documento = line.ID_TIPO_DOCUMENTO,
node.sqa_empenho = line.SQA_EMPENHO,
node.sqa_liquidacao = line.SQA_LIQUIDACAO,
node.sqa_pagamento = line.SQA_PAGAMENTO,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.cdevento = line.CDEVENTO,
node.tpoperacao = line.TPOPERACAO,
node.cd_documento = line.CD_DOCUMENTO,
node.ano_particao = line.ANO_PARTICAO,
node.vr_empenhado = toFloat(line.VR_EMPENHADO),
node.vr_liquidado = toFloat(line.VR_LIQUIDADO),
node.vr_pago = toFloat(line.VR_PAGO);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 2000000
//LIMIT 500000
MERGE (node:DESPESA {line_number:line.line_number})
SET
node.line_number = line.line_number,
// node.id_tempo = line.ID_TEMPO,
// node.id_categ_econ = line.ID_CATEG_ECON,
// node.id_grupo = line.ID_GRUPO,
// node.id_elemento = line.ID_ELEMENTO,
// node.id_item = line.ID_ITEM,
// node.id_fonte = line.ID_FONTE,
// node.id_modalidade_aplic = line.ID_MODALIDADE_APLIC,
// node.id_funcao = line.ID_FUNCAO,
// node.id_subfuncao = line.ID_SUBFUNCAO,
// node.id_programa = line.ID_PROGRAMA,
// node.id_acao = line.ID_ACAO,
// node.id_procedencia = line.ID_PROCEDENCIA,
// node.id_unidade_orc = line.ID_UNIDADE_ORC,
// node.id_favorecido = line.ID_FAVORECIDO,
// node.id_empenho = line.ID_EMPENHO,
// node.id_tipo_documento = line.ID_TIPO_DOCUMENTO,
node.sqa_empenho = line.SQA_EMPENHO,
node.sqa_liquidacao = line.SQA_LIQUIDACAO,
node.sqa_pagamento = line.SQA_PAGAMENTO,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.cdevento = line.CDEVENTO,
node.tpoperacao = line.TPOPERACAO,
node.cd_documento = line.CD_DOCUMENTO,
node.ano_particao = line.ANO_PARTICAO,
node.vr_empenhado = toFloat(line.VR_EMPENHADO),
node.vr_liquidado = toFloat(line.VR_LIQUIDADO),
node.vr_pago = toFloat(line.VR_PAGO);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:CATEG_ECON {id_categ_econ:line.ID_CATEG_ECON})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:GRUPO {id_grupo:line.ID_GRUPO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:ELEMENTO {id_elemento:line.ID_ELEMENTO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:ITEM {id_item:line.ID_ITEM})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:FONTE {id_fonte:line.ID_FONTE})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:MODALIDADE_APLIC {id_modalidade_aplic:line.ID_MODALIDADE_APLIC})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:FUNCAO {id_funcao:line.ID_FUNCAO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:SUBFUNCAO {id_subfuncao:line.ID_SUBFUNCAO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:PROGRAMA {id_programa:line.ID_PROGRAMA})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:ACAO {id_acao:line.ID_ACAO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:PROCEDENCIA {id_procedencia:line.ID_PROCEDENCIA})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:UNIDADE_ORC {id_unidade_orc:line.ID_UNIDADE_ORC})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:FAVORECIDO {id_favorecido:line.ID_FAVORECIDO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:EMPENHO {id_empenho:line.ID_EMPENHO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/ftdespesa2016_l.csv' AS line
FIELDTERMINATOR ';'
WITH line
MERGE (node:TIPO_DOCUMENTO {id_tipo_documento:line.ID_TIPO_DOCUMENTO})
WITH line, node
MATCH (despesa:DESPESA {line_number:line.line_number})
MERGE (despesa)-[:HAS_DIM]->(node)
RETURN COUNT(*);

// EMPENHO
CREATE CONSTRAINT ON (node:EMPENHO) ASSERT node.id_empenho IS UNIQUE;
CREATE INDEX ON :EMPENHO(ano_exercicio);

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmempenhodesp2016.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 0
LIMIT 250000
MERGE (node:EMPENHO {id_empenho:line.ID_EMPENHO})
SET
node.id_empenho = line.ID_EMPENHO,
node.ano_exercicio = line.ANO_EXERCICIO,
node.sqa_gmifp = line.SQA_GMIFP,
node.sqa_credor = line.SQA_CREDOR,
node.sqa_natureza = line.SQA_NATUREZA,
node.sqa_unidade_orc = line.SQA_UNIDADE_ORC,
node.sqa_progtrab = line.SQA_PROGTRAB,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.sqa_empenho = line.SQA_EMPENHO;
// node.nr_empenho = line.NR_EMPENHO,
// node.dt_empenho = line.DT_EMPENHO,
// node.unidade_orcamentaria = line.UNIDADE_ORCAMENTARIA,
// node.unidade_executora = line.UNIDADE_EXECUTORA,
// node.funcao = line.FUNCAO,
// node.subfuncao = line.SUBFUNCAO,
// node.programa = line.PROGRAMA,
// node.acao = line.ACAO,
// node.categoria_econ = line.CATEGORIA_ECON,
// node.grupo_desp = line.GRUPO_DESP,
// node.elemento_desp = line.ELEMENTO_DESP,
// node.item_desp = line.ITEM_DESP,
// node.modalidade_aplic = line.MODALIDADE_APLIC,
// node.tipo_empenho = line.TIPO_EMPENHO,
// node.fonte_recurso = line.FONTE_RECURSO,
// node.identificador_orc = line.IDENTIFICADOR_ORC,
// node.razao_social_credor = line.RAZAO_SOCIAL_CREDOR,
// node.vr_empenho = line.VR_EMPENHO,
// node.desc_historico = line.DESC_HISTORICO;

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmempenhodesp2016.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 250000
//LIMIT 250000
MERGE (node:EMPENHO {id_empenho:line.ID_EMPENHO})
SET
node.id_empenho = line.ID_EMPENHO,
node.ano_exercicio = line.ANO_EXERCICIO,
node.sqa_gmifp = line.SQA_GMIFP,
node.sqa_credor = line.SQA_CREDOR,
node.sqa_natureza = line.SQA_NATUREZA,
node.sqa_unidade_orc = line.SQA_UNIDADE_ORC,
node.sqa_progtrab = line.SQA_PROGTRAB,
node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
node.sqa_empenho = line.SQA_EMPENHO;
// node.nr_empenho = line.NR_EMPENHO,
// node.dt_empenho = line.DT_EMPENHO,
// node.unidade_orcamentaria = line.UNIDADE_ORCAMENTARIA,
// node.unidade_executora = line.UNIDADE_EXECUTORA,
// node.funcao = line.FUNCAO,
// node.subfuncao = line.SUBFUNCAO,
// node.programa = line.PROGRAMA,
// node.acao = line.ACAO,
// node.categoria_econ = line.CATEGORIA_ECON,
// node.grupo_desp = line.GRUPO_DESP,
// node.elemento_desp = line.ELEMENTO_DESP,
// node.item_desp = line.ITEM_DESP,
// node.modalidade_aplic = line.MODALIDADE_APLIC,
// node.tipo_empenho = line.TIPO_EMPENHO,
// node.fonte_recurso = line.FONTE_RECURSO,
// node.identificador_orc = line.IDENTIFICADOR_ORC,
// node.razao_social_credor = line.RAZAO_SOCIAL_CREDOR,
// node.vr_empenho = line.VR_EMPENHO,
// node.desc_historico = line.DESC_HISTORICO;

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmempenhodesp2016.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 0
LIMIT 250000
MERGE (node:EMPENHO {id_empenho:line.ID_EMPENHO})
SET
// node.id_empenho = line.ID_EMPENHO,
// node.ano_exercicio = line.ANO_EXERCICIO,
// node.sqa_gmifp = line.SQA_GMIFP,
// node.sqa_credor = line.SQA_CREDOR,
// node.sqa_natureza = line.SQA_NATUREZA,
// node.sqa_unidade_orc = line.SQA_UNIDADE_ORC,
// node.sqa_progtrab = line.SQA_PROGTRAB,
// node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
// node.sqa_empenho = line.SQA_EMPENHO;
node.nr_empenho = line.NR_EMPENHO,
node.dt_empenho = line.DT_EMPENHO,
node.unidade_orcamentaria = line.UNIDADE_ORCAMENTARIA,
node.unidade_executora = line.UNIDADE_EXECUTORA,
node.funcao = line.FUNCAO,
node.subfuncao = line.SUBFUNCAO,
node.programa = line.PROGRAMA,
node.acao = line.ACAO,
node.categoria_econ = line.CATEGORIA_ECON,
node.grupo_desp = line.GRUPO_DESP,
node.elemento_desp = line.ELEMENTO_DESP,
node.item_desp = line.ITEM_DESP,
node.modalidade_aplic = line.MODALIDADE_APLIC,
node.tipo_empenho = line.TIPO_EMPENHO,
node.fonte_recurso = line.FONTE_RECURSO,
node.identificador_orc = line.IDENTIFICADOR_ORC,
node.razao_social_credor = line.RAZAO_SOCIAL_CREDOR,
node.vr_empenho = line.VR_EMPENHO,
node.desc_historico = line.DESC_HISTORICO;

USING PERIODIC COMMIT 10000
LOAD CSV WITH HEADERS FROM 'file:///d:/Desenvolvimento/projetos/falai/datasets/dmempenhodesp2016.csv' AS line
FIELDTERMINATOR ';'
WITH line
SKIP 250000
//LIMIT 250000
MERGE (node:EMPENHO {id_empenho:line.ID_EMPENHO})
SET
// node.id_empenho = line.ID_EMPENHO,
// node.ano_exercicio = line.ANO_EXERCICIO,
// node.sqa_gmifp = line.SQA_GMIFP,
// node.sqa_credor = line.SQA_CREDOR,
// node.sqa_natureza = line.SQA_NATUREZA,
// node.sqa_unidade_orc = line.SQA_UNIDADE_ORC,
// node.sqa_progtrab = line.SQA_PROGTRAB,
// node.sqa_unidade_exec = line.SQA_UNIDADE_EXEC,
// node.sqa_empenho = line.SQA_EMPENHO;
node.nr_empenho = line.NR_EMPENHO,
node.dt_empenho = line.DT_EMPENHO,
node.unidade_orcamentaria = line.UNIDADE_ORCAMENTARIA,
node.unidade_executora = line.UNIDADE_EXECUTORA,
node.funcao = line.FUNCAO,
node.subfuncao = line.SUBFUNCAO,
node.programa = line.PROGRAMA,
node.acao = line.ACAO,
node.categoria_econ = line.CATEGORIA_ECON,
node.grupo_desp = line.GRUPO_DESP,
node.elemento_desp = line.ELEMENTO_DESP,
node.item_desp = line.ITEM_DESP,
node.modalidade_aplic = line.MODALIDADE_APLIC,
node.tipo_empenho = line.TIPO_EMPENHO,
node.fonte_recurso = line.FONTE_RECURSO,
node.identificador_orc = line.IDENTIFICADOR_ORC,
node.razao_social_credor = line.RAZAO_SOCIAL_CREDOR,
node.vr_empenho = line.VR_EMPENHO,
node.desc_historico = line.DESC_HISTORICO;
