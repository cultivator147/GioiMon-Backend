package hust.project.gioimon.gm_post;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableAutoConfiguration
@EnableFeignClients
public class GmPostApplication {

	public static void main(String[] args) {
		SpringApplication.run(GmPostApplication.class, args);
	}

}
