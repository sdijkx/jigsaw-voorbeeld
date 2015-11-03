package myclient;

public class Main {
    public static void main(String[] args) {
        System.out.println("MyClient");
        myapi.MyService service = myapi.MyService.open();
        System.out.println(service.serviceCall());
    }
}
