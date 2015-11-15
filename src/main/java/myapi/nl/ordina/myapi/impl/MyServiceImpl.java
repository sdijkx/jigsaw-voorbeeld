package nl.ordina.myapi.impl;
import nl.ordina.myapi.MyService;
import nl.ordina.myapi.formatter.MyFormat;
import java.util.logging.Logger;


public class MyServiceImpl implements MyService {

	private static final Logger logger = Logger.getLogger(MyServiceImpl.class.getName());

	private MyFormat myFormat = new MyFormat();


	//internal call
	public String serviceCall() {
		return myFormat.format("say something");
	}

	//expose logging api to other module
	public Logger getServiceLogger() {
		return logger;
	}

}
