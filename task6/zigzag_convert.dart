String zigzagConvert(String s, int numRows) {
  if (numRows >= s.length || numRows == 1) return s;

  final rows = List<String>.generate(numRows, (index) => "");
  bool goingDown = false;
  int rowIndex = 0;

  for (int i = 0; i < s.length; i++) {
    rows[rowIndex] += s[i];
    if (rowIndex == 0 || rowIndex == numRows - 1) {
      goingDown = !goingDown;
    }
    rowIndex += goingDown ? 1 : -1;
  }

  return rows.join('');
}

String zigzagFromBottomConvert(String s, int numRows) {
  if (numRows >= s.length || numRows == 1) return s.split('').reversed.join('');

  List<String> rows = List.generate(numRows, (index) => "");
  int rowIndex = numRows - 1;
  bool goingUp = false;

  for (int i = 0; i < s.length; i++) {
    rows[rowIndex] += s[i];

    if (rowIndex == 0 || rowIndex == numRows - 1) {
      goingUp = !goingUp;
    }
    rowIndex += goingUp ? -1 : 1;
  }

  return rows.join('');
}
