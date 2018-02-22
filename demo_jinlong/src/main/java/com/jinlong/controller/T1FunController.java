package  com.jinlong.controller;

import javax.annotation.Resource;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import  com.jinlong.model.T1Fun;
import  com.jinlong.service.T1FunService;

@RestController
@RequestMapping("/t1Fun")
public class T1FunController {

	@Resource
	private T1FunService t1FunService;

	@RequestMapping("/getT1Fun")
	public String getT1Fun() {
		List<T1Fun> list =  t1FunService.getT1Fun();
		 return "";
	}

	@RequestMapping("/getT1FunById")
	public String getT1FunById(String id) {
		 T1Fun t1Fun= t1FunService.getT1FunById(Integer.valueOf(id));
		 return "";
	}

	@RequestMapping("/addT1Fun")
	public String addT1Fun(T1Fun t1Fun) {
		t1FunService.addT1Fun(t1Fun);
		return "";
	}

	@RequestMapping("/updateT1Fun")
	public String updateT1Fun(T1Fun t1Fun) {
		t1FunService.updateT1Fun(t1Fun);
		return "";
	}

	@RequestMapping("/deleteT1Fun")
	public String deleteT1Fun(String id) {
		t1FunService.deleteT1Fun(Integer.valueOf(id));
		return "";
	}
}
