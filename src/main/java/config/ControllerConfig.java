package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.home.MainController;
import controller.kafka.TestController;

@Configuration
public class ControllerConfig {

	@Bean
	public MainController mainController() {
		return new MainController();
	}

	@Bean
	public TestController testController() {
		return new TestController();
	}

}
