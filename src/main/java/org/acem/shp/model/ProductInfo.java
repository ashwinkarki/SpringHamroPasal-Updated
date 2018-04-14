package org.acem.shp.model;

import org.acem.shp.entity.Category;
import org.acem.shp.entity.Product;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ProductInfo {

    private String code;
    private String name;
    private double price;

        // YOu need categoryID heare
    private Integer catId;

    private boolean newProduct = false;

    // Upload file.
    private CommonsMultipartFile fileData;

    public ProductInfo() {
    }

    public ProductInfo(Product product) {
        this.code = product.getCode();
        this.name = product.getName();
        this.price = product.getPrice();
        this.catId = product.getCategory().getCatId();
    }

    // Use Constructor in HSQL. 
    public ProductInfo(String code, String name, double price, Integer catId) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.catId = catId;

    }

    public Integer getCatId() {
        return catId;
    }

    public void setCatId(Integer catId) {
        this.catId = catId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public CommonsMultipartFile getFileData() {
        return fileData;
    }

    public void setFileData(CommonsMultipartFile fileData) {
        this.fileData = fileData;
    }

    public boolean isNewProduct() {
        return newProduct;
    }

    public void setNewProduct(boolean newProduct) {
        this.newProduct = newProduct;
    }

    private Category inputCategory;
    
    public void setInputCategory(Category category) {
         this.inputCategory = category;
    }
    
    public Category getInputCategory() {
        return this.inputCategory;
    }

}
