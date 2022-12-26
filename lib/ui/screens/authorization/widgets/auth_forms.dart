import 'package:flutter/material.dart';
import '../../../globalwidgets/auth_form.dart';

class AuthNicknameForm extends StatelessWidget {
  const AuthNicknameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthForm(width: 218, hintText: 'Никнейм...',);
  }
}

class AuthPasswordForm extends StatelessWidget {
  const AuthPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AuthForm(width: 218, hintText: 'Пароль...', );
  }
}
