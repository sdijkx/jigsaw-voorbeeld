module myprovider {
	requires myapi;
	provides myapi.spi.MyServiceProvider with myprovider.MyServiceProviderImpl;

}
