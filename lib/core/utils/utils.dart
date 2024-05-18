class InputConverter {
  static int stringToUnsignedInteger(String str) {
    final integer = int.parse(str);
    if (integer < 0) throw FormatException();
    return integer;
  }
}
