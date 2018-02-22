package  com.jinlong.controller;

import javax.annotation.Resource;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import  com.jinlong.model.JProductSet;
import  com.jinlong.service.JProductSetService;

@RestController
@RequestMapping("/jProductSet")
public class JProductSetController {

	@Resource
	private JProductSetService jProductSetService;

	@RequestMapping("/getJProductSet")
	public String getJProductSet() {
		List<JProductSet> list =  jProductSetService.getJProductSet();
		 return "";
	}

	@RequestMapping("/getJProductSetById")
	public String getJProductSetById(String id) {
		 JProductSet jProductSet= jProductSetService.getJProductSetById(Integer.valueOf(id));
		 return "";
	}

	@RequestMapping("/addJProductSet")
	public String addJProductSet(JProductSet jProductSet) {
		jProductSetService.addJProductSet(jProductSet);
		return "";
	}

	@RequestMapping("/updateJProductSet")
	public String updateJProductSet(JProductSet jProductSet) {
		jProductSetService.updateJProductSet(jProductSet);
		return "";
	}

	@RequestMapping("/deleteJProductSet")
	public String deleteJProductSet(String id) {
		jProductSetService.deleteJProductSet(Integer.valueOf(id));
		return "";
	}
}
