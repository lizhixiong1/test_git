package  com.jinlong.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import  com.jinlong.mapper.T1FunMapper;
import  com.jinlong.model.T1Fun;
import  com.jinlong.model.T1FunExample;
import  com.jinlong.service.T1FunService;

@Service
public class T1FunServiceImpl implements T1FunService {

	@Resource
	private T1FunMapper t1FunMapper;

	@Override
	public void addT1Fun(T1Fun t1Fun) {
		t1FunMapper.insert(t1Fun);
	}

	@Override
	public void updateT1Fun(T1Fun t1Fun) {
		t1FunMapper.updateByPrimaryKeySelective(t1Fun);
	}

	@Override
	public void deleteT1Fun(Integer id) {
		t1FunMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<T1Fun> getT1Fun() {
		return t1FunMapper.selectByExample(new T1FunExample());
	}

	@Override
	public T1Fun getT1FunById(Integer id) {
		return t1FunMapper.selectByPrimaryKey(id);
	}
}
