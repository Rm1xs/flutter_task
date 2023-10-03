abstract class DataState<T> {
  final T? data;
  final Exception? error;

  const DataState({this.data, this.error});

  bool isSuccess() => false;
  bool isFailed() => false;
  bool hasData() => false;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);

  @override
  bool isSuccess() => true;
  @override
  bool hasData() => data != null;
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(Exception error) : super(error: error);

  @override
  bool isFailed() => true;
}
