package cms.kafka;

import java.util.ArrayList;
import java.util.List;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class Consumers {

	private List<String> list = new ArrayList<String>();;

	public List<String> getList() {
		return list;
	}

	@KafkaListener(topics = "ColdchainManagementSystem", groupId = "ColdchainManagementSystem")
	public void consume(String message) throws Exception {
		list.add(message);
	}
}