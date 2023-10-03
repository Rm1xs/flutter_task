class AppException implements Exception {
  final String? message;

  AppException([this.message]);

  @override
  String toString() {
    switch (message) {
      case 'failed':
        return 'Невідома помилка';
      case 'NA':
        return 'Невідома помилка';
      case 'null':
        return 'Невідома помилка';
      case '400':
        return 'Bad Request';
      case '401':
        return 'Unauthorized';
      case '403':
        return 'Forbidden';
      case '404':
        return 'Not Found';
      case '429':
        return 'Too Many Requests';
      default:
        return message ?? 'Невідома помилка';
    }
  }
}
