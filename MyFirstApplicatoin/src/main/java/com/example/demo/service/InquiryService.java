package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.GQuestion;
import com.example.demo.entity.Inquiry;
import com.example.demo.entity.Question;

public interface InquiryService {
	
	void save(Inquiry inquiry);

	void update(Inquiry inquiry);
	
	List<Inquiry> getAll();
	
	Question getQuestion(int categoryId, int questionId);
	
	List<Question> getCategory(int categoryId);
	
	
//	GQuestion用
	List<GQuestion> getGQuestions();
	
	void insertGQuestion(GQuestion gquestion);

	void deleteGQuestion(int questionNumber);
	
	void updateGQuestion(GQuestion gquestion);
	
	GQuestion getGQuestion1(int questionNumber);
}
