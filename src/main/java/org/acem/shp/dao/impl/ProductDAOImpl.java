package org.acem.shp.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.acem.shp.dao.ProductDAO;
import org.acem.shp.entity.Faq;
import org.acem.shp.entity.Product;
import org.acem.shp.model.PaginationResult;
import org.acem.shp.model.ProductInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

// Transactional for Hibernate
@Transactional
public class ProductDAOImpl implements ProductDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;

    @Override
    public Product findProduct(String code) {
        Session session = sessionFactory.getCurrentSession();
        Criteria crit = session.createCriteria(Product.class);
        crit.add(Restrictions.eq("code", code));
        return (Product) crit.uniqueResult();
    }

    @Override
    public ProductInfo findProductInfo(String code) {
        Product product = this.findProduct(code);
        if (product == null) {
            return null;
        }
        return new ProductInfo(product.getCode(), 
                product.getName(), product.getPrice(),
                product.getCategory()==null? null: product.getCategory().getCatId());
    }

    @Override
    public void save(ProductInfo productInfo) {
        String code = productInfo.getCode();

        Product product = null;

        boolean isNew = false;
        if (code != null) {
            product = this.findProduct(code);
        }
        if (product == null) {
            isNew = true;
            product = new Product();
            product.setCreateDate(new Date());
        }
        product.setCode(code);
        product.setName(productInfo.getName());
        product.setPrice(productInfo.getPrice());
        product.setCategory(productInfo.getInputCategory());

        if (productInfo.getFileData() != null) {
            byte[] image = productInfo.getFileData().getBytes();
            if (image != null && image.length > 0) {
                product.setImage(image);
            }
        }
        if (isNew) {
            this.sessionFactory.getCurrentSession().persist(product);
        }
        this.sessionFactory.getCurrentSession().flush();
    }

    @Override
    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage,
            String likeName) {
        String sql = "Select new " + ProductInfo.class.getName() //
                + "(p.code, p.name, p.price,c.catId) " + " from "//
                + Product.class.getName() + " p "
                +" Left join p.category c ";
        if (likeName != null && likeName.length() > 0) {
            sql += " Where lower(p.name) like :likeName ";
        }
        sql += " order by p.createDate desc ";
        //
        Session session = sessionFactory.getCurrentSession();

        Query query = session.createQuery(sql);
        if (likeName != null && likeName.length() > 0) {
            query.setParameter("likeName", "%" + likeName.toLowerCase() + "%");
        }
        return new PaginationResult<ProductInfo>(query, page, maxResult, maxNavigationPage);
    }

    @Override
    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage) {
        return queryProducts(page, maxResult, maxNavigationPage, null);
    }

    public Product getById(String id) {
        session = sessionFactory.openSession();
        Product cat = (Product) session.get(Product.class, id);
        session.close();
        return cat;
    }

    public List<ProductInfo> getAll() {
        String sql = "Select new " + ProductInfo.class.getName()
                // Constructor here
                + "(e.code, e.name, e.price, c.catId)"
                + " from  " + Product.class.getName() + " e "
                +" Left join e.category c "; // OK
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(sql);
        return query.list();
    }

    public List<ProductInfo> getByCatId(Integer catId) {
        String sql = "Select new " + ProductInfo.class.getName()
                // Constructor here
                + "(e.code, e.name, e.price, c.catId)"
                + " from  " + Product.class.getName() + " e "
                +" Left join e.category c "
                + " Where c.catId  = :catId ";
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(sql);
        query.setParameter("catId", catId);

        List<ProductInfo> list = query.list();
        session.close();
        return list;
    }

    public List<Product> getNewestProducts() {
        session = sessionFactory.openSession();
        Query query = session.getNamedQuery("Product.findNewest");

        int MAX_DOT_DOT_DOT = 10;
        int maxResult = 5;
        int page = 1;
        PaginationResult<Product> pr = new PaginationResult(query, page, maxResult, MAX_DOT_DOT_DOT);
        List<Product> retList = pr.getList();
        session.close();
        return retList;
    }

    public PaginationResult<ProductInfo> querySearch(String keyword, int page, int maxResult) {
        String sql = "Select new " + ProductInfo.class.getName()
                // Constructor here
                + "(e.code, e.name, e.price, c.catId)"
                + " from  " + Product.class.getName() + " e "
                +" Left join e.category c "
                + " Where 1 = 1 ";
        if (keyword != null && !keyword.isEmpty()) {
            sql += "and lower(e.name) like  :keyword ";
        }

        Session session = sessionFactory.openSession();
        Query query = session.createQuery(sql);
        if (keyword != null && !keyword.isEmpty()) {
            query.setParameter("keyword", "%" + keyword.toLowerCase() + "%");
        }
        PaginationResult<ProductInfo> ret
                = new PaginationResult<ProductInfo>(query, page, maxResult, 10);

        session.close();
        return ret;
    } // OK rerun

}
