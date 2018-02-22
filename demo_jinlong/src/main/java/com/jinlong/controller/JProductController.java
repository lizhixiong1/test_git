package  com.jinlong.controller;

import javax.annotation.Resource;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import  com.jinlong.model.JProduct;
import  com.jinlong.service.JProductService;

@RestController
@RequestMapping("/jProduct")
public class JProductController {

	@Resource
	private JProductService jProductService;

	@RequestMapping("/getJProduct")
	public String getJProduct() {
		List<JProduct> list =  jProductService.getJProduct();
		 return "";
	}

	@RequestMapping("/getJProductById")
	public String getJProductById(String id) {
		 JProduct jProduct= jProductService.getJProductById(Integer.valueOf(id));
		 return "";
	}

	@RequestMapping("/addJProduct")
	public String addJProduct(JProduct jProduct) {
		jProductService.addJProduct(jProduct);
		return "";
	}

	@RequestMapping("/updateJProduct")
	public String updateJProduct(JProduct jProduct) {
		jProductService.updateJProduct(jProduct);
		return "";
	}

	@RequestMapping("/deleteJProduct")
	public String deleteJProduct(String id) {
		jProductService.deleteJProduct(Integer.valueOf(id));
		return "";
	}
}
