package myapi.spi;
import myapi.MyService;

public abstract class MyServiceProvider {
	public abstract MyService getMyService();
}
