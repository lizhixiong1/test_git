package com.jinlong.dev.impl;

import com.jinlong.dev.AbstractGenerator;
import com.jinlong.dev.GenerateElements;
import com.jinlong.dev.Generator;

/**
 * @author liuzeke
 * @version 1.0
 */
public class GeneratorImpl extends AbstractGenerator implements Generator {

	public GeneratorImpl(Class<?> clazz, String sbsolutePath, GenerateElements elements) {
		super(clazz, sbsolutePath, elements);
	}

	/**
	 * Generate the specified method
	 * 
	 * @author liuzeke
	 * @param path
	 */
	public void generate() {
		super.generateController();
		super.generateService();
		super.generateServiceImpl();
		super.generateForm();
		System.out.println("SUCESS.");
	}
}
