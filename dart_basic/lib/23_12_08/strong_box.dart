enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _item;
  int oepn = 1;
  void put(E item) => _item = item;
  E? get() => _item;
}
