package  com.jinlong.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.jinlong.model.T1Fun;
import com.jinlong.model.T1Model;
import com.jinlong.model.T1Role;
import  com.jinlong.model.T1User;

public interface T1UserService {

	void addT1User(T1User t1User);

	void updateT1User(T1User t1User);

	void deleteT1User(Integer id);

	List<T1User> getT1User();
	
	
	T1User getT1UserById(Integer id);

	

	String checkLogin(String username, String string);

	T1User getUserByValue(String username, String string);
	
	
}
