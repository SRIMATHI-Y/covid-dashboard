package com.covid.model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.SplittableRandom;

public class sendmes {
	public void sendOTP(String otpStr, String mobileNumber) {
		try {
			//api key value generated from textLocal is stored in object
			String apiKey = "apiKey="+"Qq8BM0REvFs-hkdGggweN3Dmkz8e2SfbUhsZPTfWLI";

			//message to be sent to user in encoded here
			String message = "&message=" + URLEncoder.encode("your otp is"+ otpStr, "UTF-8");

			//mobile number to which the otp is to be sent is provided here..
			String numbers = "&numbers=" + mobileNumber;

			//apiURL is provided here
			String apiURL = "https://api.textlocal.in/send/?" + apiKey + message + numbers;

			//URL class gateway to resource on internet
			URL url = new URL(apiURL);

			//obj to get connection
			URLConnection conn = url.openConnection();
			conn.setDoOutput(true);

			BufferedReader br = new BufferedReader(new
			InputStreamReader(conn.getInputStream()));

			String line = "";
			StringBuffer sb = new StringBuffer();
			while( (line = br.readLine()) != null) {
			sb.append(line).append("\n");
			}
			System.out.println(sb.toString());

			}
			catch (Exception e) {
			e.printStackTrace();
			}
			}

			// generate otp method
			public String generateOTP(int otpLength) {

			//obj used to produce pseudo random numbers
			SplittableRandom sr = new SplittableRandom();

			//obj to store generated otp value
			StringBuilder sb = new StringBuilder();

			//random number generated and stored in sb object
			for(int i = 0; i < otpLength; i++) {
			sb.append(sr.nextInt(0, 10));
			}

			return sb.toString();
			}
}
