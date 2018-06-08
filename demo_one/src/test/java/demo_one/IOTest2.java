package demo_one;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class IOTest2 {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		// 输入流
				File file = new File("D://lizhixiong");
				if (!file.exists()) {
					file.mkdirs();
				}
				File file2 = new File(file, "bb.txt");
				if (!file.exists()) {
					file.mkdirs();
				}
		FileOutputStream outputStream = null;
		try {
			outputStream = new FileOutputStream(file2);
			try {
				outputStream.write("我们永远在一起！".getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		FileInputStream inputStream = null;
		FileOutputStream outputStream2 = null;
		
		try {
			 inputStream = new FileInputStream(file2);
			 outputStream2 = new FileOutputStream("D://lizhixiong//aaa.txt");
			 byte[] b  = new byte[1024];
			 while(true) {
				 int i;
				try {
					i = inputStream.read(b);
					if(i==-1) {
						 break;
					 }
					outputStream2.write(b, 0, i);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				 
			 }
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}
