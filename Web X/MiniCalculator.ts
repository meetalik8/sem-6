class MiniCalculator {
  add(a: number, b: number): number {
    return a + b;
  }

  subtract(a: number, b: number): number {
    return a - b;
  }

  multiply(a: number, b: number): number {
    return a * b;
  }

  divide(a: number, b: number): number {
    if (b !== 0) {
      return a / b;
    } else {
      throw new Error("Cannot divide by zero.");
    }
  }
}

const calculator = new MiniCalculator();

const num1 = 10;
const num2 = 5;

console.log(`Addition: ${calculator.add(num1, num2)}`);
console.log(`Subtraction: ${calculator.subtract(num1, num2)}`);
console.log(`Multiplication: ${calculator.multiply(num1, num2)}`);
console.log(`Division: ${calculator.divide(num1, num2)}`);
