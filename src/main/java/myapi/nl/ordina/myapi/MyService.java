package nl.ordina.myapi;

import nl.ordina.myapi.impl.MyServiceImpl;

import java.util.logging.Logger;

public interface MyService {

	static MyService newInstance() {
		return new MyServiceImpl();
	}

	//Public service calll
	public String serviceCall();
	//expose Logger api to other module
	public Logger getServiceLogger();

}
