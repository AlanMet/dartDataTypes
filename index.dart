class Deque {
  List<dynamic> _deque = [];
  late int size;
  Deque({required this.size});

  push(dynamic item) {
    if (_deque.length < size) {
      _deque.add(item);
    } else {
      popFront();
      _deque.add(item);
    }
  }

  dynamic pop() {
    if (_deque.isNotEmpty) {
      return _deque.removeLast();
    } else {
      print("Deque is already empty");
      return null;
    }
  }

  pushFront(dynamic item) {
    if (_deque.length < size) {
      _deque.insert(0, item);
    } else {
      pop();
      _deque.insert(0, item);
    }
  }

  popFront() {
    if (_deque.isNotEmpty) {
      _deque.removeAt(0);
    } else {
      print("Deque is already empty");
    }
  }
}

void main() {
  Deque deque = Deque(size: 3);
  deque.push(1);
  deque.push(2);
  deque.push(3);
  deque.push(4);
  print(deque._deque); // [2, 3, 4]
  deque.pop();
  print(deque._deque); // [2, 3]
  deque.pushFront(1);
  print(deque._deque); // [1, 2, 3]
  deque.popFront();
  print(deque._deque); // [2, 3]
}
