// Allow keyboard input (stdin)
import 'dart:io';

void main() {
    // Show pizza menu and prices
    print('=== Pizza Order ===');
    print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

    // Ask for pizza size
    print('Please enter your pizza size (small, medium, or large)');
    String? size = stdin.readLineSync();
    size = size?.toLowerCase();

    // Ask for pizza quantity
    print('How many pizzas do you want of $size?');
    String? quantityInput = stdin.readLineSync();
    int quantity = int.parse(quantityInput!);

    print('You ordered $quantity $size pizza(s).');

    // Set pizza price based on their size
    int pricePerPizza = 0;

    if (size == 'small') {
        pricePerPizza = 5;
    } else if (size == 'medium') {
        pricePerPizza = 7;
    } else if (size == 'large') {
        pricePerPizza = 10;
    } else {
        // Stop if the size is not valid
        print('Invalid pizza size.');
        return;
    }

    // Calculate and show total payment
    int total = pricePerPizza * quantity;
    print('Total payment: $total USD');
}