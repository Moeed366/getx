import 'package:get/get.dart';

class Language extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'login':'login'

    },
    'en_UK':{
      'login':'signIn'

    },
    'ur_PK':{
      'login':'لاگ ان'

    }
  };

}