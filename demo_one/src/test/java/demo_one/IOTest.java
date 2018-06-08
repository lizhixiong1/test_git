package demo_one;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class IOTest {
	public static void main(String[] args) {
		// 输入流
		File file = new File("D://lizhixiong");
		if (!file.exists()) {
			file.mkdirs();
		}
		File file2 = new File(file, "aaa.txt");
		if (!file.exists()) {
			file.mkdirs();
		}
		FileOutputStream outputStream = null;
		try {
			outputStream = new FileOutputStream(file2);
			try {
				outputStream.write("我的全世界只有你".getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				outputStream.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// 输出流
		FileInputStream inputStream = null;
		try {
			inputStream = new FileInputStream(file2);
			byte[] b = new byte[1024];
			
			do {
				String s = new String(b, 0, inputStream.read(b));
				System.out.print(s);
			} while (inputStream.read() != -1);
		} catch (IOException e) {
			System.out.println("--------IO异常----------");
		}
	}

}
