package com.example.demo.app;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.GQuestion;
import com.example.demo.entity.Question;
import com.example.demo.service.InquiryService;

@RestController
public class RestfullController {
	
private final InquiryService inquiryService;
	
	@Autowired
	public RestfullController(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}
	
	@CrossOrigin
	@GetMapping("/question/{categoryId}/{questionId}")
    public Question getHello(
    		@PathVariable("categoryId") int categoryId, 
			@PathVariable("questionId") int questionId ) {
		Question question = inquiryService.getQuestion(categoryId, questionId);
        return question;
    }
	
	@CrossOrigin
	@GetMapping("/category/{categoryId}")
    public List<Question> getHello(
    		@PathVariable("categoryId") int categoryId) {
		List<Question> list = inquiryService.getCategory(categoryId);
        return list;
    }
	//これだけ実行
	//[説明]https://qiita.com/NagaokaKenichi/items/0647c30ef596cedf4bf2
	@CrossOrigin
	@GetMapping("/g_questions")
    public List<GQuestion> getHello() {
		List<GQuestion> list = inquiryService.getGQuestions();
        return list;
    }
	
}
