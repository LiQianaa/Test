package cn;

import java.io.File;
import java.util.Scanner;

public class Test23 {
	public static void listFile(File f) {
		if (f.isDirectory()) {   //检查是否是文件夹
			System.out.println("directory:" + f.getPath() + "--parent:" + f.getParent());//输出定义时的路径以及父目录
			File[] t = f.listFiles();//返回目录下所有文件和目录的绝对路径
			for (int i = 0; i < t.length; i++) {
				listFile(t[i]);
			}
		} else {
			System.out.println("fileName:" + f.getAbsolutePath() + "--parent:" + f.getParent());
		}
	}

	public static void main(String[] args) {
		File file = new File("C:\\file");
		/*Scanner input=new Scanner(System.in);
		System.out.println("请输入一个文件夹的路径");
		String file=input.nextLine();*/
		Test23.listFile(file);
	}
}
