/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.acem.shp.dao.impl;

import java.util.List;
import org.acem.shp.dao.CategoryDAO;
import org.acem.shp.dao.ProductDAO;
import org.acem.shp.entity.Category;
import org.acem.shp.model.CategoryInfo;
import org.acem.shp.model.ProductInfo;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author AshwinKArki
 */
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    @Autowired
    private ProductDAO productDAO;

    public List<CategoryInfo> getAll() {
        String sql = "Select new " + CategoryInfo.class.getName()
                // Constructor here
                + "(e.catId, e.categoryName)"
                + " from  " + Category.class.getName() + " e ";
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(sql);
        List<CategoryInfo> categories = query.list();
        session.close();

        for (CategoryInfo cat : categories) {
            List<ProductInfo> productInfos = productDAO.getByCatId(cat.getCatId());
            cat.setProducts(productInfos);
        }

        return categories;
    }

    public List<Category> getAllCategory() {
        session = sessionFactory.openSession();
        Query query = session.getNamedQuery("Category.findAll");
        List<Category> categoryList = query.list();
        session.close();
        return categoryList;
    }

    public Category findCategory(Integer catId) {
        session = sessionFactory.openSession();
        Query query = session.createQuery("Select e from " + Category.class.getName() + " e  where e.catId = :catId");
       query.setParameter("catId", catId);
       Category cat= (Category) query.uniqueResult();
        session.close();
        return cat;
    }

}
