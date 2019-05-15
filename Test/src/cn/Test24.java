package cn;

import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class Test24 {
	private static String substring(String str, int length1, String code) throws UnsupportedEncodingException{
		if (str == null) {
			return null;
		}
		StringBuilder sb = new StringBuilder();
		int currentLength = 0;
		for (char c : str.toCharArray()) {
			currentLength += String.valueOf(c).getBytes(code).length;
			if (currentLength <= length1) {
				sb.append(c);
			} else {
				break;
			}
		}
		return sb.toString();
	}

	public static void main(String[] args) throws UnsupportedEncodingException {
		Scanner input = new Scanner(System.in);
		System.out.println("请输入一个字符串：");
		String str = input.next();
		System.out.println("请输入截取的字节数：");
		int length1 = input.nextInt();
		//String[] codes = new String[] { "GB2312", "GBK", "GB18030", "CP936", "CNS11643", "UTF-8" };
		String code="UTF-8";
		// System.out.println(writeString.substring(0,sum));
		//for (String code : codes) {
			System.out.println(new StringBuilder().append("截取后字符串的结果是").append(substring(str, length1, code)).toString());

			/*System.out.println(new StringBuilder().append("用").append(code).append("编码截取字符串--【“").append(str)
					.append("】").append(length1).append("个字节的结果是【").append(substring(str, length1, code)).append("】")
					.toString());*/
		//}
	}
}
