package co.grandcircus.mcvpizzaapp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PiazzaController {
	
	@RequestMapping("/")
	public String homepage() {
		return "index";
		
	}
	
	@RequestMapping("/specialPizza")
	public static String specialPizza(@RequestParam String type, @RequestParam double price, Model model) {
		model.addAttribute("type", type);
		model.addAttribute("price", price);
		
		return "specialPizza";
	}
	
	@RequestMapping("/review")
	public String review() {
		return "review";
		
	}
	
	@RequestMapping("/reviewSubmit")
	public String reviewSubmit(Model model, @RequestParam String name, 
			@RequestParam String rating, @RequestParam String comment) {
		
		model.addAttribute("name", name);
		model.addAttribute("rating", rating);
		model.addAttribute("comment", comment);
		
		return "reviewSubmit";
		
	}
	
	@RequestMapping(value="/form", method = RequestMethod.GET)
	public String showForm( Model model) {
		List<String> list = getList();
		String topping = new String("/form");
		model.addAttribute("list", list);
		return "form";
		
	}
	
	@RequestMapping("/showForm-submit")
	public String submitForm(Model model, @RequestParam String size,
			@RequestParam int quantity, @RequestParam String instructions, 
			@RequestParam(value="glutenfreerequired", required = false,  defaultValue = "true")String glutenfree)
	{
		
		model.addAttribute("size", size);
		model.addAttribute("quantity", quantity);
		model.addAttribute("glutenfree", glutenfree);
		model.addAttribute("instructions", instructions);
		
		
		double price = 0.0;
		int numToppings = Integer.valueOf(quantity);
		//double fprice =  Double.valueOf(price);
		if(size.equals("Small")) {
			
			price += 7.00;
			price += 0.5 * numToppings;
			
		}else if(size.equals("Medium")) {
			price += 10;
			price += 0.5* numToppings;
		}else if(size.equals("large")) {
			price += 12;
			price += 0.5 * numToppings;
		}else {
			price += 14;
			price += 0.5 * numToppings;
		}
		
		if(glutenfree.equals("true")) {
			price += 2;
			
		}
		
		
		
		model.addAttribute("price", price);
		
		return "formResult";
		
	}
	
	public List<String> getList() {

		List<String> list = new ArrayList<String>();
		list.add("Pepperoni");
		list.add("Ham");
		list.add("Beef");
		list.add("Sausage");
		list.add("Bacon");
		list.add("Onions");
		list.add("Spinach");
		list.add("Mushrooms");
		list.add("Green Peppers");
		list.add("Tomatoes");
		list.add("Olives");
		list.add("Feta Cheese");
		list.add("Chedder Cheese");
		list.add("Extra Cheese");
		list.add("Extra Sauce");

		return list;
	}

}
