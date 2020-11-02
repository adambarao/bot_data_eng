
CREATE TABLE bot_stage.sales (
	"ID_MARCA" int4 NULL,
	"MARCA" text NULL,
	"ID_LINHA" int4 NULL,
	"LINHA" text NULL,
	"DATA_VENDA" date NULL,
	"QTD_VENDA" int4 NULL
);

-- VIEW TABELA 1
CREATE OR REPLACE VIEW bot_stage.view_tabela1 AS
select
SUM("QTD_VENDA") as total_vendas,
extract(year from "DATA_VENDA") as ANO,
extract(month from "DATA_VENDA") as MES
from bot_stage.sales
group by ANO,MES
order by ANO,MES desc

-- VIEW TABELA 2
CREATE OR REPLACE VIEW bot_stage.view_tabela2 AS
select
SUM("QTD_VENDA") as total_vendas,
"MARCA",
"LINHA"
from bot_stage.sales
group by "MARCA","LINHA"
order by "MARCA","LINHA" desc

-- VIEW TABELA 3
CREATE OR REPLACE VIEW bot_stage.view_tabela3 AS
select
SUM("QTD_VENDA") as total_vendas,
"MARCA",
extract(year from "DATA_VENDA") as ANO,
extract(month from "DATA_VENDA") as MES
from bot_stage.sales
group by "MARCA",ANO,MES
order by "MARCA",ANO,MES desc

-- VIEW TABELA 4
CREATE OR REPLACE VIEW bot_stage.view_tabela4 AS
select
SUM("QTD_VENDA") as total_vendas,
"LINHA",
extract(year from "DATA_VENDA") as ANO,
extract(month from "DATA_VENDA") as MES
from bot_stage.sales
group by "LINHA",ANO,MES
order by "LINHA",ANO,MES desc