package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Entity.Employee;
import com.example.demo.Entity.Employeeinfo;
import com.example.demo.Repository.*;

import jakarta.servlet.http.HttpSession;



@Controller
public class UserController {

    @Autowired
    private EmployeeRepository repo;
   
    @Autowired
    private InfoEmployeeRepository addrepo;
    
    @RequestMapping("/")
    public String mainpage() {
        return "Main";
    }

    @RequestMapping("/Signup_page")
    public String Signuppage(@ModelAttribute("employee") Employee employee) {
        return "Signup_page";
    }

    @RequestMapping("/Signupsuccess")
    public String signinsucess(@ModelAttribute Employee signupsave)
    {
    	repo.save(signupsave);
		return "Main";
    }
    //-------------------Signin page end -------------------------------------------
    
    @RequestMapping("/Login")
    public String Loginpage()
    {
		return "Login";
    }
    @RequestMapping("/loguser")
    public String log_in(@RequestParam String email, @RequestParam String password, Model model, HttpSession userLog) {
        System.out.println(email);
        System.out.println(password);
        int status = 0;
        Employee emp = repo.findByEmail(email);

       
        if (emp != null && emp.getEmail().equals(email) && emp.getPassword().equals(password)) {
            status++;
            userLog.setAttribute("loggedin", emp);
        }

        if (status > 0) {
            return "Home"; 
        } else {
            return "Login"; 
        }
    }

    //----------------------------------------Login Page End -----------------------------------------------------
    //-----------------------Home page start----------------------------------------------------------------------
     
    @RequestMapping("/AddEmployee")
    public String AddEmloyee()
    {
		return "AddEmployee";	
    }
    @RequestMapping("/Addsuccess")
    public String AddEmployeesuccess(@ModelAttribute Employeeinfo addemp, Model model) {
        addrepo.save(addemp);
        return "Home";
    }

    @RequestMapping("/ListAllData")
    public String viewData(Model model) {
        List<Employeeinfo> employeeList = addrepo.findAll();
        model.addAttribute("employeeList", employeeList); 
        System.out.println(employeeList);
        return "ViewData";
    }
    @RequestMapping("delete/{id}")
	public String dlt_emp(@PathVariable long id)
	{
    	addrepo.deleteById(id);
    	return "redirect:/ListAllData";
	}
    @GetMapping("/edit/{id}")
   	public String editData( @PathVariable long id, Model m)
   	{
   		Employeeinfo emp= addrepo.findById(id).orElse(null);
   		m.addAttribute("empp",emp); 
   		return "Update";
   	}
   	
   	
   	 @PostMapping("/Update/{id}")
   	 public String updateData(@PathVariable long id,@ModelAttribute Employeeinfo updatedemp)
   	 {
   		Employeeinfo emp= addrepo.findById(id).orElse(null);
   		 if(emp!=null)
   		 {   
   			 emp.setName(updatedemp.getName());
   			 emp.setCity(updatedemp.getCity());
   			 emp.setContacts(updatedemp.getContacts());
   			emp.setDepartment(updatedemp.getDepartment());
   			emp.setSalary(updatedemp.getSalary());
   			 
   			 addrepo.save(emp);
   		 }
   		 
   		 return "redirect:/ListAllData";
   	 }
   	 @RequestMapping("Home")
   	 public String viewonhome()
   	 {
   		 return "Home";
   	 }
    @GetMapping("/logout")
	public String logout(HttpSession userLog) {
		userLog.invalidate();
		return "redirect:/login"; 
	}
}
