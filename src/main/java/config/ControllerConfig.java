package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.home.MainController;

@Configuration
public class ControllerConfig {

	@Bean
	public MainController mainController() {
		return new MainController();
	}

}
