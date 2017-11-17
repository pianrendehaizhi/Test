class USBPhone implements USB,WiFi {
	public void read() {
		System.out.println("usb read");
	}

	public void write() {
		System.out.println("usb write");
	}

	public void open() {
		System.out.println("open WiFi");
	}

	public void close() {
		System.out.println("close WiFi");
	}
}