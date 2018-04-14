/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.acem.shp.dao.impl;

import java.util.List;
import org.acem.shp.dao.EmailDAO;
import org.acem.shp.entity.Email;
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
public class EmailDAOImpl implements EmailDAO {

     @Autowired
    private SessionFactory sessionFactory;
    private Session session;
     private Transaction trans;
    
    public List<Email> getAll() {
        session=sessionFactory.openSession();
    Query query=session.getNamedQuery("Email.findAll");
   List<Email> catList=query.list();
    session.close();
    return catList;
    }

    public Email getById(int id) {
 session=sessionFactory.openSession();
  Email cat=(Email)session.get(Email.class, id);
    session.close();
    return cat;    }

    public void insert(Email t) {
session=sessionFactory.openSession();
        
        trans=session.beginTransaction();
        
        session.save(t);
        trans.commit();
        session.close();    }

    public void update(Email t) {
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
