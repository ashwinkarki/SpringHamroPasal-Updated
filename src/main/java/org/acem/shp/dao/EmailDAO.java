/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.acem.shp.dao;

import java.util.List;
import org.acem.shp.entity.Email;

/**
 *
 * @author nisch
 */
public interface EmailDAO {
    List<Email> getAll();
    Email getById(int id);
    void insert(Email t);
    void update(Email t);
    void delete(int id);
}
