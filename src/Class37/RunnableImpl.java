// 实现线程的第二种方法
// 提供一个接口Runnable类作为线程的目标对象，在初始化一个Thread类或者子类的线程对象时，把目标对象传递给这个线程实例，由该目标对象提供线程体
class RunnableImpl implements Runnable {
	public void run() {
		for (int i = 0; i < 100; i++) {
			System.out.println("RunnableImpl-->" + i);
			if (i == 50) {
				try {
					Thread.sleep(2000);
				} catch (Exception e) {
					System.out.println(e);
				}
			}
		}
	}
}

// 中断线程
// - Thread.sleep()
// - Thread.yield()
// 设置线程优先级
// - getPriority()
// - setPriority()