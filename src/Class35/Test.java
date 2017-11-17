class Test {
	public static void main(String[] args) {
		A a = new A();

		A.B b = a.new B();

		a.i = 4;
		b.j = 7;

		int result = b.funcB();
		System.out.println(result);
	}
}