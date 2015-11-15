package nl.ordina.myclient;
import java.util.logging.Logger;
import nl.ordina.myapi.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("Running MyClient");
        MyService service = MyService.newInstance();
        System.out.println(service.serviceCall());
        Logger logger = service.getServiceLogger();
        logger.info("Got logger from api");
    }
}
