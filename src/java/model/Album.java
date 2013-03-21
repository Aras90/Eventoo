/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Baro
 */
public class Album {
     private int Id_Album;
     private String CreatedAt;

    public Album() {
    }

    public Album(int Id_Album, String CreatedAt) {
        this.Id_Album = Id_Album;
        this.CreatedAt = CreatedAt;
    }

    public int getId_Album() {
        return Id_Album;
    }

    public void setId_Album(int Id_Album) {
        this.Id_Album = Id_Album;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }
     
     
     
}
