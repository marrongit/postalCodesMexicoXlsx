package com.test.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/uploadProduct")
public class UploadProduct {

	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(ModelMap model) {
		return "/uploadProduct";
	}
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	public String index(ModelMap model,@RequestParam("titulo") String titulo,@RequestParam("desc") String desc,
			@RequestParam("precio") String precio,@RequestParam("rNuevo") String nuevo,
			@RequestParam("rUsado") String usado,@RequestParam("promocion") String promocion,
			@RequestParam("descuento") String descuento) {
		return "/uploadProduct";
	}
}
