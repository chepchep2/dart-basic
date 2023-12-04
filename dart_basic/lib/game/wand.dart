class Wand {
  final String _name;
  final double _power;

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  get lengthCheck {
    if (_name.length < 3) {
      throw Exception('에러메세지');
    }
  }

  get powerCheck {
    if (_power < 0.5 && _power > 100) {
      throw Exception('에러메세지');
    }
  }
  //       {
  //   if (name.length < 3) {
  //     throw Exception("에러메세지");
  //   }

  //   if (power < 0.5 && power > 100) {
  //     throw Exception("에러메세지");
  //   }
  // }
}
