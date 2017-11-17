class TestCheck {
	public static void main(String[] args) {
		// check exception
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}