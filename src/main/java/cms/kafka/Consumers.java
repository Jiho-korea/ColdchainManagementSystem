package cms.kafka;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class Consumers {
	@KafkaListener(topics = "ColdchainManagementSystem")
	public void listenGroupFoo(String message) {
		System.out.println("received message foo : " + message);
	}
}