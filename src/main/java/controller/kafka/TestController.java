package controller.kafka;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;

import cms.kafka.Producers;

@Controller
@RequiredArgsConstructor
public class TestController {

	@Autowired
	private Producers producers;

	static List<String> temperatureList = new ArrayList<String>();
	static int num;

	@PostMapping("/test")
	public String testAjax(Model model) throws Exception {
		
		num++;
		temperatureList.add(Integer.toString(num));

		try {
//			producers.sendMessage("ColdchainManagementSystem", "hello spring kafka!!");

			model.addAttribute("temperatureList", temperatureList);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "home/temperatureHistory";
	}
}