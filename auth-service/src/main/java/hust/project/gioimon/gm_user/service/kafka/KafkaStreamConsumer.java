package hust.project.gioimon.gm_user.service.kafka;

import hust.project.gioimon.gm_user.client.kafka.Event;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.util.function.Consumer;

@Component
@RequiredArgsConstructor
public class KafkaStreamConsumer {
    @Bean
    public Consumer<Event<String, Object>> handleCreatePost() {
        return event -> {
            System.out.println("[handleEmpChangePosition] data receipt: {}"+ event);
            if(event.getType().equals("create_new")){
                System.out.println("Create new user: " + event.getData());
            }
            System.out.println("Received event: " + event);
        };
    }
}
