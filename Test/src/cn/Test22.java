package cn;

public class Test22 {
	// ���þ�̬�ڲ�����ʵ���ⲿ��ĵ���
	private static class SingleTonBuilder {
		private static Test22 singleTon = new Test22();
	}

	// ˽�л����캯��
	private Test22() {

	}

	public static Test22 getInstance() {
		return SingleTonBuilder.singleTon;
	}

	public static void main(String[] args) {
		Test22 instance = getInstance();
	}
}
