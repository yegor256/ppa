public class Race {
  static int d = 42;
  public static void main (String[] args) throws Exception {
    new Thread(
      () -> {
        d = 0;
      }
    ).start();
    System.out.printf("x = %d\n", 420 / d);
  }
}
