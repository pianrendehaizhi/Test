class Test {
	public static void main(String[] args) {
		int flag = 0;
		Printer printer = PrinterFactory.getPrinter(flag);

		printer.open();
		printer.print("hello");
		printer.close();
	}
}