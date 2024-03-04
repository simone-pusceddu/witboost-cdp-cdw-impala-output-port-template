# ${{ values.name }}

This repository contains the AWS CDP Impala Ouput Port ${{ values.name }} definition version ${{ values.version }}.

${{ values.description }}

## Component Information

| Field name                | Example value                    |
|:--------------------------|:---------------------------------|
| **Name**                  | ${{ values.name }}               |
| **Fully Qualified Name**  | ${{ values.fullyQualifiedName }} |
| **Description**           | ${{ values.description }}        |
| **Domain**                | ${{ values.domain }}             |
| **Data Product**          | ${{ values.dataproduct }}        |
| ***Identifier***          | ${{ values.identifier }}         |
| ***Development Group***   | ${{ values.developmentGroup }}   |


## Impala Output Port details

| Field name                | Example value                                               |
|:--------------------------|:------------------------------------------------------------|
| **Database Name** | ${{ values.databaseName | default(values.dataproduct, true) | replace(r/system:/, "") | replace(r/[^A-Za-z0-9_]/g, "_") | upper }}                                  |
| **Table Name**            | ${{ values.tableName | default(values.identifier, true) | replace(r/[^A-Za-z0-9_]/g, "_") | upper }} |
| **Location**              | ${{ values.location }}                                      |
| **CDP Environment**       | ${{ values.cdpEnvironment }}                                |
| **CDW Virtual Warehouse** | ${{ values.cdwVirtualWarehouse }}                           |
| **Format**                | ${{ values.format }}                                        |
{%- if values.header or values.delimiter or ( values.tableProperties | length > 0 ) %}
{%- if values.header and (values.format === "CSV" or values.format == "TEXTFILE") %}
| **Header**                | ${{ values.header }}                                        | 
{%- endif %}
{%- if values.delimiter and (values.format === "CSV" or values.format == "TEXTFILE") %} 
| **Delimiter**             | "${{ values.delimiter if values.delimiter != "OTHER" else values.customDelimiter }}" |
{%- endif %}
| **tblProperties**         | {% if values.tableProperties | length > 0 %} ${{ values.tableProperties | dump }}{%- else %}{}{%- endif %} |
{%- endif %}

## Data Consumption

This Output Port exposes data through Impala and can be accessed by users that have been granted read permissions using the update ACL feature of Witboost.

Data can be queried using either the Hue UI provided by CDP, or using the Virtual Warehouse JDBC URL with the user credentials.