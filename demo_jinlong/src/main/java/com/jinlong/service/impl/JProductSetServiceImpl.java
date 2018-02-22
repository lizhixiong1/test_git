package  com.jinlong.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import  com.jinlong.mapper.JProductSetMapper;
import  com.jinlong.model.JProductSet;
import  com.jinlong.model.JProductSetExample;
import  com.jinlong.service.JProductSetService;

@Service
public class JProductSetServiceImpl implements JProductSetService {

	@Resource
	private JProductSetMapper jProductSetMapper;

	@Override
	public void addJProductSet(JProductSet jProductSet) {
		jProductSetMapper.insert(jProductSet);
	}

	@Override
	public void updateJProductSet(JProductSet jProductSet) {
		jProductSetMapper.updateByPrimaryKeySelective(jProductSet);
	}

	@Override
	public void deleteJProductSet(Integer id) {
		jProductSetMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<JProductSet> getJProductSet() {
		return jProductSetMapper.selectByExample(new JProductSetExample());
	}

	@Override
	public JProductSet getJProductSetById(Integer id) {
		return jProductSetMapper.selectByPrimaryKey(id);
	}
}
