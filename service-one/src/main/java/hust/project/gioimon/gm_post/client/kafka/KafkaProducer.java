package hust.project.gioimon.gm_post.client.kafka;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.stream.function.StreamBridge;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Component;

@Component
public class KafkaProducer {
    @Autowired
    private StreamBridge streamBridge;
    public void sendMessageToKafka(String bindingName, Event event) {
        try {
            Message message = MessageBuilder.withPayload(event)
                    .setHeader("partitionKey", event.getKey())
                    .build();
            System.out.printf("data send kafka: %s  - %s",bindingName, event);
            streamBridge.send(bindingName, message);
        } catch (Exception ex) {
            System.out.println(String.format("Send message kafka error: {}", ex));
        }
    }
}
