package  com.jinlong.controller;

import javax.annotation.Resource;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import  com.jinlong.model.T1Role;
import  com.jinlong.service.T1RoleService;

@Controller
@RequestMapping("/t1Role")
public class T1RoleController {

	@Resource
	private T1RoleService t1RoleService;

	@RequestMapping("/role")
	public String getT1Role(ModelMap map) {
		map.put("list", t1RoleService.getT1Role());
		 return "main/role";
	}

	@RequestMapping("/getT1RoleById")
	public String getT1RoleById(String id) {
		 T1Role t1Role= t1RoleService.getT1RoleById(Integer.valueOf(id));
		 return "";
	}

	@RequestMapping("/addT1Role")
	public String addT1Role(T1Role t1Role) {
		t1RoleService.addT1Role(t1Role);
		return "";
	}

	@RequestMapping("/updateT1Role")
	public String updateT1Role(T1Role t1Role) {
		t1RoleService.updateT1Role(t1Role);
		return "";
	}

	@RequestMapping("/deleteT1Role")
	public String deleteT1Role(String id) {
		t1RoleService.deleteT1Role(Integer.valueOf(id));
		return "";
	}
	
	@RequestMapping("/savePermit")
	@ResponseBody
	public Integer savePermit(Integer roleId,String delIds,String addIds) {
		return t1RoleService.savePermit(roleId,delIds,addIds);
	}
	
	
	
}
