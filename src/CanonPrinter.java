class CanonPrinter implements Printer{
	private void clean() {
		System.out.println("clean");
	}

	public void open() {
		System.out.println("CanonPrinter open");
	}

	public void close() {
		this.clean();
		System.out.println("CanonPrinter close");
	}

	public void print(String s) {
		System.out.println("CanonPrinter print -->" + s);
	}
}