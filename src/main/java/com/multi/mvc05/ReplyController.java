package com.multi.mvc05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //ReplyController replyController = new ReplyController();
public class ReplyController {

	@Autowired
	ReplyDAO replyDAO;
	
	@RequestMapping("insert4") //ajax호출!
	//ajax호출은 views/insert4.jsp를 만들지 않으면 ajax호출 404에러가 뜬다. 
	public void insert(ReplyDTO replyDTO) {
		System.out.println(replyDTO);
		int result = replyDAO.insert(replyDTO);
		System.out.println("reply insert 결과 >>" + result);
	}
}