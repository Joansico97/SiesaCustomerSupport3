import 'package:flutter/material.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Login Page',
            style: styles.headerOne(),
          ),
        ),
      ),
    );
  }
}
