CREATE EXTERNAL TABLE `bot_stagesource`(
  `id_marca` bigint, 
  `marca` string, 
  `id_linha` bigint, 
  `linha` string, 
  `data_venda` string, 
  `qtd_venda` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\;' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://boti/source/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='data_crawler', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='38', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'='\;', 
  'objectCount'='3', 
  'recordCount'='3021', 
  'sizeKey'='115726', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')