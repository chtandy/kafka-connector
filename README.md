### 參考來源
- [Kafka Connect Concepts](https://docs.confluent.io/platform/current/connect/concepts.html#using-a-dead-letter-queue-with-security)   
- [apache-kafka-connect-docker](https://github.com/OneCricketeer/apache-kafka-connect-docker/blob/master/docker-compose.yml)   


### key and value 選項
```
AvroConverter io.confluent.connect.avro.AvroConverter: use with Schema Registry
ProtobufConverter io.confluent.connect.protobuf.ProtobufConverter: use with Schema Registry
JsonSchemaConverter io.confluent.connect.json.JsonSchemaConverter: use with Schema Registry
JsonConverter org.apache.kafka.connect.json.JsonConverter (without Schema Registry): use with structured data
StringConverter org.apache.kafka.connect.storage.StringConverter: simple string format
ByteArrayConverter org.apache.kafka.connect.converters.ByteArrayConverter: provides a “pass-through” option that does no conversion
```


### api
- connector-plugins
  - `{connector}:8083/connector-plugins`




### oracle
- [Oracle CDC Source Connector Configuration Properties](https://docs.confluent.io/kafka-connectors/oracle-cdc/current/configuration-properties.html#cp-license)    
