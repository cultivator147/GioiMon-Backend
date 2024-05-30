package hust.project.gioimon.gm_story;

import hust.project.gioimon.gm_story.service.scheduling.Scheduler;
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
	private final Scheduler scheduler;
	public static void main(String[] args) {
		SpringApplication.run(GmStoryApplication.class, args);
	}
	@Override
	public void run(String... args){
		initCache();
		runCron();
	}
	private void initCache(){
		initListStory.init();
	}
	private void runCron(){
		scheduler.init();
	}

}
