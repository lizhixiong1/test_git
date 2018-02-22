package  com.jinlong.service;

import java.util.List;

import  com.jinlong.model.JProductSet;

public interface JProductSetService {

	void addJProductSet(JProductSet jProductSet);

	void updateJProductSet(JProductSet jProductSet);

	void deleteJProductSet(Integer id);

	List<JProductSet> getJProductSet();

	JProductSet getJProductSetById(Integer id);
}
