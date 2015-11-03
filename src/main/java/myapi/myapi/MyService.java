package myapi;
import java.util.ServiceLoader;
import java.util.Iterator;
import myapi.spi.MyServiceProvider;

public abstract class MyService {

	public static MyService open() {
		ServiceLoader<MyServiceProvider> sl = ServiceLoader.load(MyServiceProvider.class);
		Iterator<MyServiceProvider> it = sl.iterator();
		if(it.hasNext()) {
			return it.next().getMyService();
		}
		throw new RuntimeException();
	}

	public abstract String serviceCall();

}
