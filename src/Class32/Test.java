// 第一步：导入类；
import java.io.*;

class Test {
	public static void main(String[] args) {
		// 声明输入流引用
		FileInputStream fis = null;
		// 生成输出流林勇
		FileOutputStream fos = null;

		try {
			// 生成代表输入流对象
			fis = new FileInputStream("/Users/mac/Desktop/Test/src/Class32/from.txt");
			// 生成输出流对象
			fos = new FileOutputStream("/Users/mac/Desktop/Test/src/Class32/to.txt");
			// 生成一个字节数组
			byte [] buffer = new byte[100];
			// 调用输入流的read读取数据
			int temp = fis.read(buffer, 0, buffer.length);

			fos.write(buffer, 0, temp);
			// String s = new String(buffer);
			// s = s.trim(); // trim去除字符串首位空格和空字符
			// System.out.println(s);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}