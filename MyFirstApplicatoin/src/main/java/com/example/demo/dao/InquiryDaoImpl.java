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
		String sql = "SELECT * FROM gQuestions ORDER BY questionNumber ASC;";
		// SQLを実行し、データベースから値(オブジェクト)を取得
		List<Map<String, Object>> resultList = jdbcTemplate.queryForList(sql);
		//GQuestion型のオブジェクトを配列（リスト）にするための変数宣言
		List<GQuestion> list = new ArrayList<GQuestion>();
		for(Map<String, Object> result : resultList) {
			// questionインスタンスを作成(Entityのclass)
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

	@Override
	public void insertGQuestion(GQuestion gquestion) {
		String choice1 = gquestion.getChoices()[0];
		String choice2 = gquestion.getChoices()[1];
		String choice3 = gquestion.getChoices()[2];
		String choice4 = gquestion.getChoices()[3];
		String sql = "INSERT INTO gQuestions(question, choice1, choice2, choice3, choice4, answer, explanation) VALUES(?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, 
				gquestion.getQuestion(), choice1, choice2, choice3, choice4, gquestion.getAnswer(), gquestion.getExplanation());
	}

	@Override
	public void deleteGQuestion(int questionNumber) {
		// questionNumberを指定して削除
		jdbcTemplate.update("DELETE FROM gQuestions WHERE questionNumber = ?", questionNumber);
		// 自動連番の設定値をgQuestionsテーブルのレコード数の最大値にセットする。
		jdbcTemplate.execute("SELECT setval('gquestions_questionnumber_seq', (SELECT MAX(questionnumber) FROM gquestions));");
	}
	
	@Override
	public void updateGQuestion(GQuestion gquestion) {
		String choice1 = gquestion.getChoices()[0];
		String choice2 = gquestion.getChoices()[1];
		String choice3 = gquestion.getChoices()[2];
		String choice4 = gquestion.getChoices()[3];
		System.out.println(choice1);
		System.out.println(choice2);
		System.out.println(choice3);
		System.out.println(choice4);
		String sql = "UPDATE gQuestions SET question=?, choice1=?, choice2=?, choice3=?, choice4=?, answer=?, explanation=?  WHERE questionNumber=?;";
		jdbcTemplate.update(sql, 
				gquestion.getQuestion(), choice1, choice2, choice3, choice4, gquestion.getAnswer(), gquestion.getExplanation(), gquestion.getQuestionNumber());
	}

	@Override
	public GQuestion getGQuestion1(int questionNumber) {
		System.out.println("aaaaaaaaaaa");
		String sql = "select * from gquestions where questionnumber = ?;";
		Map<String, Object> result = jdbcTemplate.queryForMap(sql, questionNumber);
		GQuestion gQuestion = new GQuestion();
		String[] choiceArray = new String[4];
		choiceArray[0] = (String)result.get("choice1");
		choiceArray[1] = (String)result.get("choice2");
		choiceArray[2] = (String)result.get("choice3");
		choiceArray[3] = (String)result.get("choice4");
		gQuestion.setQuestionNumber((int)result.get("questionNumber"));
		gQuestion.setQuestion((String)result.get("question"));
		gQuestion.setChoices(choiceArray);
		gQuestion.setAnswer((int)result.get("answer"));
		gQuestion.setExplanation((String)result.get("explanation"));
		return gQuestion;
	}
	
	
}