package hust.project.gioimon.gm_post.service.controller;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import hust.project.gioimon.gm_post.service.utils.network.OkHttpUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@RunWith(Parameterized.class)

public class ListPostTests {
    private final int caseNumber;
    private final int page;
    private final int size;
    private final int favouriteStatus;
    private final int filterBy;
    private final int sortBy;
    private final long storyId;
    private final long friendId;

    public ListPostTests(int caseNumber, int page, int size, int favouriteStatus, int filterBy, int sortBy, long storyId, long friendId) {
        this.caseNumber = caseNumber;
        this.page = page;
        this.size = size;
        this.favouriteStatus = favouriteStatus;
        this.filterBy = filterBy;
        this.sortBy = sortBy;
        this.storyId = storyId;
        this.friendId = friendId;
    }

    static final String API_URL = "http://localhost:10440/post/v1.0/list-post/";
    static final String ACCESS_TOKEN = "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxMDQiLCJleHAiOjE3MTk2MjkyMTAzNjF9.9PmjQRAW_tAKO9CtKwZNCVTOwYXdsX4elYfy2XBxBUQ";
    static final int[][] expectedResult = {
            {},
            {0, 0, 0, 0, 0, 1, 1},
            {0, 5, 0, 0, 0, 1, 1},
            {0, 5, 1, 0, 0, 0, 0},
            {0, 5, 2, 0, 0, 1, 1},
    };

    @Parameterized.Parameters
    public static Collection params() {
        return Arrays.asList(new Object[][]{
                {1, 0, 0, 0, 1, 1, 1, 1},
                {2, 0, 5, 0, 2, 2, 1, 1},
                {3, 0, 5, 1, 0, 1, 1, 1},
                {4, 0, 5, 2, 0, 2, 1, 1},
        });
    }

    @Test
    public void getListPost() {
        Map<String, String> headers = new HashMap<>();
        headers.put("Authorization", ACCESS_TOKEN);
        StringBuilder params = new StringBuilder("?page=").append(page)
                .append("&size=").append(size)
                .append("&filterBy=").append(filterBy)
                .append("&favouriteStatus=").append(favouriteStatus)
                .append("&sortBy=").append(sortBy)
                .append("&storyId=").append(storyId)
                .append("&friend_id=").append(friendId);
        JsonObject response = OkHttpUtil.get(API_URL + params, headers);
        assert response != null;
        JsonArray data = response.get("data").getAsJsonArray();
        assertTrue( expectedResult[caseNumber][1] >= data.size() );
        for (int i = 0; i < data.size(); i++) {
            JsonObject story = data.get(i).getAsJsonObject();
            if(expectedResult[caseNumber][2] == 1){
                assertEquals(1, story.get("favourited").getAsInt());
            }
            if(expectedResult[caseNumber][2] == 0){
                assertEquals(0, story.get("favourited").getAsInt());
            }
            assertEquals(expectedResult[caseNumber][5], story.get("storyId").getAsLong());
            assertEquals(expectedResult[caseNumber][6], story.get("ownerId").getAsLong());
        }
    }

    @Test
    public void testSortBy() {
        Map<String, String> headers = new HashMap<>();
        headers.put("Authorization", ACCESS_TOKEN);
        StringBuilder params = new StringBuilder("?page=").append(page)
                .append("&size=").append(size)
                .append("&sortBy=").append(sortBy);
        JsonObject response = OkHttpUtil.get(API_URL + params, headers);
        assert response != null;
        JsonArray data = response.get("data").getAsJsonArray();
        assertTrue(data.size() <= expectedResult[caseNumber][1]);
        for (int i = 0; i < data.size() - 1; i++) {
            JsonObject story = data.get(i).getAsJsonObject();
            JsonObject nextStory = data.get(i + 1).getAsJsonObject();
            if(filterBy == 1){
                assertTrue(story.get("favouriteCount").getAsLong() >= nextStory.get("favouriteCount").getAsLong());
            }else if(filterBy == 2){
                assertTrue(story.get("commentCount").getAsLong() >= nextStory.get("commentCount").getAsLong());
            }else{
                if (sortBy == 2) {
                    assertTrue(story.get("createTime").getAsLong() <= nextStory.get("createTime").getAsLong());
                } else {
                    assertTrue(story.get("createTime").getAsLong() > nextStory.get("createTime").getAsLong());
                }
            }

        }
    }
}
