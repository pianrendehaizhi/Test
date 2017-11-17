import java.util.List;
import java.util.ArrayList;

class Test {
	public static void main(String[] args) {
		ArrayList<String> arrayList = new ArrayList<String>();

		arrayList.add("A");
		arrayList.add("B");
		arrayList.add("C");
		arrayList.add("D");

		arrayList.remove(2);

		for (int i = 0; i < arrayList.size(); i++) {
			System.out.println(arrayList.get(i));
		}

	}
}