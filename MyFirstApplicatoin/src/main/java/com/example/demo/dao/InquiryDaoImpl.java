package com.example.demo.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Inquiry;
import com.example.demo.entity.Question;

@Repository
public class InquiryDaoImpl implements InquiryDao {
	
	private final JdbcTemplate jdbcTemplate;
	
	@Autowired
	public InquiryDaoImpl(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public void insertInquiry(Inquiry inquiry) {
		jdbcTemplate.update("INSERT INTO inquiry(name, email, contents, created) VALUES(?, ?, ?, ?)",
				inquiry.getName(), inquiry.getEmail(), inquiry.getContents(), inquiry.getCreated());
		

	}

	@Override
	public List<Inquiry> getAll() {
		String sql = "SELECT id, name, email, contents, created, FROM inquiry";
		
		List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql);
		List<Inquiry> list = new ArrayList<Inquiry>();
		for(Map<String, Object> result : resultList) {
			Inquiry inquiry = new Inquiry();
			inquiry.setId((int)result.get("id"));
			inquiry.setName((String)result.get("name"));
			inquiry.setEmail((String)result.get("email"));
			inquiry.setContents((String)result.get("contents"));
			inquiry.setCreated(((Timestamp)result.get("created")).toLocalDateTime());
			list.add(inquiry);
		}
		return list;
	}

	@Override
	public int updateInquiry(Inquiry inquiry) {
		return jdbcTemplate.update("UPDATE inquiry SET name = ?, email = ?. contents = ? WHERE id = ?",
		inquiry.getName(), inquiry.getEmail(), inquiry.getContents(), inquiry.getId());
	}

	@Override
	public Question getQuestion(int categoryId, int questionId) {
		String sql = "SELECT * FROM questions WHERE categoryId = ? AND questionId = ?";
		Map<String, Object> result = jdbcTemplate.queryForMap(sql, categoryId, questionId);
		Question question = new Question();
		question.setuId((int)result.get("uId"));
		question.setCategoryId((int)result.get("categoryId"));
		question.setQuestionId((int)result.get("questionId"));
		question.setQuestionContent((String)result.get("questionContent"));
		question.setAnswer((String)result.get("answer"));
		question.setExplanation((String)result.get("explanation"));
		question.setChoice1((String)result.get("choice1"));
		question.setChoice2((String)result.get("choice2"));
		question.setChoice3((String)result.get("choice3"));
		question.setChoice4((String)result.get("choice4"));
		
		return question;
	}

}