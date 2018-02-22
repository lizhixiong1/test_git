package  com.jinlong.service;

import java.util.List;

import  com.jinlong.model.T1Model;
import com.jinlong.model.T1Role;

public interface T1ModelService {

	void addT1Model(T1Model t1Model);

	void updateT1Model(T1Model t1Model);

	void deleteT1Model(Integer id);

	List<T1Model> getT1Model();

	T1Model getT1ModelById(Integer id);

	List<T1Model> getModelList(Integer userId);
	
	List<T1Model> getPermitList(Integer roleId);
}
