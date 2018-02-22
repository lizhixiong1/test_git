package  com.jinlong.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import  com.jinlong.mapper.JProductMapper;
import  com.jinlong.model.JProduct;
import  com.jinlong.model.JProductExample;
import  com.jinlong.service.JProductService;

@Service
public class JProductServiceImpl implements JProductService {

	@Resource
	private JProductMapper jProductMapper;

	@Override
	public void addJProduct(JProduct jProduct) {
		jProductMapper.insert(jProduct);
	}

	@Override
	public void updateJProduct(JProduct jProduct) {
		jProductMapper.updateByPrimaryKeySelective(jProduct);
	}

	@Override
	public void deleteJProduct(Integer id) {
		jProductMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<JProduct> getJProduct() {
		return jProductMapper.selectByExample(new JProductExample());
	}

	@Override
	public JProduct getJProductById(Integer id) {
		return jProductMapper.selectByPrimaryKey(id);
	}
}
