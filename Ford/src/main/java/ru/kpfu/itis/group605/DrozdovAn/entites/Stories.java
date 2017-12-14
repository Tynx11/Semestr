package ru.kpfu.itis.group605.DrozdovAn.entites;


public class Stories {

    private String id;
    private String story;
    private String photo;
    private String country;
    private String time;
    private String shortstory;
    private String name;

    public Stories(String story, String photo, String country,String time, String shortstory, String name) {
        this(null,story,photo,country,time, shortstory, name);
    }
    public Stories(String id,String story, String photo, String country,String time, String shortstory, String name) {
        this.id = id;
        this.story = story;
        this.photo = photo;
        this.country = country;
        this.time = time;
        this.shortstory = shortstory;
        this.name = name;
    }

    public  String getId(){ return id;}

    public String getStory() {
        return story;
    }

    public String getPhoto() {
        return photo;
    }

    public String getCountry() {
        return country;
    }

    public String getTime() {
        return time;
    }

    public String getShortstory() { return shortstory; }

    public String getName() { return name; }


}
