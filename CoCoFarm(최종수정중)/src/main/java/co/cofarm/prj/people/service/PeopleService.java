package co.cofarm.prj.people.service;

import java.util.List;

import co.cofarm.prj.buyItem.vo.BuyItemVO;

public interface PeopleService {

	public List<BuyItemVO> getFarmerOrders(String id);
	
	public List<BuyItemVO> getCustomerOrders(String id);
	
}
