# frozen_string_literal: true

require "kafka"

TOPIC_NAME = "test-topic"

kafka = Kafka.new(["localhost:9092"], client_id: "test-producer")
producer = kafka.producer
producer.produce("Hellooooo, Kafka!", topic: TOPIC_NAME)
producer.produce("Goodbye!", topic: TOPIC_NAME)
producer.deliver_messages
