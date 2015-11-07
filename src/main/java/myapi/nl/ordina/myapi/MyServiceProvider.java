package nl.ordina.myapi;
import nl.ordina.myapi.impl.MyServiceImpl;

public class MyServiceProvider {
    public static MyService open() {
        return new MyServiceImpl();
    }
}
