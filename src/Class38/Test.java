class Test {
	public static void main(String[] args) {
		MyThread myThread = new MyThread();

		Thread t1 = new Thread(myThread);
		Thread t2 = new Thread(myThread);

		t1.setName("Thread 1");
		t2.setName("Thread 2");

		t1.start();
		t2.start();
	}
}