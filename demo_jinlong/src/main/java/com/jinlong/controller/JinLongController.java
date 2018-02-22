package com.jinlong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jinlong.model.JProductSet;
import com.jinlong.service.JProductService;
import com.jinlong.service.JProductSetService;

@Controller
@RequestMapping("jinlong")
public class JinLongController {
	
	@Autowired
	private JProductSetService psService;
	
	@Autowired
	private JProductService pService;
	
	// left
	@RequestMapping("productSetList")
	@ResponseBody
	public List<JProductSet> left() {
		List<JProductSet> list =  psService.getJProductSet();
		return list;
	}

	// 首页
	@RequestMapping("index")
	public String productSetList(ModelMap map) {
		return "view/index";
	}

	// 企业介绍
	@RequestMapping("enterprise_culture")
	public String enterprise_culture(ModelMap map) {

		return "view/enterprise_culture";
	}

	// 荣誉资质
	@RequestMapping("honor")
	public String honor(ModelMap map) {
		return "view/honor";
	}

	// 产品中心
	@RequestMapping("product")
	public String product(ModelMap map) {
		
		return "view/product";
	}

	// 成功案例
	@RequestMapping("/success")
	public String success(ModelMap map) {
	
		return "view/success";
	}

	// 联系我们
	@RequestMapping("/contact")
	public String contact(ModelMap map) {
		
		return "view/contact";
	}

}
