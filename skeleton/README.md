# ${{ values.name | dump }}

- [Overview](#overview)
- [Usage](#usage)

## Overview

Use this component to automatically create an Output Port based on Impala on the CDP-AWS infrastructure, including the owner and user roles information.

### What's an Output Port?

An Output Port refers to the interface that a Data Product uses to provide data to other components or systems within the organization. The methods of data sharing can range from APIs to file exports and database links.

### CDP Impala

Cloudera Data Platform (CDP) is a platform that offers a management layer to handle several cloud engines and services under a single platform. Among their offered services they provide Cloudera Data Warehouse (CDW) for creating independent, self-service data warehouses and data marts that autoscale up and down to meet varying workload demands, supporting Hive or Impala virtual warehouses (VW). To know more about CDP Public Data Warehouse (CDW) check the [official documentation](https://docs.cloudera.com/data-warehouse/cloud/index.html).

#### Impala

Apache Impala is a distributed SQL query engine providing low latency and high concurrency for Business Intelligence or analytic queries on Apache Hadoop, albeit circumventing Hadoop's MapReduce and implementing directly accessing the data through a specialized distributed query engine that is very similar to those found in commercial parallel RDBMSs. 

Impala supports several connectors to access and query data, including JDBC and ODBC, HiveQL. It also supports storages like HDFS, HBase and Amazon S3 including different file formats. To know more about Impala check the [official documentation](https://impala.apache.org/docs/build/asf-site-html/topics/impala_intro.html).

#### AWS S3

Amazon Web Services Simple Storage System (S3) is an object storage service offering scalability, data availability, security, and performance. It stores data as objects within resources called “buckets”. Objects can be accessed through S3 Access Points or directly through the bucket hostname. To learn more about S3 check the [official documentation](https://aws.amazon.com/s3/).

Impala supports connectors to S3 by the `s3a://` connector. This way, it can access data (e.g. Apache Parquet files) stored in S3 buckets and perform its queries directly on it.

## Usage

To get information about this component and how to use it, refer to this [document](./docs/index.md).
