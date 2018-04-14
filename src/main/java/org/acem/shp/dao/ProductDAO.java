package org.acem.shp.dao;

import java.util.List;
import org.acem.shp.entity.Product;
import org.acem.shp.model.PaginationResult;
import org.acem.shp.model.ProductInfo;

public interface ProductDAO {

    public Product findProduct(String code);

    public ProductInfo findProductInfo(String code);

    public PaginationResult<ProductInfo> queryProducts(int page,
            int maxResult, int maxNavigationPage);

    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult,
            int maxNavigationPage, String likeName);

    public void save(ProductInfo productInfo);

    Product getById(String id);

    List<ProductInfo> getAll();

    List<ProductInfo> getByCatId(Integer catId);

    public List<Product> getNewestProducts();

    public PaginationResult<ProductInfo> querySearch( 
            String keyword, int page, int maxResult);

}
