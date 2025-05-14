class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);
  T? pop() => _items.isNotEmpty ? _items.removeLast() : null;
  T? peek() => _items.isNotEmpty ? _items.last : null;
  bool get isEmpty => _items.isEmpty;
}