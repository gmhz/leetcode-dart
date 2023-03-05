int reverse(int org) {
  if (org > 2147483647 || -2147483648 > org) return 0;
  int x = org;
  int reverse = 0;

  if (x < 0) x = -x;

  while (x > 0) {
    int y = x % 10;
    x = (x - y) ~/ 10;

    reverse = reverse == 0 ? y : reverse * 10 + y;
  }

  if (reverse > 2147483647 || -2147483648 > reverse) return 0;

  return org < 0 ? -reverse : reverse;
}
