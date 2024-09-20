import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Eko");
}

void main() {
  test("Future Mathcer", () {
    final name = getName();
    expect(name, completion(equals("Eko")));
  });
  test("Future Test", () async {
    final result = await getName();
    expect(result, "Eko");
  });
}
