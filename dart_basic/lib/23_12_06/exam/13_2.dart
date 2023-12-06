abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

/// 1) X obj = A(); 로 A인스턴스를 생성한 후,
///    변수 obj에서 호출할 수 있는 메서드를
///    a(), b(), c() 중에 골라보시오.
///   답: a()
/// 2) Y y1 = A();
///    Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후
///    y1.a(); y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.
///   답: Aa, Ba

void main() {
  A a = A();
  B b = B();

  List<Y> yList = [];

  yList.add(a);
  yList.add(b);

  for (final y in yList) {
    y.b();
  }
}

/// 1) List 변수의 타입으로 무엇을 사용하여야 하는가
///   답: Y
/// 2) 위에서 설명하고 있는 프로그램을 작성하시오.
///   함