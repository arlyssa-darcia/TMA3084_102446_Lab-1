import 'dart:io';

void main() {
    print('=== Pizza Order ===');
    print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

    print('Please enter your pizza size (small, medium, or large)');
    String? size = stdin.readLineSync();
    size = size?.toLowerCase();

    print('How many pizzas do you want of $size?');
    String? quantityInput = stdin.readLineSync();
    int quantity = int.parse(quantityInput!);

    print('You ordered $quantity $size pizza(s).');

    int pricePerPizza = 0;

    if (size == 'small') {
        pricePerPizza = 5;
    } else if (size == 'medium') {
        pricePerPizza = 7;
    } else if (size == 'large') {
        pricePerPizza = 10;
    } else {
        print('Invalid pizza size.');
        return;
    }

    int total = pricePerPizza * quantity;
    print('Total payment: $total USD');
}
