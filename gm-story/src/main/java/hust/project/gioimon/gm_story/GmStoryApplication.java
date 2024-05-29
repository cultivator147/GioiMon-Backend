package hust.project.gioimon.gm_story;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients
@RequiredArgsConstructor
public class GmStoryApplication implements CommandLineRunner {
	private final InitListStory initListStory;
	public static void main(String[] args) {
		SpringApplication.run(GmStoryApplication.class, args);
	}
	@Override
	public void run(String... args){
		initCache();
	}
	private void initCache(){
		initListStory.init();
	}

}
