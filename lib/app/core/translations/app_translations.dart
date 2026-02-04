import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'welcome': 'Welcome',
      'change_language': 'Change Language',
    },
    'km_KH': {
      'hello': 'សួស្តី',
      'welcome': 'ស្វាគមន៍',
      'change_language': 'ប្ដូរភាសា',
    },
  };
}
