package  com.jinlong.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import  com.jinlong.mapper.T1UserMapper;
import com.jinlong.model.T1Fun;
import com.jinlong.model.T1Model;
import com.jinlong.model.T1Role;
import  com.jinlong.model.T1User;
import  com.jinlong.model.T1UserExample;
import  com.jinlong.service.T1UserService;

@Service
public class T1UserServiceImpl implements T1UserService {

	@Resource
	private T1UserMapper t1UserMapper;

	@Override
	public void addT1User(T1User t1User) {
		t1UserMapper.insert(t1User);
	}

	@Override
	public void updateT1User(T1User t1User) {
		t1UserMapper.updateByPrimaryKeySelective(t1User);
	}

	@Override
	public void deleteT1User(Integer id) {
		t1UserMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<T1User> getT1User() {
		return t1UserMapper.selectByExample(new T1UserExample());
	}

	@Override
	public T1User getT1UserById(Integer id) {
		return t1UserMapper.selectByPrimaryKey(id);
	}

	public String checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		T1User user2 = t1UserMapper.getUserByValue(username);
		if(user2==null) {
			return "账户不存在！";
		}else if(!password.equals(user2.getPassword())) {
			return "密码有误！";
		}
		return "";
	}
	
	
	public T1User getUserByValue(String username, String password) {
		// TODO Auto-generated method stub
		T1User user2 = t1UserMapper.getUserByValue(username);
		if(user2.getPassword().equals(user2.getPassword())) {
			return user2;
		}
		return null;
	}

	

}
