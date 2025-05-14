import 'package:dart_data_structures_challenge/stacks.dart';

/// Challenge 1: Reverse a List using Stack
///
/// This function takes a list and prints its elements in reverse order
/// using a stack data structure.
void reverseList(List<dynamic> list) {
  final stack = Stack<dynamic>();

  // Push all elements into the stack
  for (var item in list) {
    stack.push(item);
  }

  // Pop and print elements (which will be in reverse order)
  print("Reversed List:");
  while (stack.peek() != null) {
    print(stack.pop());
  }
}

/// Challenge 2: Balance the Parentheses
///
/// Given a string, this function checks whether the parentheses are balanced.
/// Returns true if balanced, false otherwise.
bool isBalanced(String input) {
  final stack = Stack<String>();

  for (var char in input.split('')) {
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false; // Closing parenthesis without matching opening
      }
      stack.pop();
    }
  }

  return stack.isEmpty;
}