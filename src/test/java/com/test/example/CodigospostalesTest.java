package com.test.example;

import static org.junit.Assert.*;

import java.io.IOException;
import org.json.JSONObject;
import org.junit.Test;
import org.springframework.http.ResponseEntity;

import com.test.example.controller.HomeController;

public class CodigospostalesTest {


	
	@Test
	public void testZipCode() throws IOException {
		ResponseEntity<String> response = new HomeController().zipcode(1220);
		JSONObject json = new JSONObject(response.getBody());
		boolean expected = true;
		boolean actual = json.length() > 0 ? true: false;
		assertEquals(expected, actual);
	}

}
