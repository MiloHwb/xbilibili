import 'package:flutter/material.dart';

import '../r.dart';

class LoginPageProvider with ChangeNotifier {
  //当前是否输入用户名
  bool isInputAccount = true;
  String account = '';
  String password = '';
  static Image loginLogoAccount = Image.asset(R.imagesLoginLogoAccount);
  static Image loginLogoPassword = Image.asset(R.imagesLoginLogoPassword);
  Image loginLogo = loginLogoAccount;

  reset() {
    print('reset');
    this.isInputAccount = true;
    this.loginLogo = loginLogoAccount;
    this.account = '';
    this.password = '';
  }

  setLoginLogo() {
    if (isInputAccount) {
      this.loginLogo = loginLogoAccount;
    } else {
      this.loginLogo = loginLogoPassword;
    }
  }

  setIsInputAccount(bool isInputAccount) {
    this.isInputAccount = isInputAccount;
    setLoginLogo();
    print('setIsInputAccount ${this.isInputAccount}');
    notifyListeners();
  }

  setAccount(String account) {
    this.account = account;
    notifyListeners();
  }

  setPassword(String password) {
    this.password = password;
    notifyListeners();
  }
}
