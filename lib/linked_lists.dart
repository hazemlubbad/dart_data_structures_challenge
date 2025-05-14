class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value);
}

class LinkedList<T> {
  Node<T>? head;

  void add(T value) {
    if (head == null) {
      head = Node(value);
    } else {
      var current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = Node(value);
    }
  }

  @override
  String toString() {
    var description = '';
    var current = head;
    while (current != null) {
      description += '${current.value}';
      if (current.next != null) description += ' -> ';
      current = current.next;
    }
    return description;
  }
}