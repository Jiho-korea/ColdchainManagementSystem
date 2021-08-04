package controller.kafka;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import cms.kafka.Producers;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class TestController {
	@Autowired
	private Producers producers;

	@GetMapping("/")
	public void test() throws Exception {
		try {
			producers.sendMessage("ColdchainManagementSystem", "hello spring kafka!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}