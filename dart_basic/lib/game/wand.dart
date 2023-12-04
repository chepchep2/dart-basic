class Wand {
  String name;
  double power;

  Wand({
    required this.name,
    required this.power,
  }) {
    if (name.length < 3) {
      throw Exception("에러메세지");
    }

    if (power < 0.5 && power > 100) {
      throw Exception("에러메세지");
    }
  }
}
