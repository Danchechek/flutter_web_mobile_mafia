import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        const SizedBox(
          height: 62,
          width: double.infinity,
        ),
        Positioned(
          top: 20,
          right: 20,
          child: ElevatedButton(
            style: theme.elevatedButtonTheme.style,
            onPressed: () {},
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
              child: Text(
                'Регистрация',
                style: theme.textTheme.headline1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
