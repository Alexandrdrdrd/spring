package com.sasha.spring.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeesDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }

//    @RequestMapping("/showEmpDetail")
//    public String showEmpDetails() {
//        return "show-emp-deta/showEmpDetailils-view";
//    }
//    @RequestMapping("/showEmpDetail")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//        String empName = request.getParameter("employeeName");
//        empName = "Mr" + empName;
//        model.addAttribute("EmployeeName", empName);
//        model.addAttribute("description", "student of nure");
//        return "show-emp-details-view";
//    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") Employee emp){


        return "show-emp-details-view";
    }






}
