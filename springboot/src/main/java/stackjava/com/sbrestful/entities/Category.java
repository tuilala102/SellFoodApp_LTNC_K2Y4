/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package stackjava.com.sbrestful.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name = "Categories", 
    uniqueConstraints = { 
      @UniqueConstraint(columnNames = "ID")
    })
public class Category {
    public Category(){}
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Long ID;
    
    @Size(max = 250)
    @Column(columnDefinition = "NVARCHAR(250) NOT NULL")
    private String Name;
    
    @Size(max = 250)
    private String Alias;
    
    private int Status;

    
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

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public Category(Long ID, String Name, String Alias, int Status) {
        this.ID = ID;
        this.Name = Name;
        this.Alias = Alias;
        this.Status = Status;
    }
    
}
