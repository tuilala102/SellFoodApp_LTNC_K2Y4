/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "Comments", 
    uniqueConstraints = { 
      @UniqueConstraint(columnNames = "ID")
    })
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ID;
    @Column(columnDefinition = "NVARCHAR(250)")
    private String Author;
    @Column(columnDefinition = "NVARCHAR(250)")
    private String Content;
    private String TimeCreate;
    
    @ManyToOne
    @JoinColumn(name = "food_id", referencedColumnName = "id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Food food;
    public Comment(){}

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getTimeCreate() {
        return TimeCreate;
    }

    public void setTimeCreate(String TimeCreate) {
        this.TimeCreate = TimeCreate;
    }



    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }
    
}
