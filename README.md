# Ruby Kafka example 🦦

1. Run `docker compose up -d`. This will start up Kafka and Zookeeper in detached mode. This will also create a topic called `test-topic` for you.
1. Run `docker ps` and verify your Kafka service is up and running (you should see something named `kafka-ruby-poc` or similar).
1. Produce some messages with `ruby producer.rb`
1. Run the consumer with `ruby consumer.rb`. All the consumer does right now is stdout the messages to the console, so you will just see the messages appear.

That's it! 🎉
