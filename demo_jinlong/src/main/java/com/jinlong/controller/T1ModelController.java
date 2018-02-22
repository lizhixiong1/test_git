package com.jinlong.controller;

import javax.annotation.Resource;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jinlong.model.T1Model;
import com.jinlong.model.T1User;
import com.jinlong.service.T1ModelService;

@Controller
@RequestMapping("/t1Model")
public class T1ModelController {

	@Resource
	private T1ModelService t1ModelService;

	@RequestMapping("/getT1Model")
	public String getT1Model() {
		List<T1Model> list = t1ModelService.getT1Model();
		return "";
	}

	@RequestMapping("/getT1ModelById")
	public String getT1ModelById(String id) {
		T1Model t1Model = t1ModelService.getT1ModelById(Integer.valueOf(id));
		return "";
	}

	@RequestMapping("/addT1Model")
	public String addT1Model(T1Model t1Model) {
		t1ModelService.addT1Model(t1Model);
		return "";
	}

	@RequestMapping("/updateT1Model")
	public String updateT1Model(T1Model t1Model) {
		t1ModelService.updateT1Model(t1Model);
		return "";
	}

	@RequestMapping("/deleteT1Model")
	public String deleteT1Model(String id) {
		t1ModelService.deleteT1Model(Integer.valueOf(id));
		return "";
	}
	
	//查询模块
	@RequestMapping("getModelList")
	public String getModelList(ModelMap map) {
		Subject currentUser = SecurityUtils.getSubject();

		T1User user = (T1User) currentUser.getPrincipal();

		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		List<T1Model> modelList = t1ModelService.getModelList(user.getId());
		
		map.put("list",modelList ) ;
		
		return "main/left";
	}
	
		//查询权限列表
		@RequestMapping("getPermitList/{roleId}")
		public String getPermitList(@PathVariable("roleId") String roleId,ModelMap map) {
			map.put("permitList", t1ModelService.getPermitList(Integer.parseInt(roleId)));
			map.put("roleId", roleId);
			return "main/permit";
		}

}
