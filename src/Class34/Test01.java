class Test01 {
	public static void main(String[] args) {
		// 生成水管工
		Plumber plumber = new Plumber();
		AWorker aWorker = new AWorker(plumber);
		aWorker.doSomeWork();
	}
}