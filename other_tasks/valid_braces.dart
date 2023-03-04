bool validBraces(String string) {
  Map map = {
    '}': '{',
    ']': '[',
    ')': '(',
  };

  List<String> items = [];

  for (int i = 0; i < string.length; i++) {
    String brace = string[i];
    if (['[', '{', '('].contains(brace)) {
      items.add(brace);
    } else {
      if (items.isNotEmpty && map[brace] == items.last) {
        items.removeLast();
      } else {
        return false;
      }
    }
  }

  return items.isEmpty;
}