package com.supinfo.suprail.request;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
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
	public static String sendPOSTRequest(String req_url, List<NameValuePair> param_map) throws IOException{
		HttpClient httpclient = HttpClients.createDefault();
		HttpPost httppost = new HttpPost(req_url);

		httppost.setEntity(new UrlEncodedFormEntity(param_map, "UTF-8"));

		//Execute and get the response.
		HttpResponse response = httpclient.execute(httppost);
		
		String jsonReturn = EntityUtils.toString(response.getEntity());
		
		return jsonReturn;
	}
}
