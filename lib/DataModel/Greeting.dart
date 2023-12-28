import 'Word.dart';

final class Greeting implements Word {
  final String _content;

  Greeting({required String content})
    : _content = content, assert(content != null, 'contentの内容が含まれていません');

  String get content => _content;
}
