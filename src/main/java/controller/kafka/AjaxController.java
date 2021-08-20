package controller.kafka;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import cms.kafka.Consumers;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AjaxController {

	@Autowired
	Consumers consumers;

	List<String> temperatureList = new ArrayList<String>();

	@PostMapping("/factory1")
	public String testAjax(String message, Model model) throws Exception {
		temperatureList = consumers.getList();
		try {
			model.addAttribute("temperatureList", temperatureList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "home/temperatureHistory";
	}

}