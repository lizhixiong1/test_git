package com.jinlong.dev;

import com.jinlong.dev.impl.GeneratorImpl;
import com.jinlong.model.JProduct;
import com.jinlong.model.JProductSet;
import com.jinlong.model.T1Fun;
import com.jinlong.model.T1Role;


/**
 * @author liuzeke
 * @version 1.0
 */
public class Run {

	public static void main(String[] args) {

		String path = "D:\\shixun1\\demo_jinlong\\src\\main\\java\\com\\jinlong";
		Generator gen = new GeneratorImpl(T1Role.class, path, new GenerateElements().setForm(false));
		gen.generate();
	}
}
