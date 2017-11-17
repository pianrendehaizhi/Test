class USBTest {
	public static void main(String[] args) {
		USBPhone usbPhone = new USBPhone();
		USB usb = usbPhone;
		usb.read();
		usb.write();

		WiFi wifi = usbPhone;
		wifi.open();
		wifi.close();
	}
}