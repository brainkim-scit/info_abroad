package com.project.info_abroad.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "main";
	}
	

	@RequestMapping(value = "/test", produces = "application/text;charset=utf8")
	@ResponseBody
	public String test() {
		String result = "";
		try {
			URL url = new URL("http://www.worldjob.or.kr/openapi/openapi.do?dobType=1&dsptcKsco=01&showItemListCount=6&pageIndex=1");
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String temp;
			while((temp = br.readLine()) != null) {
				result += temp;
			}
			br.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
