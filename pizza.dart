// TMA3084 Lab 1: Pizza Order Calculator
// Name: Arlyssa Darcia Anak Dickson
// Matric: 102446

import 'dart:io';

void main() {
  print('============');
  print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10 USD"');

  String? size;
  // while loop: keep asking until size is valid
  while (true) {
    print('Please enter your pizza size (small, medium, or large):');
    size = stdin.readLineSync();
    size = size?.toLowerCase().trim();

    if (size == 'small' || size == 'medium' || size == 'large') {
      break;
    }
    print('Invalid size. Please try again.');
  }

  print('How many pizzas do you want of $size?');
  int quantity = int.parse(stdin.readLineSync()!);

  int pricePerPizza = 0;

  // switch-case: set price based on size
  switch (size) {
    case 'small':
      pricePerPizza = 5;
      break;
    case 'medium':
      pricePerPizza = 7;
      break;
    case 'large':
      pricePerPizza = 10;
      break;
    default:
      print('Invalid pizza size.');
      return;
  }

  int total = pricePerPizza * quantity;
  print('Your Total Payment is: \$$total');
}
