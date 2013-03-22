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
     private int Id_Invitation;
     private String CreatedAt;

    public Invitation() {
    }

    public Invitation(int Id_Invitation, String CreatedAt) {
        this.Id_Invitation = Id_Invitation;
        this.CreatedAt = CreatedAt;
    }

    public int getId_Invitation() {
        return Id_Invitation;
    }

    public void setId_Invitation(int Id_Invitation) {
        this.Id_Invitation = Id_Invitation;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }
     
}
