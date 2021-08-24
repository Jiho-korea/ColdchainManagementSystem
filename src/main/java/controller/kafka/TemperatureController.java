package controller.kafka;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cms.kafka.Consumers;
import cms.kafka.Producers;
import cms.kafka.Temperature;

@Controller
public class TemperatureController {

	@Autowired
	Consumers consumers;
	
	@Autowired
	Producers producers;

	static Integer lowest = 0;
	static Integer lowest2 = 0;
	static Integer lowest3 = 0;

	static Integer highest = 50;
	static Integer highest2 = 50;
	static Integer highest3 = 50;

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

		if (temperature.getTemperature() < lowest || temperature.getTemperature() > highest) {
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

		if (temperature.getTemperature() < lowest2 || temperature.getTemperature() > highest2) {
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

		if (temperature.getTemperature() < lowest3 || temperature.getTemperature() > highest3) {
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

	@PostMapping("/control")
	public String control(@RequestParam(value = "lowest", required = false, defaultValue = "15") Integer lowestParam,
			@RequestParam(value = "highest", required = false, defaultValue = "30") Integer highestParam,
			HttpSession session) throws Exception {
		System.out.println(lowest);
		if (lowestParam != null) {
			lowest = lowestParam;
		}
		if (highestParam != null) {
			highest = highestParam;
		}
		producers.sendMessage("Factory-Lowest", Integer.toString(lowest));
		producers.sendMessage("Factory-Highest", Integer.toString(highest));
		session.setAttribute("lowest", lowest);
		session.setAttribute("highest", highest);

		return "home/main";
	}

	@PostMapping("/control2")
	public String control2(@RequestParam(value = "lowest", required = false, defaultValue = "15") Integer lowestParam,
			@RequestParam(value = "highest", required = false, defaultValue = "30") Integer highestParam,
			HttpSession session) throws Exception {
		if (lowestParam != null) {
			lowest2 = lowestParam;
		}
		if (highestParam != null) {
			highest2 = highestParam;
		}
		producers.sendMessage("Factory2-Lowest", Integer.toString(lowest2));
		producers.sendMessage("Factory2-Highest", Integer.toString(highest2));
		session.setAttribute("lowest2", lowest2);
		session.setAttribute("highest2", highest2);

		return "home/main";
	}

	@PostMapping("/control3")
	public String control3(@RequestParam(value = "lowest", required = false, defaultValue = "15") Integer lowestParam,
			@RequestParam(value = "highest", required = false, defaultValue = "30") Integer highestParam,
			HttpSession session) throws Exception {
		if (lowestParam != null) {
			lowest3 = lowestParam;
		}
		if (highestParam != null) {
			highest3 = highestParam;
		}
		session.setAttribute("lowest3", lowest3);
		session.setAttribute("highest3", highest3);

		return "home/main";
	}
}