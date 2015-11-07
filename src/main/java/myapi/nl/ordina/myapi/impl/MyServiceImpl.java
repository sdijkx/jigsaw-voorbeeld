package nl.ordina.myapi.impl;
import nl.ordina.myapi.MyService;
import nl.ordina.myapi.internal.MyFormat;
import java.util.logging.Logger;

public class MyServiceImpl implements MyService {

	private static final Logger logger = Logger.getLogger(MyServiceImpl.class.getName());

	private MyClass myClass = new MyClass();

	private MyFormat myFormat = new MyFormat();


	//internal Calll
	public String serviceCall() {
		return myFormat.format(myClass.saySomething());
	}

	//expose api from other module
	public Logger getServiceLogger() {
		return logger;
	}

}
