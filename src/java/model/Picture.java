/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Baro
 */
public class Picture {
    private long Id_Picture;
    private String Name;
    private String CreatedAt;
    private String Link;
    private long Id_Event;
    private long Id_Album;
    private long Id_User;
    
    public Picture() {
    }

    public Picture(long Id_Picture, String Name, String CreatedAt, String Link, long Id_Event, long Id_Album, long Id_User) {
        this.Id_Picture = Id_Picture;
        this.Name = Name;
        this.CreatedAt = CreatedAt;
        this.Link = Link;
        this.Id_Event = Id_Event;
        this.Id_Album = Id_Album;
        this.Id_User = Id_User;
    }

    public long getId_Event() {
        return Id_Event;
    }

    public void setId_Event(long Id_Event) {
        this.Id_Event = Id_Event;
    }

    public long getId_Album() {
        return Id_Album;
    }

    public void setId_Album(long Id_Album) {
        this.Id_Album = Id_Album;
    }

    public long getId_User() {
        return Id_User;
    }

    public void setId_User(long Id_User) {
        this.Id_User = Id_User;
    }



    public long getId_Picture() {
        return Id_Picture;
    }

    public void setId_Picture(long Id_Picture) {
        this.Id_Picture = Id_Picture;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }

    public String getLink() {
        return Link;
    }

    public void setLink(String Link) {
        this.Link = Link;
    }
     
     
}
