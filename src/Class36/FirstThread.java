// 创建线程的方法
// 方式1：定义一个线程类，继承Thread并重写run()方法（Java只支持单继承，继承了一个类就不可以继承其他类了）
class FirstThread extends Thread {
	public void run() {
		for (int i = 0; i < 100; i++) {
			System.out.println("FirstThread-->" + i);
		}
	}	
}