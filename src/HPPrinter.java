class HPPrinter implements Printer {
	public void open() {
		System.out.println("HPPrinter open");
	}

	public void close() {
		System.out.println("HPPrinter close");
	}

	public void print(String s) {
		System.out.println("HPPrinter print-->" + s);
	}
}