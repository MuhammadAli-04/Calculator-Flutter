import 'package:function_tree/function_tree.dart';

class Calculator {
  Calculator._();
  static Calculator? _calculator;
  static Calculator getInstance() {
    return _calculator ??= Calculator._();
  }

  String _text = "";
  String _result = "";

  bool isSign(String char) {
    return (char == '%' ||
            char == "x" ||
            char == "+" ||
            char == "-" ||
            char == "/")
        ? true
        : false;
  }

  void add(String char, bool check) {
    if (check) {
      if (_text.isEmpty) {
        return;
      }
      if (isSign(_text.substring(_text.length - 1))) {
        _text = _text.substring(0, _text.length - 1);
      }
    }

    _text = _text + char;
    _calculate();
  }

  void remove() {
    if (_text.isNotEmpty) {
      _text = _text.substring(0, _text.length - 1);
    }
    _calculate();
  }

  void _calculate() {
    try {
      _result = _text.interpret().toStringAsFixed(
          _text.interpret().truncateToDouble() == _text.interpret() ? 0 : 2);
    } catch (e) {}
  }

  void clearAll() {
    _text = "";
    _result = "";
  }

  void equals() {
    _calculate();
    _text = _result;
    _result = "";
  }

  String get text => _text;
  String get result => _result;
}
