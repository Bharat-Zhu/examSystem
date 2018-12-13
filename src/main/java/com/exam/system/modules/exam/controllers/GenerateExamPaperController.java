package com.exam.system.modules.exam.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/exam")
public class GenerateExamPaperController {

    @RequestMapping(value = "/createExamPaper", method = RequestMethod.GET)
    public ModelAndView actionCreateExamPaper() {
        return new ModelAndView("modules/exam/exam_release.page");
    }
}
