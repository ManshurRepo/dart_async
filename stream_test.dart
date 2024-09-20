import 'package:test/test.dart';

void main() {
  test("Stream test", () {
    final stream = Stream.periodic(Duration(seconds: 2), (i) => i).take(5);

    expect(stream, emitsInOrder(
    [
      emits(0),
      emits(1),
      emits(2),
      emits(3),
      emits(4),
    
      emitsDone
    ]
    ));
  });
}
