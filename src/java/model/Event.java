/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Baro
 */
public class Event {
     private long Id_Event;
     private String CreatedAt;
     private String EditedAt;
     private String Name;
     private long Id_User;
     private long Id_Album;
    public Event() {
    }

    public long getId_Album() {
        return Id_Album;
    }

    public void setId_Album(long Id_Album) {
        this.Id_Album = Id_Album;
    }

    public Event(long Id_Event, String CreatedAt, String EditedAt, String Name, long Id_User, long Id_Album) {
        this.Id_Event = Id_Event;
        this.CreatedAt = CreatedAt;
        this.EditedAt = EditedAt;
        this.Name = Name;
        this.Id_User = Id_User;
        this.Id_Album = Id_Album;
    }

    public long getId_User() {
        return Id_User;
    }

    public void setId_User(long Id_User) {
        this.Id_User = Id_User;
    }

    

    public long getId_Event() {
        return Id_Event;
    }

    public void setId_Event(long Id_Event) {
        this.Id_Event = Id_Event;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }

    public String getEditedAt() {
        return EditedAt;
    }

    public void setEditedAt(String EditedAt) {
        this.EditedAt = EditedAt;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
     
     
     
}
