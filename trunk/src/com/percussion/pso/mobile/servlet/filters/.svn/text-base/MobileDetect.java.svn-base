package com.percussion.pso.mobile.servlet.filters;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.wurfl.core.Device;
import net.sourceforge.wurfl.core.WURFLHolder;
import net.sourceforge.wurfl.core.WURFLManager;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;



public class MobileDetect implements Filter {
	private Log log = LogFactory.getLog(MobileDetect.class);

	private IDeviceAction deviceAction;
	private FilterConfig filterConfig = null;

	public void init(FilterConfig filterConfig) 
	throws ServletException {
		this.filterConfig = filterConfig;
	}
	public void destroy() {
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		boolean detect = !getCookieValue(request.getCookies(), "NoDetect", "false").equals("true");

		String forceDetect = request.getParameter("forcedetect");
		if (forceDetect!= null && forceDetect.equals("true")) {
			detect=true;
		}
		//Get Spring context


		Device device = null;
		if (detect) {
			log.debug("Detecting Device");
			WURFLHolder wurflHolder = (WURFLHolder) filterConfig.getServletContext()
			.getAttribute("net.sourceforge.wurfl.core.WURFLHolder");

			WURFLManager wurfl = wurflHolder.getWURFLManager();

			device = wurfl.getDeviceForRequest(request);

		} 
		//Get the IP address of client machine.
		String ipAddress = request.getRemoteAddr();

		//Log the IP address and current timestamp.
		if (log.isDebugEnabled()) {
			log.debug("IP "+ipAddress + ", Time "
				+ new Date().toString());
			log.debug("agent = "+request.getHeader("User-Agent"));

		}



		
		boolean cont = true;
		if ( deviceAction != null) {
			
			if (log.isDebugEnabled()) {
				log.debug("Running action" +deviceAction.getName());
				if (device != null) {
					log.debug("device is "+device.getId());
				} else {
					log.debug("Did not re detect device");
				}}
			cont &= deviceAction.runAction(device, request,response);
		}

		if (cont) chain.doFilter(req, res);

	}


	public IDeviceAction getDeviceAction() {
		return deviceAction;
	}

	public void setDeviceAction(IDeviceAction deviceAction) {
		this.deviceAction = deviceAction;
	}

	public static String getCookieValue(Cookie[] cookies,
			String cookieName,
			String defaultValue) {
		if (cookies!= null) {
			for(int i=0; i<cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookieName.equals(cookie.getName()))
					return(cookie.getValue());
			}
		}
		return(defaultValue);
	}


}