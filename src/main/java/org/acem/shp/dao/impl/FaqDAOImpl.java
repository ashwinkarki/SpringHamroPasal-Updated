/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.acem.shp.dao.impl;

import java.util.List;
import org.acem.shp.dao.FaqDAO;
import org.acem.shp.entity.Faq;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nisch
 */
@Transactional
@Repository
public class FaqDAOImpl implements FaqDAO {

     @Autowired
    private SessionFactory sessionFactory;
    private Session session;
     private Transaction trans;
    
    public List<Faq> getAll() {
        session=sessionFactory.openSession();
    Query query=session.getNamedQuery("Faq.findAll");
   List<Faq> catList=query.list();
    session.close();
    return catList;
    }

    public Faq getById(int id) {
 session=sessionFactory.openSession();
  Faq cat=(Faq)session.get(Faq.class, id);
    session.close();
    return cat;    }

    public void insert(Faq t) {
session=sessionFactory.openSession();
        
        trans=session.beginTransaction();
        
        session.save(t);
        trans.commit();
        session.close();    }

    public void update(Faq t) {
session=sessionFactory.openSession();
        
        trans=session.beginTransaction();
       
        session.saveOrUpdate(t);
        trans.commit();
        session.close();     }

    public void delete(int id) {
session=sessionFactory.openSession();
      trans=session.beginTransaction();
    session.delete(getById(id));
      trans.commit();
          }
    
}
