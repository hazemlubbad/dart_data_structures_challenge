
import 'package:dart_data_structures_challenge/linked_lists.dart';
import 'stack_challenges.dart';
import 'linked_list_challenges.dart';

void main() {
  // 🔷 Stack Challenges

  print("=== STACK CHALLENGES ===\n");

  print("Challenge 1: Reverse a List using Stack");
  reverseList([1, 2, 3, 4]);
  print(""); // Line break

  print("Challenge 2: Balanced Parentheses");
  print("Input: (a + b) * (c - d) => ${isBalanced("(a + b) * (c - d)")}");
  print("Input: ((a + b)        => ${isBalanced("((a + b)")}");
  print("Input: )hello(         => ${isBalanced(")hello(")}");
  print("Input: ()()           => ${isBalanced("()()")}\n");

  // 🔷 Linked List Challenges

  print("=== LINKED LIST CHALLENGES ===\n");

  final list = LinkedList<int>();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(2);
  list.add(4);

  print("Original Linked List: $list\n");

  print("Challenge 1: Print Linked List in Reverse");
  printLinkedListReversed(list.head);
  print(""); // Line break

  print("\nChallenge 2: Find Middle Node");
  var middleNode = findMiddleNode(list.head);
  print("Middle Node Value: ${middleNode?.value ?? "None"}\n");

  print("Challenge 3: Reverse Linked List");
  var reversedHead = reverseLinkedList(list.head);
  var current = reversedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }

  print("\nChallenge 4: Remove All Occurrences of 2");
  removeAllOccurrences(reversedHead, 2);
  var curr = reversedHead;
  while (curr != null) {
    print(curr.value);
    curr = curr.next;
  }
}