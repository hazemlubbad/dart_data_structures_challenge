// bin/linked_list_challenges.dart

import 'package:dart_data_structures_challenge/linked_lists.dart';

/// Challenge 1: Print Linked List in Reverse Order
///
/// This function prints the nodes of a linked list in reverse order.
void printLinkedListReversed<T>(Node<T>? head) {
  if (head == null) return;

  // Recursively go to the end of the list
  printLinkedListReversed(head.next);

  // Then print value on the way back
  print(head.value);
}

/// Challenge 2: Find the Middle Node
///
/// Returns the middle node of a linked list using the fast/slow pointer technique.
Node<T>? findMiddleNode<T>(Node<T>? head) {
  if (head == null) return null;

  Node<T>? slow = head;
  Node<T>? fast = head;

  while (fast?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
  }

  return slow;
}

/// Challenge 3: Reverse a Linked List
///
/// Reverses the linked list by manipulating links between nodes.
Node<T>? reverseLinkedList<T>(Node<T>? head) {
  Node<T>? prev = null;
  var current = head;

  while (current != null) {
    var next = current.next; // Store next node
    current.next = prev;     // Reverse link
    prev = current;          // Move prev forward
    current = next;          // Move current forward
  }

  return prev; // New head at the end of original list
}

/// Challenge 4: Remove All Occurrences of a Given Element
///
/// Removes all nodes with the given value from the linked list.
void removeAllOccurrences<T>(Node<T>? head, T target) {
  // Remove leading nodes that match the target
  while (head != null && head.value == target) {
    head = head.next;
  }

  var current = head;

  // Traverse the rest of the list
  while (current?.next != null) {
    if (current?.next?.value == target) {
      current?.next = current?.next?.next; // Skip the node
    } else {
      current = current?.next;
    }
  }
}