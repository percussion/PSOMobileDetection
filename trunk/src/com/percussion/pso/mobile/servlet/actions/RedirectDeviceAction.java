package com.percussion.pso.mobile.servlet.actions;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import net.sourceforge.wurfl.core.Device;


public class RedirectDeviceAction extends DefaultDeviceAction {
  private Log log = LogFactory.getLog(RedirectDeviceAction.class);
		
	private String regex;
	private Pattern pattern;
	private String replacement;
	
	public boolean runAction(Device dev, HttpServletRequest req,
		HttpServletResponse res) {
		
		Matcher matcher = pattern.matcher(req.getRequestURI());
		String newUrl = matcher.replaceAll(replacement);
	
		if (log.isDebugEnabled()) {
			log.debug("Original Uri  " + req.getRequestURI());
			log.debug("Redirecting to " + newUrl);
		}
		try {
			res.sendRedirect(newUrl);
		} catch (IOException e) {
			log.error("Cannot redirect to "+newUrl,e);
		}
  
    	return false;
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
