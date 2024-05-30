package hust.project.gioimon.gm_story.service.scheduling;

public class ScheduleUpdateStory {
    private final ScheduleProcessor processor;
    public ScheduleUpdateStory(ScheduleProcessor processor) {
        this.processor = processor;
    }
    public void start() {
        System.out.println("Start scheduling update story");
        processor.process();
    }
}
