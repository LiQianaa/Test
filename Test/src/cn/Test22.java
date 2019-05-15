package cn;

public class Test22 {
	// 利用静态内部特性实现外部类的单例
	private static class SingleTonBuilder {
		private static Test22 singleTon = new Test22();
	}

	// 私有化构造函数
	private Test22() {

	}

	public static Test22 getInstance() {
		return SingleTonBuilder.singleTon;
	}

	public static void main(String[] args) {
		Test22 instance = getInstance();
	}
}
