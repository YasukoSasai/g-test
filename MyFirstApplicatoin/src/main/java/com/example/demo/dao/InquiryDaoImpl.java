package com.example.demo.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.GQuestion;
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
		// SQLを実行し、データベースから値(オブジェクト)を取得
		Map<String, Object> result = jdbcTemplate.queryForMap(sql, categoryId, questionId);
		// questionインスタンスを作成(Entityのclass)
		Question question = new Question();
		
		String[] choiceArray = new String[4];
		choiceArray[0] = (String)result.get("choice1");
		choiceArray[1] = (String)result.get("choice2");
		choiceArray[2] = (String)result.get("choice3");
		choiceArray[3] = (String)result.get("choice4");
		
		// questionインスタンスに値をsetする。
		question.setuId((int)result.get("uId"));
		question.setCategoryId((int)result.get("categoryId"));
		question.setQuestionId((int)result.get("questionId"));
		question.setQuestionContent((String)result.get("questionContent"));
		question.setAnswer((String)result.get("answer"));
		question.setExplanation((String)result.get("explanation"));
		question.setChoices(choiceArray);
		//インスタンス
		return question;
	}
	
	@Override
	public List<Question> getCategory(int categoryId) {
		String sql = "SELECT * FROM questions WHERE categoryId = ?";
		// SQLを実行し、データベースから値(オブジェクト)を取得
		List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql, categoryId);
		// questionインスタンスを作成(Entityのclass)
		List<Question> list = new ArrayList<Question>();
		for(Map<String, Object> result : resultList) {
			Question question = new Question();
			String[] choiceArray = new String[4];
			choiceArray[0] = (String)result.get("choice1");
			choiceArray[1] = (String)result.get("choice2");
			choiceArray[2] = (String)result.get("choice3");
			choiceArray[3] = (String)result.get("choice4");
			
			// questionインスタンスに値をsetする。
			question.setuId((int)result.get("uId"));
			question.setCategoryId((int)result.get("categoryId"));
			question.setQuestionId((int)result.get("questionId"));
			question.setQuestionContent((String)result.get("questionContent"));
			question.setAnswer((String)result.get("answer"));
			question.setExplanation((String)result.get("explanation"));
			question.setChoices(choiceArray);
			list.add(question);
		}
		return list;
	}

	@Override
	public List<GQuestion> getGQuestions() {
		String sql = "SELECT * FROM gQuestions";
		// SQLを実行し、データベースから値(オブジェクト)を取得
		List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql);
		// questionインスタンスを作成(Entityのclass)
		List<GQuestion> list = new ArrayList<GQuestion>();
		for(Map<String, Object> result : resultList) {
			GQuestion gQuestion = new GQuestion();
			String[] choiceArray = new String[4];
			choiceArray[0] = (String)result.get("choice1");
			choiceArray[1] = (String)result.get("choice2");
			choiceArray[2] = (String)result.get("choice3");
			choiceArray[3] = (String)result.get("choice4");
			// questionインスタンスに値をsetする。
			gQuestion.setQuestionNumber((int)result.get("questionNumber"));
			gQuestion.setQuestion((String)result.get("question"));
			gQuestion.setChoices(choiceArray);
			gQuestion.setAnswer((int)result.get("answer"));
			gQuestion.setExplanation((String)result.get("explanation"));
			list.add(gQuestion);
		}
		return list;
	}

}