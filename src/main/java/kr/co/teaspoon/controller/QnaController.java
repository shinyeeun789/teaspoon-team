package kr.co.teaspoon.controller;


import kr.co.teaspoon.dto.Qna;
import kr.co.teaspoon.service.QnaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

    @Autowired
    private QnaService qnaService;

    @GetMapping("list.do")
    public String getQnaList(Model model) throws Exception {
        List<Qna> qnaList = qnaService.qnaList();
        model.addAttribute("qnaList", qnaList);
        return "/qna/qnaList";
    }
}
