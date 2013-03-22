/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Baro
 */
public class Comment {
     private int Id_Comment;
     private String Description;
      private String CreatedAt;

    public Comment() {
    }

    public int getId_Comment() {
        return Id_Comment;
    }

    public void setId_Comment(int Id_Comment) {
        this.Id_Comment = Id_Comment;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(String CreatedAt) {
        this.CreatedAt = CreatedAt;
    }
      
      
}
