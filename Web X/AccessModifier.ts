class Animal {
  public name: string;
  private age: number;
  protected category: string;

  constructor(name: string | number, age: number, category: string) {
    if (typeof name === "string") {
      this.name = name;
    } else {
      this.name = name.toString();
    }
    this.age = age;
    this.category = category;
  }

  public displayInfo(): void {
    console.log(
      `Name: ${this.name}, Age: ${this.age}, Category: ${this.category}`
    );
  }

  protected getAge(): number {
    return this.age;
  }
}

class Cat extends Animal {
  public color: string;

  constructor(
    name: string | boolean,
    age: number,
    category: string,
    color: string
  ) {
    super(typeof name === "string" ? name : "Unknown", age, category);
    this.color = color;
  }

  public displayInfo(): void {
    console.log(
      `Name: ${this.name}, Age: ${this.getAge()}, Category: ${
        this.category
      }, Color: ${this.color}`
    );
  }
}

const animal = new Animal("Leo", 3, "Mammal");
const cat = new Cat("Whiskers", 2, "Domestic", "Gray");

console.log(animal.name);
animal.displayInfo();
console.log(cat.name);
console.log(cat.color);
cat.displayInfo();
