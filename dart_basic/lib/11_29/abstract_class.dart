abstract class IronMan {
  String name;
  String suitColor;

  IronMan(this.name, this.suitColor);

  void fly();

  void shootLasers();

  void withstandDamage();
}

class Mark50 extends IronMan {
  Mark50(
    String name,
    String suitColor,
  ) : super(name, suitColor);

  @override
  void fly() {
    print("$name is flying");
  }

  @override
  void shootLasers() {
    print("suitColor is $suitColor");
  }

  @override
  void withstandDamage() {
    print("damm");
  }
}

void main() {
  Mark50 mk50 = Mark50("mk50", "red");
}
