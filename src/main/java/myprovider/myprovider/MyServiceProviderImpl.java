package myprovider;
import myapi.MyService;
import myapi.spi.MyServiceProvider;

public class MyServiceProviderImpl extends MyServiceProvider {

	public MyService getMyService() {
		return new MyServiceImpl();
	}
}

