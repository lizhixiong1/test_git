package  com.jinlong.service;

import java.util.List;

import  com.jinlong.model.JProduct;

public interface JProductService {

	void addJProduct(JProduct jProduct);

	void updateJProduct(JProduct jProduct);

	void deleteJProduct(Integer id);

	List<JProduct> getJProduct();

	JProduct getJProductById(Integer id);
}
