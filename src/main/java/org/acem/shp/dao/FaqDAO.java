/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.acem.shp.dao;

import java.util.List;
import org.acem.shp.entity.Faq;

/**
 *
 * @author nisch
 */
public interface FaqDAO {
    List<Faq> getAll();
    Faq getById(int id);
    void insert(Faq t);
    void update(Faq t);
    void delete(int id);
}
