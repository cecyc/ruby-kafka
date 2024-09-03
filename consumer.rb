require "kafka"

TOPIC_NAME = "test-topic"

kafka = Kafka.new(["localhost:9092"], client_id: "test-consumer")
consumer = kafka.consumer(group_id: "test-group")
consumer.subscribe(TOPIC_NAME)

puts "Starting to consume messages..."

consumer.each_message do |message|
  puts "Consumed message: #{message.value}"
end
