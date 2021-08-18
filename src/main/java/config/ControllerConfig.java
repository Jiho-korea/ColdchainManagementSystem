package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import controller.kafka.TestController;

@Configuration
public class ControllerConfig {

	@Bean
	public TestController testController() {
		return new TestController();
	}

}
