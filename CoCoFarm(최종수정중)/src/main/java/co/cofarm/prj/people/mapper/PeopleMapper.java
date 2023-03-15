package co.cofarm.prj.people.mapper;

import java.util.List;

import co.cofarm.prj.buyItem.vo.BuyItemVO;

public interface PeopleMapper {
	List<BuyItemVO> getFarmerOrders(String id);
	List<BuyItemVO> getCustomerOrders(String id);
	
}
