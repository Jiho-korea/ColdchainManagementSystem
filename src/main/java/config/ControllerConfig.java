package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.kafka.AjaxController;

@Configuration
public class ControllerConfig {

	@Bean
	public AjaxController ajaxController() {
		return new AjaxController();
	}

}
