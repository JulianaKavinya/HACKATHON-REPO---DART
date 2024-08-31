bool isPalindrome(String input) {
  // Remove spaces, punctuation, and make it case-insensitive
  String cleanedInput = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Check if the cleaned string is a palindrome
  String reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}

bool isNumericPalindrome(int number) {
  // Convert the number to a string and use the same logic
  return isPalindrome(number.toString());
}

void main() {
  // Test cases for string inputs
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car")); // false

  // Test cases for numeric inputs
  print(isNumericPalindrome(12321)); // true
  print(isNumericPalindrome(12345)); // false
}
