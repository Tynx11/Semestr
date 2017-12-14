package ru.kpfu.itis.group605.DrozdovAn.entites;


public class Favorites {

    private String user_id;
    private String story_id;

    public Favorites(String user_id,String story_id) {
        this.user_id = user_id;
        this.story_id = story_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public String getStory_id() {
        return story_id;
    }

}
