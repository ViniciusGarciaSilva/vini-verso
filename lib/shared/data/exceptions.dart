class ParseDataException implements Exception {
  final String message;

  ParseDataException(
    this.message,
  );

  @override
  String toString() => message;
}
