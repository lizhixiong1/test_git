package  com.jinlong.service;

import java.util.List;

import  com.jinlong.model.T1Role;

public interface T1RoleService {

	void addT1Role(T1Role t1Role);

	void updateT1Role(T1Role t1Role);

	void deleteT1Role(Integer id);

	List<T1Role> getT1Role();

	T1Role getT1RoleById(Integer id);

	Integer savePermit(Integer roleId, String delIds, String addIds);

	
}
