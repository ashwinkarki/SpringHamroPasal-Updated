package org.acem.shp.dao;

import java.util.List;
import org.acem.shp.entity.Order;

import org.acem.shp.model.CartInfo;
import org.acem.shp.model.OrderDetailInfo;
import org.acem.shp.model.OrderInfo;
import org.acem.shp.model.PaginationResult;

public interface OrderDAO {

	public void saveOrder(CartInfo cartInfo);

	public PaginationResult<OrderInfo> listOrderInfo(int page, 
			int maxResult, int maxNavigationPage);
	
	public OrderInfo getOrderInfo(String orderId);
	
	public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
        
        public Order getById(int id);
        
        void delete(String id);

}