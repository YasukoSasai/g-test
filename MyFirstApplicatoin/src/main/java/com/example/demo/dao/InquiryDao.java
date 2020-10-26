package com.example.demo.dao;

import java.util.List;

import com.example.demo.entity.Inquiry;
import com.example.demo.entity.Question;

public interface InquiryDao {
	
	void insertInquiry(Inquiry inquiry);
	
	int updateInquiry(Inquiry inquiry);
	
	List<Inquiry> getAll();
	
	Question getQuestion(int id, int categoryId);

}




