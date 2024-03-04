name: string
fullyQualifiedName?: null | string
description: string
kind: "outputport"
version: string & =~"^[0-9]+\\.[0-9]+\\..+$"
infrastructureTemplateId: string
useCaseTemplateId: string
dependsOn: [...string]
platform: "CDP on AWS"
technology: "Impala"
outputPortType: "SQL"
tags: [...string]
readsFrom: [...string]
specific: {
	databaseName: string
	tableName: string
  cdpEnvironment: string
  cdwVirtualWarehouse: string
  format: "CSV" | "PARQUET" | "TEXTFILE" | "AVRO"
  location: string & =~ "^s3a://"
	partitions: [...string]
	tableParams?: {
		delimiter?: null | string
		header?: null | bool
		tblProperties: {
			[string]: string
		}
	}
}