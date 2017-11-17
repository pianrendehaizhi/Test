import java.util.Set;
import java.util.HashSet;
import java.util.Iterator;

public class Test {
	public static void main(String[] args) {
		HashSet<String> hashSet = new HashSet<String>();
		Set<String> set = hashSet;
		set.add("a");
		set.add("b");
		set.add("c");
		set.add("d");
		set.add("c");

		// int i = set.size();
		// System.out.println("clear之前长度是" + i);
		// set.clear();
		// int j = set.size();
		// System.out.println("clear 之后的长度是" + j);
		// 调用set对象的Iterator方法，会生成一个迭代对象，该对象用于遍历整个set
		Iterator<String> it = set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
	}
}