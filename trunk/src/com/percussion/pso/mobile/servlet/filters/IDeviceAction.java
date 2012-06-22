package com.percussion.pso.mobile.servlet.filters;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sourceforge.wurfl.core.Device;

public interface IDeviceAction {
	public String getName();
	public void setName(String name);
	public boolean runAction(Device dev, HttpServletRequest req, HttpServletResponse res);
	public void setActions(List<IDeviceAction> actions);
}
