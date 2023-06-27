/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "Promotions",
        uniqueConstraints = {
            @UniqueConstraint(columnNames = "ID")
        })
public class Promotion {
    public Promotion(){}
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ID;

    @Column(columnDefinition = "NVARCHAR(250) NOT NULL")
    private String Name;

    private String Alias;

    private String Image;

    private float PercentOff;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "blog_id", referencedColumnName = "id")
    private Blog blog;

    public Promotion(Long ID, String Name, String Alias, String Image, float PercentOff, Blog blog) {
        this.ID = ID;
        this.Name = Name;
        this.Alias = Alias;
        this.Image = Image;
        this.PercentOff = PercentOff;
        this.blog = blog;
    }

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
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

    public float getPercentOff() {
        return PercentOff;
    }

    public void setPercentOff(float PercentOff) {
        this.PercentOff = PercentOff;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }
    

}
