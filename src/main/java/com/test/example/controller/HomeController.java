package com.test.example.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {

	
	@RequestMapping(value="/zip-codes", method=RequestMethod.GET)
	public ResponseEntity<String> zipcode(@RequestParam("zip-code") int zipCode) throws IOException {
		
		String file = "C:\\Users\\mau_b\\Downloads\\Libro1.xlsx";
		FileInputStream fis = new FileInputStream(new File(file));
        XSSFWorkbook workbook = new XSSFWorkbook(fis);
        XSSFSheet sheet = workbook.getSheetAt(0);
        int rowTotal = sheet.getLastRowNum() +1;
        int cellTotal = sheet.getRow(0).getLastCellNum();
        boolean flagZP = false;
        JSONObject json = new JSONObject();
        JSONObject json1 = new JSONObject();
        int v = 0;
        for(int r = 0; r < rowTotal; r++) {
        	if(r != 0) { //header is ignored
        		XSSFRow row = sheet.getRow(r);
        		for(int c = 0; c < cellTotal; c++) {
        			Cell cell = row.getCell(c);
        			if(c == 0) {
	        			v = (int) cell.getNumericCellValue();
        				if (v == zipCode) flagZP = true;
        			}
        			if(flagZP) {
        				switch(c) {
	        				case 0:
	        					json.put("zip_code", zipCode);
	        					break;
	        				case 1:
	        					json.put("federal_entity", cell);
	        					break;
	        				case 2:
	        					json.put("municipality", cell);
	        					break;
	        				case 3:
	        					json.put("locality", cell);
	        					break;
	        				case 4:
	        					json.put("settlements", json1.put("settlement_type", cell));
	        					break;
	        				case 5:
	        					json1.put("name", cell);
	        					break;
        				}
        			}
        		}
        	}
        	if(flagZP) {
        		break;
        	}
        }
        return new ResponseEntity<String>(json.toString(),HttpStatus.OK);
        
	}
        
}
