// SPDX-FileCopyrightText: Copyright (c) 2022-2025 Yegor Bugayenko
// SPDX-License-Identifier: MIT

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
