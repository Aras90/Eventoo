/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Baro
 */
public class Invitation {
     private long Id_Invitation;
     private String CreatedAt;
     private long Id_Event;
     private long Id_User;
    public Invitation() {
    }

    public Invitation(long Id_Invitation, String CreatedAt, long Id_Event, long Id_User) {
        this.Id_Invitation = Id_Invitation;
        this.CreatedAt = CreatedAt;
        this.Id_Event = Id_Event;
        this.Id_User = Id_User;
    }

    public long getId_Event() {
        return Id_Event;
    }

    public void setId_Event(long Id_Event) {
        this.Id_Event = Id_Event;
    }

    public long getId_User() {
        return Id_User;
    }

    public void setId_User(long Id_User) {
        this.Id_User = Id_User;
    }

 

    public long getId_Invitation() {
        return Id_Invitation;
    }

    public void setId_Invitation(long Id_Invitation) {
        this.Id_Invitation = Id_Invitation;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }
     
}
