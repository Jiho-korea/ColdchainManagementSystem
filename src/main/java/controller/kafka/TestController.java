package controller.kafka;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

import cms.kafka.Producers;

@Controller
@RequiredArgsConstructor
public class TestController {
	@Autowired
	private Producers producers;

	@GetMapping("/test")
	public String test() throws Exception {
		try {
			producers.sendMessage("ColdchainManagementSystem", "hello spring kafka!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/home";
	}
}