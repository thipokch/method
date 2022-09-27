extension OrNull<T extends Object> on List<T> {
  T? elementAtOrNull(int index) =>
      (index < 0 || index >= length) ? null : this[index];
}
