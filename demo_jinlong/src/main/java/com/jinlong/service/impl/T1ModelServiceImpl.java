package com.jinlong.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jinlong.mapper.T1FunMapper;
import com.jinlong.mapper.T1ModelMapper;
import com.jinlong.model.T1Fun;
import com.jinlong.model.T1Model;
import com.jinlong.model.T1ModelExample;
import com.jinlong.service.T1ModelService;

@Service
public class T1ModelServiceImpl implements T1ModelService {

	@Resource
	private T1ModelMapper t1ModelMapper;

	@Resource
	private T1FunMapper t1FunMapper;

	@Override
	public void addT1Model(T1Model t1Model) {
		t1ModelMapper.insert(t1Model);
	}

	@Override
	public void updateT1Model(T1Model t1Model) {
		t1ModelMapper.updateByPrimaryKeySelective(t1Model);
	}

	@Override
	public void deleteT1Model(Integer id) {
		t1ModelMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<T1Model> getT1Model() {
		return t1ModelMapper.selectByExample(new T1ModelExample());
	}

	@Override
	public T1Model getT1ModelById(Integer id) {
		return t1ModelMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<T1Model> getModelList(Integer userId) {
		// 查询用户对应的模块
		List<T1Model> modelList = t1ModelMapper.getModelList(userId);

		ArrayList<T1Model> list1 = new ArrayList<T1Model>();

		// 查询父模块
		for (T1Model t1Model : modelList) {
			if (t1Model.getPid() == 0) {
				list1.add(t1Model);
			}
		}

		for (T1Model parentT1Model : list1) {

			ArrayList<T1Model> list2 = new ArrayList<T1Model>();

			for (T1Model t1Model : modelList) {
				if (parentT1Model.getId() == t1Model.getPid()) {
					list2.add(t1Model);
				}
			}
			parentT1Model.setChildModel(list2);
		}
		return list1;
	}

	@Override
	public List<T1Model> getPermitList(Integer roleId) {

		// 通过角色查询对应的模块功能功能
		List<T1Model> moduleFunlist = t1ModelMapper.getPermitByRoleId(roleId);

		// 查询所有父级模块
		List<T1Model> parentList = t1ModelMapper.getChildList(0);// 父节点

		for (T1Model module : parentList) {

			// 查询所有子级模块
			List<T1Model> childList = t1ModelMapper.getChildList(module.getId());

			for (T1Model childModule : childList) {
				List<T1Fun> childFunlist = t1FunMapper.getFunBymoduleIdList(childModule.getId());

				// 遍历所有功能集合
				for (T1Fun fun : childFunlist) {
					Boolean isChecked = false;
					// 遍历用户的功能集合
					for (T1Model moduleFun : moduleFunlist) {
						if (moduleFun.getId()==(childModule.getId()) && moduleFun.getFunId()==(fun.getId())) {
							isChecked = true;
						}

					}
					fun.setIsChecked(isChecked);
				}

				childModule.setFunList(childFunlist);
			}
			module.setChildModel(childList);
		}
		return parentList;
	}
}
