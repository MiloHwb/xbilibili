import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/login_page_provider.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 10:32
 * @ 描述         
 */
class LoginPage extends StatelessWidget {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    Provider.of<LoginPageProvider>(context, listen: false).reset();
    return Scaffold(
      appBar: _appBar(context),
      body: Container(
        color: Color.fromRGBO(234, 234, 234, 1),
        child: Column(
          children: <Widget>[
            Consumer<LoginPageProvider>(builder: (context, value, child) {
              return Container(
                height: 100,
                child: value.loginLogo,
              );
            }),
            _accountTextArea(context),
            _passwordTextArea(context),
            _bottomButtons(context),
          ],
        ),
      ),
    );
  }

  //用户名输入区域
  Widget _accountTextArea(context) {
    return Consumer<LoginPageProvider>(builder: (context, value, child) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: TextField(
          controller: TextEditingController.fromValue(
            TextEditingValue(
              text: value.account,
              selection: TextSelection.fromPosition(
                TextPosition(
                  affinity: TextAffinity.downstream,
                  offset: value.account.length,
                ),
              ),
            ),
          ),
          decoration: InputDecoration(
            hintText: '你的手机号/邮箱',
            icon: Icon(Icons.person_outline),
          ),
          maxLines: 1,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          onChanged: (text) {
            Provider.of<LoginPageProvider>(context, listen: false).setAccount(text);
          },
        ),
      );
    });
  }

  //密码入区域
  Widget _passwordTextArea(context) {
    var loginPageProvider = Provider.of<LoginPageProvider>(context, listen: false);

    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        loginPageProvider.setIsInputAccount(false);
      } else {
        loginPageProvider.setIsInputAccount(true);
      }
    });
    return Consumer<LoginPageProvider>(builder: (context, value, child) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: TextField(
          focusNode: focusNode,
          controller: TextEditingController.fromValue(
            TextEditingValue(
              text: value.password,
              selection: TextSelection.fromPosition(
                TextPosition(
                  affinity: TextAffinity.downstream,
                  offset: value.password.length,
                ),
              ),
            ),
          ),
          maxLength: 16,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '请输入密码',
            icon: Icon(Icons.lock),
          ),
          maxLines: 1,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (text) {
            loginPageProvider.setPassword(text);
          },
        ),
      );
    });
  }

  AppBar _appBar(context) {
    return AppBar(
      title: Text('登录'),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Text('忘记密码?'),
        ),
      ],
    );
  }

  //底部按钮
  _bottomButtons(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          OutlineButton(
            onPressed: () {},
            child: Text('注册账号'),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
            ),
            textColor: Theme.of(context).primaryColor,
          ),
          FlatButton(
            onPressed: () {
              _login(context);
            },
            child: Text('登录'),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  _login(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          '假装这边你登陆了',
          textAlign: TextAlign.center,
        ),
        content: Container(
          height: 50,
          alignment: Alignment.center,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.blue,
            valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
