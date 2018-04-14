/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.acem.shp.dao;

import java.util.List;
import org.acem.shp.entity.Category;
import org.acem.shp.model.CategoryInfo;

/**
 *
 * @author AshwinKArki
 */
//ok now 
public interface CategoryDAO {
      List<CategoryInfo> getAll();
      List<Category> getAllCategory();

    public Category findCategory(Integer catId);
}
