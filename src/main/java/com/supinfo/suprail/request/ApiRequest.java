package com.supinfo.suprail.request;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;


public class ApiRequest {
	
	public static String sendGETRequest(String url) throws IOException {
		URL link = new URL(url);
        HttpURLConnection connection = (HttpURLConnection)link.openConnection();
        connection.setRequestMethod("GET");
        connection.setRequestProperty("Accept-Charset", "UTF-8");
        connection.setConnectTimeout(10000); //set timeout to 10 seconds
		BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		return response.toString(); 
	}
	
	@SuppressWarnings("deprecation")	
	public static String sendPOSTRequest(String req_url, String json) throws IOException{
		HttpParams httpParameters = new BasicHttpParams();
        int timeoutConnection = 12000;
        HttpConnectionParams.setConnectionTimeout(httpParameters, timeoutConnection);
        int timeoutSocket = 15000;
        HttpConnectionParams.setSoTimeout(httpParameters, timeoutSocket);

        HttpClient hc = new DefaultHttpClient(httpParameters);
        HttpPost p = new HttpPost(req_url);
        p.setEntity(new StringEntity(json, "UTF8"));
        p.setHeader("Content-type", "application/json");
        HttpResponse resp = hc.execute(p);
        String jsonReturn = EntityUtils.toString(resp.getEntity());
		
		return jsonReturn; 
	}
}
