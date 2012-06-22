package com.percussion.pso.mobile.servlet.actions;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.wurfl.core.Device;

import org.apache.commons.jexl.JexlContext;
import org.apache.commons.jexl.JexlHelper;
import org.apache.commons.jexl.Script;
import org.apache.commons.jexl.ScriptFactory;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.percussion.pso.mobile.servlet.filters.IDeviceAction;

public class ScriptDeviceAction extends DefaultDeviceAction {
	private Log log = LogFactory.getLog(ScriptDeviceAction.class);

	private Script e = null;
	private String script;
	private IDeviceAction defaultAction;

	public String getScript() {
		return script;
	}
	public void setScript(String script) {
		this.script = script;
		try {
			e=ScriptFactory.createScript(script);
		} catch (Exception e) {
			log.error("Cannot compile script :"+script);
		}
	}
	public IDeviceAction getDefaultAction() {
		return defaultAction;
	}
	public void setDefaultAction(IDeviceAction defaultAction) {
		this.defaultAction = defaultAction;
	}
	@SuppressWarnings("unchecked")
	public boolean runAction(Device dev, HttpServletRequest req,
			HttpServletResponse res) {
		String result="default";
		if (dev != null)  {
			Map capabilities = dev.getCapabilities();

			if(log.isDebugEnabled()) {
				log.debug("brand" + capabilities.get("brand_name"));
				log.debug("id" + dev.getId());
			}

			JexlContext jc = JexlHelper.createContext();
			jc.getVars().put("cap", dev.getCapabilities() );
			jc.getVars().put("p", req.getRequestURI() );

			try {
				Object obResult = e.execute(jc);
				if (obResult != null) result = e.execute(jc).toString();	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			log.debug("script result : " + result);
		} else {
			// Device detect turned off trying to get theme from cookie
			log.debug("Detect turned off geting theme from cookie");
			result = getCookieValue(req.getCookies(), "DeviceTheme", "default");

		}
		log.debug("result="+result);
		if (result.length()>0) {
			for (IDeviceAction action : actions)  {
				if (action.getName().equalsIgnoreCase(result)) {
					log.debug("found action : " + result);
					Cookie userCookie = new Cookie("DeviceTheme", result);
					res.addCookie(userCookie);
					Cookie detectCookie = new Cookie("NoDetect", "true");
					res.addCookie(detectCookie);
					return action.runAction(dev, req, res);
				}
			}
		}
		return defaultAction.runAction(dev, req, res);
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
