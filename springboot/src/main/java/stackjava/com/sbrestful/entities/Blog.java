/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "Blogs", 
    uniqueConstraints = { 
      @UniqueConstraint(columnNames = "Id"),
      
    })
public class Blog implements Serializable {
    public Blog(){}
        @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) NOT NULL")
    private String Name;
    
    private String Alias;
    
    private String Image;
    @Column(columnDefinition = "NVARCHAR(MAX) NOT NULL")
    private String Content;
    
    private String CreatedDate;
    
    @ManyToOne 
    @JoinColumn(name = "created_by", referencedColumnName = "id")
    private User user;
    
    private String UpdatedDate;
    
    private int ViewCount;
    private int Status;

    public Blog(Long Id, String Name, String Alias, String Image, String Content, String CreatedDate, User user, String UpdatedDate, int ViewCount, int Status) {
        this.Id = Id;
        this.Name = Name;
        this.Alias = Alias;
        this.Image = Image;
        this.Content = Content;
        this.CreatedDate = CreatedDate;
        this.user = user;
        this.UpdatedDate = UpdatedDate;
        this.ViewCount = ViewCount;
        this.Status = Status;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAlias() {
        return Alias;
    }

    public void setAlias(String Alias) {
        this.Alias = Alias;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getCreatedDate() {
        return CreatedDate;
    }

    public void setCreatedDate(String CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUpdatedDate() {
        return UpdatedDate;
    }

    public void setUpdatedDate(String UpdatedDate) {
        this.UpdatedDate = UpdatedDate;
    }

    public int getViewCount() {
        return ViewCount;
    }

    public void setViewCount(int ViewCount) {
        this.ViewCount = ViewCount;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }
    
    
}
