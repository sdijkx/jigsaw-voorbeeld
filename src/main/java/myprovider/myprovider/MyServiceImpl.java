package myprovider;
import myapi.MyService;

public class MyServiceImpl extends MyService {

    @java.lang.Override
    public String serviceCall() {
        return getClass().getName();
    }
}
