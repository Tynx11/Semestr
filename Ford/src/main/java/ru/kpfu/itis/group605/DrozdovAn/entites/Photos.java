package ru.kpfu.itis.group605.DrozdovAn.entites;


public class Photos {

    private String id;
    private String photo;

    public Photos(String photo) {
        this (null, photo);
    }

    public Photos(String id,String photo) {
        this.id = id;
        this.photo = photo;
    }

    public String getPhoto() {
        return photo;
    }

    public String getId() {
        return id;
    }


}
