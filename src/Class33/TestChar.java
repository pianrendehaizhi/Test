import java.io.*;
class TestChar {
	public static void main(String[] args) {
		FileReader fr = null;
		FileWriter fw = null;

		try {
			fr = new FileReader("/Users/mac/Desktop/Test/src/Class33/西游日记.txt");
			fw = new FileWriter("/Users/mac/Desktop/Test/src/Class33/to.txt");

			char [] buffer = new char [100];
			while (true) {
				int temp = fr.read(buffer, 0, buffer.length);
				if (temp == -1) {
					break;
				}
				fw.write(buffer, 0, temp);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				fr.close();
				fw.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}