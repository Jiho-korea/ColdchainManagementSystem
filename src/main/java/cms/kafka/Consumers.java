package cms.kafka;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class Consumers {

	private String param = "27.00";
	private String param2 = "27.00";
	private String param3 = "27.00";

	private Double temperature;
	private Double temperature2;
	private Double temperature3;

	public Double getTemperature() {
		temperature = Double.parseDouble(param);
		return Double.parseDouble(String.format("%.2f", temperature));
	}

	public Double getTemperature2() {
		temperature2 = Double.parseDouble(param2);
		return Double.parseDouble(String.format("%.2f", temperature2));
	}

	public Double getTemperature3() {
		temperature3 = Double.parseDouble(param3);
		return Double.parseDouble(String.format("%.2f", temperature3));
	}

	@KafkaListener(topics = "ColdchainManagementSystem", groupId = "ColdchainManagementSystem")
	public void consume(String param) throws Exception {
		this.param = param;
	}

	@KafkaListener(topics = "ColdchainManagementSystem2", groupId = "ColdchainManagementSystem")
	public void consume2(String param2) throws Exception {
		this.param2 = param2;
	}

	@KafkaListener(topics = "ColdchainManagementSystem3", groupId = "ColdchainManagementSystem")
	public void consume3(String param3) throws Exception {
		this.param3 = param3;
	}
}