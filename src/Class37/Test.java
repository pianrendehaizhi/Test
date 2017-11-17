class Test {
	public static void main(String [] args) {
		// 生成一个Runnable接口实现类对象
		RunnableImpl ri = new RunnableImpl();
		// 生成一个Thread对象，并将Runnable接口实现类的对象作为参数传递给Thread对象
		Thread t = new Thread(ri);
		// 通知Thread执行start()方法
		// 线程的优先级最大是10最小是1，可以使用Thread所提供的静态常量来设置线程的优先级
		t.setPriority(Thread.MIN_PRIORITY);
		t.start();
		System.out.println(t.getPriority());
	}
}