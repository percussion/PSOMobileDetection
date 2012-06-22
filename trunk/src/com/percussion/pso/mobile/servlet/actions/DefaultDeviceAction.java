package com.percussion.pso.mobile.servlet.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.wurfl.core.Device;

import com.percussion.pso.mobile.servlet.filters.IDeviceAction;

public class DefaultDeviceAction implements IDeviceAction {

	protected String name;
	@SuppressWarnings("unused")
	protected List<IDeviceAction> actions;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}

	public boolean runAction(Device dev, HttpServletRequest req,
			HttpServletResponse res) {
		return true;
	}

	public void setActions(List<IDeviceAction> actions) {
		this.actions=actions;
	}

	
	

}
