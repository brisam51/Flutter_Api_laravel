

import 'package:flutter/cupertino.dart';

class Auth extends ChangeNotifier{

  bool _isLoggedIn=false;
  bool get authenticated=>_isLoggedIn;

void login ({required Map creds }){
  print(creds);
_isLoggedIn=true;
notifyListeners();
}

void logout(){
  _isLoggedIn=true;
notifyListeners();

}



}