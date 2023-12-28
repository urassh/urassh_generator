import 'DataModel/Word.dart';
import 'dart:math' as math;
import 'DataModel/Greeting.dart';
import 'DataModel/Verb.dart';

class Sample {
  static final List<Verb> _verbs = [
    Verb(content: '好きなものは'),
    Verb(content: '嫌いなものは'),
    Verb(content: '得意なものは'),
    Verb(content: '昨日の晩ご飯は'),
    Verb(content: '今日の朝ご飯は'),
    Verb(content: '好きな言葉は'),
    Verb(content: '君の心に'),
  ];

  static final List<Greeting> _greetings = [
    Greeting(content: 'ゴールドラッシュ'),
    Greeting(content: 'サイドディッシュ'),
    Greeting(content: 'サイレンダッシュ'),
    Greeting(content: 'サッシュ'),
    Greeting(content: 'スカッシュ'),
    Greeting(content: 'スタイリッシュ'),
    Greeting(content: 'スタートダッシュ'),
    Greeting(content: 'マウスウォッシュ'),
    Greeting(content: 'スマッシュ'),
    Greeting(content: 'スラッシュ'),
    Greeting(content: 'ティッシュ'),
    Greeting(content: 'キッシュ'),
    Greeting(content: 'フィッシュ'),
    Greeting(content: 'レモンスカッシュ'),
    Greeting(content: '並外れてエネルギッシュ'),
  ];

  Verb verb(){
    final int index = math.Random().nextInt(_verbs.length);
    return _verbs[index];
  }

  Greeting greeting() {
    final int index = math.Random().nextInt(_greetings.length);
    return _greetings[index];
  }
}
