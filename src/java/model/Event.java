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
     private int Id_Event;
     private String CreatedAt;
     private String EditedAt;
     private String Name;

    public Event() {
    }

    public Event(int Id_Event, String CreatedAt, String EditedAt, String Name) {
        this.Id_Event = Id_Event;
        this.CreatedAt = CreatedAt;
        this.EditedAt = EditedAt;
        this.Name = Name;
    }

    public int getId_Event() {
        return Id_Event;
    }

    public void setId_Event(int Id_Event) {
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
