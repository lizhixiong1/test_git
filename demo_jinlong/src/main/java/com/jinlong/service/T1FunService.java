package  com.jinlong.service;

import java.util.List;

import  com.jinlong.model.T1Fun;

public interface T1FunService {

	void addT1Fun(T1Fun t1Fun);

	void updateT1Fun(T1Fun t1Fun);

	void deleteT1Fun(Integer id);

	List<T1Fun> getT1Fun();

	T1Fun getT1FunById(Integer id);
}
