package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.kafka.AjaxController;
import controller.kafka.TemperatureController;

@Configuration
public class ControllerConfig {

	@Bean
	public AjaxController ajaxController() {
		return new AjaxController();
	}

	@Bean
	public TemperatureController temperatureController() {
		return new TemperatureController();
	}
}
