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
| **Database Name**         | ${{ values.databaseName }}                                  |
| **Table Name**            | ${{ values.tableName }}                                     |
| **CDP Environment**       | ${{ values.cdpEnvironment }}                                |
| **CDW Virtual Warehouse** | ${{ values.cdwVirtualWarehouse }}                           |
| **Format**                | ${{ values.format }}                                        |
| **Location**              | ${{ values.location }}                                      |

## Data Consumption

This Output Port exposes data through Impala and can be accessed by users that have been granted read permissions using the update ACL feature of Witboost.

Data can be queried using either the Hue UI provided by CDP, or using the Virtual Warehouse JDBC URL with the user credentials. (TODO How does the user get this JDBC?)