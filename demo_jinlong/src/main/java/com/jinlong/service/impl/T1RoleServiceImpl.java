package  com.jinlong.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jinlong.mapper.T1PermitMapper;
import  com.jinlong.mapper.T1RoleMapper;
import  com.jinlong.model.T1Role;
import  com.jinlong.model.T1RoleExample;
import  com.jinlong.service.T1RoleService;

@Service
public class T1RoleServiceImpl implements T1RoleService {

	@Resource
	private T1RoleMapper t1RoleMapper;
	
	@Resource
	private T1PermitMapper t1PermitMapper;

	@Override
	public void addT1Role(T1Role t1Role) {
		t1RoleMapper.insert(t1Role);
	}

	@Override
	public void updateT1Role(T1Role t1Role) {
		t1RoleMapper.updateByPrimaryKeySelective(t1Role);
	}

	@Override
	public void deleteT1Role(Integer id) {
		t1RoleMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<T1Role> getT1Role() {
		return t1RoleMapper.selectByExample(new T1RoleExample());
	}

	@Override
	public T1Role getT1RoleById(Integer id) {
		return t1RoleMapper.selectByPrimaryKey(id);
	}

	@Override
	public Integer savePermit(Integer roleId, String delIds, String addIds) {
		
		Integer re = 0;
		try {
			if(!delIds.equals("")) {
				String[] funModelIds = delIds.split("\\|");
				for(String funModel:funModelIds) {
					String[] idsArray  = funModel.split("_");
					Integer modelId = Integer.parseInt(idsArray[0]);
					Integer funId = Integer.parseInt(idsArray[1]);
					System.out.println(modelId+"  "+funId);
					Integer i = t1RoleMapper.getModelFunId(modelId,funId);
					t1PermitMapper.delT1Permit(roleId,i);
				}
			}
			
			
			if(!addIds.equals("")) {
				String[] funModelIds = addIds.split("\\|");
				for(String funModel:funModelIds) {
					String[] idsArray  = funModel.split("_");
					Integer modelId = Integer.parseInt(idsArray[0]);
					Integer funId = Integer.parseInt(idsArray[1]);
					System.out.println(modelId+"  "+funId);
					Integer i = t1RoleMapper.getModelFunId(modelId,funId);
					t1PermitMapper.addT1Permit(roleId,i);
				}
			}
			re = 1;
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return re;
	}

}
