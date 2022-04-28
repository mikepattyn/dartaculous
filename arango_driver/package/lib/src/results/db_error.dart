class DbError {
  final bool error;
  final int code;
  final String? errorMessage;
  final int? errorNum;

  const DbError({
    required this.error,
    required this.code,
    this.errorMessage,
    this.errorNum,
  });

  factory DbError.empty() => DbError(
        error: false,
        code: 0,
      );
}
