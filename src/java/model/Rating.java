/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Baro
 */
public class Rating {
     private long Id_Rating;
     private String CreatedAt;
     private int Value;
     private long Id_Picture;
     private long Id_User;
     
     
    public Rating() {
    }

    public Rating(long Id_Rating, String CreatedAt, int Value, long Id_Picture, long Id_User) {
        this.Id_Rating = Id_Rating;
        this.CreatedAt = CreatedAt;
        this.Value = Value;
        this.Id_Picture = Id_Picture;
        this.Id_User = Id_User;
    }

    public long getId_Picture() {
        return Id_Picture;
    }

    public void setId_Picture(long Id_Picture) {
        this.Id_Picture = Id_Picture;
    }

    public long getId_User() {
        return Id_User;
    }

    public void setId_User(long Id_User) {
        this.Id_User = Id_User;
    }

   

    public long getId_Rating() {
        return Id_Rating;
    }

    public void setId_Rating(long Id_Rating) {
        this.Id_Rating = Id_Rating;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }

    public int getValue() {
        return Value;
    }

    public void setValue(int Value) {
        this.Value = Value;
    }
     
}
