package org.acem.shp.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author AshwinKArki
 */
@Entity(name= "Product") 
@Table(name = "tbl_products") 
@NamedQueries({
  
@NamedQuery(name = "Product.findByDate", 
        query = "SELECT f FROM Product f ORDER BY f.createDate DESC"),
    
  
    
    @NamedQuery(name = "Product.findNewest", 
        query = "SELECT f FROM Product f ORDER BY f.createDate DESC")
})
public class Product implements Serializable { 

    private static final long serialVersionUID = -1000119078147252957L;

    private String code;
    private String name;
    private double price;
   
    private byte[] image;

    // For sort.
    private Date createDate;

    private Category category; 

    public Product() {
        //ok
    }

    
    @Id
    @Column(name = "Code", length = 20, nullable = false)
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Column(name = "Name", length = 255, nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "Price", nullable = false)
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "Create_Date", nullable = false)
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

     @Lob
    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    
    @JoinColumn(name = "category_id", nullable = false) // null or not null??it is primary key
    @ManyToOne
    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

}
