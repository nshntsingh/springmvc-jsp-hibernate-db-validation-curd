package springcurdproject.controller;

import java.lang.ProcessBuilder.Redirect;




import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import antlr.collections.List;
import springcurdproject.dao.ProductDao;
import springcurdproject.model.Product;



@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;                                // get object of product dao in controller
	 
	
	@RequestMapping("/")
	public String home(Model m)         // model object is used to add data to view page
	{
	java.util.List<Product> products=productDao.getProducts();      // get data of productdao 
		m.addAttribute("products", products);    // add data in ("key",value)pair
		return "index";                    // return jsp page
		
	}
	
	//Show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add-product");    // value given with help of "title"
		return "add_product_form";                // return jsp page
	}
	
	//handle add product form
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		
		System.out.println(product);
		productDao.createProduct(product);              // add data in database
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");    
		return redirectView;
	}
	
/*	// validate 
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	    public boolean validate(@RequestParam String name,@RequestParam String email, @RequestParam int age)
	    {
		System.out.println("HOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
	    java.util.List<Product> list=productDao.getProducts();
	    for(Product product: list)
	    {
	    	if(product.getEmail().equalsIgnoreCase(email))
	    	{
	    		return true;
	    	}
	    }
	    return false;
	    }
	
*/	
	
	// delete handle
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request)
	{
		this.productDao.deleteProduct(productId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model model)
	{
		Product product=this.productDao.getProduct(pid);
		model.addAttribute("product",product);
		return "update_Form";
	}

}
