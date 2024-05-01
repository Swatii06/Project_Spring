package com.october.web.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.october.web.model.Experience;
import com.october.web.repository.ExperienceInfo;

@Controller
public class ExperienceController {

	@Autowired
	private ExperienceInfo exprepo;
	
	@GetMapping("/add")
	public String insert() 
	{
		return "addexperience.jsp";
	}
	
	@PostMapping("/add1")
	public String insert1(@RequestBody List<Experience> li)
	{
		exprepo.saveAll(li);
		return "fetchdata";
	}
	
	@RequestMapping("/fetch")
	public String fetchData(Model m)
	{
		List<Experience> li = exprepo.findAll();
		
		m.addAttribute("e_data",li);
		return "fetchdata.jsp";
	}
	
	@RequestMapping("/delete/{srno}")
	public String deletedata(@PathVariable int srno)
	{
		exprepo.deleteById(srno);
		return "redirect:/fetch";
	}
	
	@GetMapping("/{srno}")
	public String update(@PathVariable int srno,Model m)
	{
		Experience ob=exprepo.findById(srno).orElse(null);
		
		m.addAttribute("emp_data",ob);
		
		return "edit.jsp";
	}
    
    @PostMapping("/edit/{srno}")
    public String edit(@PathVariable int srno,@ModelAttribute Experience us)
    {
    	Experience ob = exprepo.findById(srno).orElse(null);
    	if(ob!=null)
    	{
    		ob.setCompanyname(us.getCompanyname());
    		ob.setRole(us.getRole());
    		ob.setStartdate(us.getStartdate());
    		ob.setEnddate(us.getEnddate());
    		
    		exprepo.save(ob);
    	}
    	return "redirect:/fetch";
    }
}
