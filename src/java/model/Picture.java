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
    private int Id_Picture;
    private String Name;
    private String CreatedAt;
    private String Link;

    public Picture() {
    }

    public Picture(int Id_Picture, String Name, String CreatedAt, String Link) {
        this.Id_Picture = Id_Picture;
        this.Name = Name;
        this.CreatedAt = CreatedAt;
        this.Link = Link;
    }

    public int getId_Picture() {
        return Id_Picture;
    }

    public void setId_Picture(int Id_Picture) {
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
