package controller.kafka;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import cms.kafka.Consumers;
import cms.kafka.Temperature;
import lombok.RequiredArgsConstructor;

@Controller
public class AjaxController {

	@Autowired
	Consumers consumers;

	static List<Temperature> outlierList = new ArrayList<Temperature>();
	static List<Temperature> outlierList2 = new ArrayList<Temperature>();
	static List<Temperature> outlierList3 = new ArrayList<Temperature>();

	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	@PostMapping("/factory")
	public String factory(Model model) throws Exception {
		Date time = new Date();
		Temperature temperature = new Temperature();

		temperature.setTemperature(consumers.getTemperature());
		temperature.setDate(format.format(time));

		if (temperature.getTemperature() < 24 || temperature.getTemperature() > 30) {
			outlierList.add(temperature);
		}

		try {
			model.addAttribute("outlierList", outlierList);
			model.addAttribute("temperature", temperature);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "home/temperatureHistory";
	}

	@PostMapping("/factory2")
	public String factory2(Model model) throws Exception {
		Date time = new Date();
		Temperature temperature = new Temperature();

		temperature.setTemperature(consumers.getTemperature2());
		temperature.setDate(format.format(time));

		if (temperature.getTemperature() < 24 || temperature.getTemperature() > 30) {
			outlierList2.add(temperature);
		}

		try {
			model.addAttribute("outlierList2", outlierList2);
			model.addAttribute("temperature", temperature);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "home/temperatureHistory2";
	}

	@PostMapping("/factory3")
	public String factory3(Model model) throws Exception {
		Date time = new Date();
		Temperature temperature = new Temperature();

		temperature.setTemperature(consumers.getTemperature3());
		temperature.setDate(format.format(time));

		if (temperature.getTemperature() < 24 || temperature.getTemperature() > 30) {
			outlierList3.add(temperature);
		}

		try {
			model.addAttribute("outlierList3", outlierList3);
			model.addAttribute("temperature", temperature);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "home/temperatureHistory3";
	}
}