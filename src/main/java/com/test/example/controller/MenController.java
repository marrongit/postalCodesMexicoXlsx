package com.test.example.controller;

import javax.servlet.http.HttpServletRequest;

import org.bson.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

@Controller
public class MenController {

	@RequestMapping(value="/menCategory", method=RequestMethod.GET)
	public String showMenCategory(ModelMap model) {
		MongoDatabase db = new MongoClient("localhost",27017).getDatabase("testWeb");
		MongoCollection<Document> collection = db.getCollection("camisas");
		FindIterable<Document> iterable = collection.find(new Document().append("genero", "M"));
		MongoCursor<Document> cursor = iterable.cursor();
		model.addAttribute("shirts",cursor);
		return "/men";
	}
}
