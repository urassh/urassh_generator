import 'Word.dart';

final class Verb implements Word {
  final String _content;

  Verb({required String content})
      : _content = content, assert(content != null, 'contentの内容が含まれていません');

  String get content => _content;
}