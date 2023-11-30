class Person {
  var name;
  var age;

  Person(
    this.name,
    this.age,
  );

  void printInfo() {
    print("My name is $name and I'm $age years old");
  }
}

class IronMan {
  String name;
  int powerLevel;

  IronMan(
    this.name,
    this.powerLevel,
  );

  void shoot() {
    print("$name is shooting guns!");
  }
}

class IronManMK3 extends IronMan {
  int flyheight;

  IronManMK3(
    String name,
    int powerlevel,
    this.flyheight,
  ) : super(name, powerlevel);

  @override
  void shoot() {
    print("$name is shooting lazer!");
  }

  void fly() {
    print("I can fly");
  }
}

void main() {
  var person = Person("John Doe", 30);
  person.printInfo();

  IronMan mk1 = IronMan("mk1", 10);

  IronManMK3 mk3 = IronManMK3("mk3", 20, 1000);

  mk1.shoot();
  mk3.shoot();
  mk3.fly();
}
