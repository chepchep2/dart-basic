class Slime {
  int hp;
  final int level = 10;

  Slime(this.hp);

  void attack() {}
}

void main() {
  Slime slime1 = Slime(100);
  Slime slime2 = Slime(100);

  print(slime1 == slime2);
}
