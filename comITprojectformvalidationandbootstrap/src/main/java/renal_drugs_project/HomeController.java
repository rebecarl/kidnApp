package renal_drugs_project;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/app")
public class HomeController {
	
	private DrugService drugservice;
	
	public HomeController (DrugService drugService) {
		drugservice = drugService;
	}
		
	@ModelAttribute("form")
	public Form initForm() {
		return new Form();
	}
	
	@ModelAttribute("drugs")
	public List<Drug> initDrugList() {
		List<Drug> drugs = drugservice.findAll();
		return drugs;
	}
	
	
	
	@GetMapping ("/")
	public String main(Model model){
		model.addAttribute("notes", "");
		model.addAttribute("references", "");
		model.addAttribute("noChange", "");
		return "helloworld";
	}
	
	@PostMapping("/")
	public String processInput(@Valid Form form, BindingResult bindingResult, Model model) {
		
		if (bindingResult.hasErrors()) {
			return "helloworld";
		}
		
		H
		
		Drug drug = drugservice.findById(form.getDrugId());
		
		int cutoff = drug.getCutoff();
		
		int inputGfr = form.getGfr();
		
		
		if (inputGfr < cutoff) {
			// display notes and references of drug
			model.addAttribute("notes", drug.getNotes());
			//System.out.println(drug.getNotes());
			model.addAttribute("references", drug.getReferences());
			//System.out.println(drug.getReferences());
			model.addAttribute("noChange", "");
			
		} else {
			// display no changes needed
			String noChangeMessage = "No Changes Needed";
			model.addAttribute("noChange", noChangeMessage);
			model.addAttribute("notes", "");
			model.addAttribute("references", "");
		}
		
		return "helloworld";
	}
	

}
