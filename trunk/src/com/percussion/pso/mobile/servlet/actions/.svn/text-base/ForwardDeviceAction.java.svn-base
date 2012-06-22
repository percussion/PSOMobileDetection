package com.percussion.pso.mobile.servlet.actions;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.wurfl.core.Device;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class ForwardDeviceAction extends DefaultDeviceAction {
	 private Log log = LogFactory.getLog(ForwardDeviceAction.class);
		
	private String regex;
	private Pattern pattern;
	private String replacement;
	
	public boolean runAction(Device dev, HttpServletRequest req,
		HttpServletResponse res) {
		
		Matcher matcher = pattern.matcher(req.getRequestURI());
		String newUrl = matcher.replaceAll(replacement);
		if (log.isDebugEnabled()) {
			log.debug("Forwarding to " + newUrl);
			log.debug("Original Uri  " + req.getRequestURI());
		}
		RequestDispatcher rd= req.getRequestDispatcher(newUrl);
		try {
			rd.forward(req, res);
			return false;
		} catch (ServletException e) {
			log.error("Cannot forward ",e);
		
		} catch (IOException e) {
			log.error("Cannot forward ",e);
		}
		return true;
	}
	
	public String getRegex() {
		return regex;
	}
	
	public void setRegex(String regex) {
		this.regex = regex;
		pattern = Pattern.compile(regex);
	}
	
	public String getReplacement() {
		return replacement;
	}

	public void setReplacement(String replacement) {
		this.replacement = replacement;
	}

}
