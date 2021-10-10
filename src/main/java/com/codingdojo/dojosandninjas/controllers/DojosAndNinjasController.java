package com.codingdojo.dojosandninjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.services.DojoService;
import com.codingdojo.dojosandninjas.services.NinjaService;

@Controller

public class DojosAndNinjasController {
	
	@Autowired
	NinjaService ninjaService;
	
	@Autowired
	DojoService dojoService;
	
	
@RequestMapping("/dashboard")
public String dashboard()
{
		return "index.jsp";
}

@RequestMapping("/dojos/new")
public String dojoForm(@ModelAttribute ("dojo") Dojo dojo) 
{
	return "/dojos/form.jsp";
}

@RequestMapping(value="/dojo/post", method=RequestMethod.POST)
public String createDojo (@Valid @ModelAttribute("dojo") Dojo dojo,
							BindingResult result)
{
	if (result.hasErrors()) {
		return "/dojos/form.jsp";
	} else {
		dojoService.createDojo(dojo);
		return "redirect:/dashboard";
	}
}

@RequestMapping("/ninjas/new")
public String ninjaForm(@ModelAttribute ("ninja") Ninja ninja, 
						Model model )
{
	List<Dojo> allDojos = dojoService.allDojos();
	
	model.addAttribute("dojos", allDojos);
	
	return "/ninjas/form.jsp";
}

@RequestMapping(value="/ninja/post", method=RequestMethod.POST)
public String createNinja (@Valid @ModelAttribute("ninja") Ninja ninja,
					BindingResult result)
{
	if(result.hasErrors()) {
		return "/ninjas/form.jsp";
	} else {
		ninjaService.createNinja(ninja);
		return "redirect:/dashboard";
	}

}
@RequestMapping("dojos/{id}")
public String ninjasInDojo (@PathVariable("id") Long id, 
							Model model)
{
	Dojo dojo = dojoService.findDojo(id);
	
	model.addAttribute("dojo", dojo);
	
	return "index.jsp";
}




}