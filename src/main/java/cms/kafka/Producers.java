package cms.kafka;

import org.apache.kafka.clients.producer.KafkaProducer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.stereotype.Component;
import org.springframework.util.concurrent.ListenableFuture;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class Producers {
	private final Logger logger = LoggerFactory.getLogger(KafkaProducer.class);

	@Autowired
	private KafkaTemplate<String, String> kafkaTemplate;

	public void sendMessage(String topic, String payload) {
		logger.info("sending payload = '{}' to topice='{}'", payload, topic);
		ListenableFuture<SendResult<String, String>> listenable = kafkaTemplate.send(topic, payload);
	}
}