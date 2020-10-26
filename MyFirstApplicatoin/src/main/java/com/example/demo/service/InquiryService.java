package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.Inquiry;
import com.example.demo.entity.Question;

public interface InquiryService {
	
	void save(Inquiry inquiry);

	void update(Inquiry inquiry);
	
	List<Inquiry> getAll();
	
	Question getQuestion(int id, int categoryId);

}
