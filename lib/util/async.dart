class Async<T> {
  final T value;

  Async(this.value);
}

class Uninitialized<T> extends Async<T> {
  Uninitialized(T value) : super(value);
}

class Loading<T> extends Async<T> {
  Loading(T value) : super(value);
}

class Success<T> extends Async<T> {
  Success(T value) : super(value);
}

class Fail<T> extends Async<T> {
  final Exception error;

  Fail(T value, this.error) : super(null);
}
