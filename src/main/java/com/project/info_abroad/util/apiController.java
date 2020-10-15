package com.project.info_abroad.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class apiController {
	
	HttpURLConnection con;
	
	@RequestMapping(value = "/incruit_status", produces = "application/text;charset=utf8")
	public String incruit_status(@RequestParam(defaultValue = "1")int pageNo, @RequestParam(defaultValue = "01")String code) {
		String result="";
		
		StringBuilder sb = new StringBuilder();
		sb.append("http://www.worldjob.or.kr/openapi/openapi.do?");
		sb.append("dobType=1");
		sb.append("&"+"dsptcKsco="+code);
		sb.append("&"+"showItemListCount=6");
		sb.append("&"+"pageIndex="+pageNo);
		
		try {
			URL url = new URL(sb.toString());
			con = (HttpURLConnection) url.openConnection();
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
	
	@RequestMapping(value = "/statistics", produces = "application/text;charset=utf8")
	public String statistic(
			@RequestParam(defaultValue = "A")String type,
			@RequestParam(defaultValue = "N")String code,
			@RequestParam(defaultValue = "2018")String year
			) {
		String result="";
		StringBuilder sb = new StringBuilder();
		sb.append("http://www.worldjob.or.kr/openapi/overseasEmployment.do?");
		sb.append("gubun="+type);
		sb.append("&item="+code);
		sb.append("&year="+year);
		
		try {
			URL url = new URL(sb.toString());
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
	
	@RequestMapping(value = "/corona_abroad", produces = "application/text;charset=utf8")
	public String corona_abroad(@RequestParam(defaultValue = "1")int pageNo) {
		String result = "";
		StringBuilder sb = new StringBuilder();
		sb.append("http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19NatInfStateJson?");
		sb.append("ServiceKey=88xmBny%2BF5A417RvKIOXjwiNmdFjzgJPOczILxaanDA7v2jRu5pZ8%2BDXf8YKrq7YNdUw2kD8AP9F%2FjUQvyhU%2BQ%3D%3D");
		sb.append("&pageNo="+pageNo);
		sb.append("&numOfRows=6&_type=json");
		try {
			URL url = new URL(sb.toString());
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
	
	@RequestMapping(value = "/news_abroad", produces = "application/text;charset=utf8")
	public String news_abroad(@RequestParam(defaultValue = "1")int pageNo, String country) {
		String result = "";
		StringBuilder sb = new StringBuilder();
		sb.append("http://apis.data.go.kr/1262000/SafetyNewsList/getCountrySafetyNewsList?");
		sb.append("serviceKey=88xmBny%2BF5A417RvKIOXjwiNmdFjzgJPOczILxaanDA7v2jRu5pZ8%2BDXf8YKrq7YNdUw2kD8AP9F%2FjUQvyhU%2BQ%3D%3D");
		sb.append("&numOfRows=6");
		sb.append("&pageNo="+pageNo);
		sb.append("&title1="+country);
		try {
			URL url = new URL(sb.toString());
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
	
	@RequestMapping(value = "about_nation", produces = "application/text;charset=utf8")
	public String about_nation() {
		String result = "";
		try {
			URL url = new URL("http://apis.data.go.kr/1262000/CountryBasicService/getCountryBasicList?serviceKey=88xmBny%2BF5A417RvKIOXjwiNmdFjzgJPOczILxaanDA7v2jRu5pZ8%2BDXf8YKrq7YNdUw2kD8AP9F%2FjUQvyhU%2BQ%3D%3D&numOfRows=197&pageNo=1&_type=json");
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
	
	@RequestMapping(value = "contact_abroad", produces = "application/text;charset=utf8")
	public String contact_abroad(@RequestParam(defaultValue = "1")int pageNo, String country) {
		String result = "";
		StringBuilder sb = new StringBuilder();
		sb.append("http://apis.data.go.kr/1262000/ContactService/getContactList?");
		sb.append("serviceKey=88xmBny%2BF5A417RvKIOXjwiNmdFjzgJPOczILxaanDA7v2jRu5pZ8%2BDXf8YKrq7YNdUw2kD8AP9F%2FjUQvyhU%2BQ%3D%3D");
		sb.append("&numOfRows=6");
		sb.append("&pageNo="+pageNo);
		sb.append("&countryName="+country);
		try {
			URL url = new URL(sb.toString());
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
	
	
	@RequestMapping(value = "status_airport", produces = "application/text;charset=utf8")
	public String status_airport() {
		String result = "";
		try {
			URL url = new URL("http://openapi.airport.kr/openapi/service/StatusOfArrivals/getArrivalsCongestion?serviceKey=88xmBny%2BF5A417RvKIOXjwiNmdFjzgJPOczILxaanDA7v2jRu5pZ8%2BDXf8YKrq7YNdUw2kD8AP9F%2FjUQvyhU%2BQ%3D%3D");
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
