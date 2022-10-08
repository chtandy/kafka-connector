FROM confluentinc/cp-kafka-connect-base:7.2.2

## 若要啟用key value converter, 取消CONNECT_KEY_CONVERTER 與CONNECT_VALUE_CONVERTER變數設定
## 在docker-compose 的env另外設定適合的值
ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components" \
    CONNECT_KEY_CONVERTER="org.apache.kafka.connect.converters.ByteArrayConverter" \
    CONNECT_VALUE_CONVERTER="org.apache.kafka.connect.converters.ByteArrayConverter"  

## 安裝data source and data sink
RUN echo  'Install confluent-hub connec plugins' \
  && confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:14.0.1 \
  && confluent-hub install --no-prompt confluentinc/kafka-connect-oracle-cdc:2.2.0 \
  && confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.9.3 \
  && confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:2.0.2
