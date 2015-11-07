package nl.ordina.myapi;

import java.util.logging.Logger;

public interface MyService {

	//internal Calll
	public String serviceCall();
	//expose api from other module
	public Logger getServiceLogger();

}
