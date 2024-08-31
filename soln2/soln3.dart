void main() {
  try {
    // Simple operation
    double simpleResult = calculate(10, 5, '+');
    print("Simple Calculation Result: $simpleResult");

    // Multi-step operation
    String expression = "10 + 20 * 3 / (2 - 1)";
    double complexResult = evaluateExpression(expression);
    print("Complex Calculation Result: $complexResult");
  } catch (e) {
    print("Error: ${e.message}");
  }
}
