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
     private int Id_Rating;
     private String CreatedAt;
     private int Value;

    public Rating() {
    }

    public Rating(int Id_Rating, String CreatedAt, int Value) {
        this.Id_Rating = Id_Rating;
        this.CreatedAt = CreatedAt;
        this.Value = Value;
    }

    public int getId_Rating() {
        return Id_Rating;
    }

    public void setId_Rating(int Id_Rating) {
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
