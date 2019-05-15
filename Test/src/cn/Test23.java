package cn;

import java.io.File;
import java.util.Scanner;

public class Test23 {
	public static void listFile(File f) {
		if (f.isDirectory()) {   //����Ƿ����ļ���
			System.out.println("directory:" + f.getPath() + "--parent:" + f.getParent());//�������ʱ��·���Լ���Ŀ¼
			File[] t = f.listFiles();//����Ŀ¼�������ļ���Ŀ¼�ľ���·��
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
		System.out.println("������һ���ļ��е�·��");
		String file=input.nextLine();*/
		Test23.listFile(file);
	}
}
