import java.io.*;

class Test {
	public static void main(String[] args) {
		FileReader fileReader = null;
		BufferedReader bufferedReader= null;

		try {
			fileReader = new FileReader("/Users/mac/Desktop/Test/src/Class34/from.txt");
			bufferedReader = new BufferedReader(fileReader);

			// String line = bufferedReader.readLine();
			// System.out.println(line);
			String line = null;
			while (true) {
				line = bufferedReader.readLine();
				if (line == null) {
					break;
				}
				System.out.println(line);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				bufferedReader.close();
				fileReader.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}