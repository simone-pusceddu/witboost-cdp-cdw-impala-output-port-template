name:                     string
fullyQualifiedName?:      null | string
description:              string
kind:                     "outputport"
version:                  string & =~"^[0-9]+\\.[0-9]+\\..+$"
infrastructureTemplateId: string
useCaseTemplateId:        string
dependsOn: [...string]
platform:             "CDP on AWS"
technology:           "Impala"
outputPortType:       "SQL"
dataContract:         #DataContract
dataSharingAgreement: #DataSharingAgreement
tags: [...#OM_Tag]
readsFrom: [...string]
specific: {
	databaseName:        string
	tableName:           string
	cdpEnvironment:      string
	cdwVirtualWarehouse: string
	format:              "CSV" | "PARQUET" | "TEXTFILE" | "AVRO"
	location:            string & =~"^s3a://"
	partitions: [...string]
	tableParams?: {
		delimiter?: null | string
		header?:    null | bool
		tblProperties: {
			[string]: string
		}
	}
}

#OM_DataType: string & =~"(?i)^(TINYINT|SMALLINT|INT|BIGINT|DOUBLE|DECIMAL|TIMESTAMP|DATE|STRING|CHAR|VARCHAR|BOOLEAN|ARRAY|MAP|STRUCT|UNION)$"
#URL:         string & =~"^https?://[a-zA-Z0-9@:%._~#=&/?]*$"
#OM_Tag: {
	tagFQN:       string
	description?: string | null
	source:       string & =~"(?i)^(Tag|Glossary)$"
	labelType:    string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state:        string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
}

#OM_Column: {
	name:     string
	dataType: #OM_DataType
	if dataType =~ "(?i)^(ARRAY)$" {
		arrayDataType: #OM_DataType
	}
	if dataType =~ "(?i)^(CHAR|VARCHAR|BINARY|VARBINARY)$" {
		dataLength: number
	}
	dataTypeDisplay?:    string | null
	description?:        string | null
	fullyQualifiedName?: string | null
	tags?: [... #OM_Tag]
	if dataType =~ "(?i)^(MAP|STRUCT|UNION)$" {
		children: [... #OM_Column]
	}
}

#DataContract: {
	schema: [#OM_Column, ... #OM_Column]
	SLA: {
		intervalOfChange?: string | null
		timeliness?:       string | null
		upTime?:           string | null
		...
	}
	termsAndConditions?: string | null
	endpoint?:           #URL | null
	biTempBusinessTs?:   string | null
	biTempWriteTs?:      string | null
	...
}

#DataSharingAgreement: {
	purpose?:         string | null
	billing?:         string | null
	security?:        string | null
	intendedUsage?:   string | null
	limitations?:     string | null
	lifeCycle?:       string | null
	confidentiality?: string | null
	...
}
