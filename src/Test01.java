public class Test01 {
	public static void main (String arg []) {
		int i = 100;
		if (i < 60) {
			System.out.println("不及格");
		} else if (i < 90) {
			System.out.println("良");
		} else if (i < 100) {
			System.out.println("优");
		} else {
			System.out.println("💯");
		}
	}
}