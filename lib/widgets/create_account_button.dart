import 'package:flutter/material.dart';
import 'package:flutter_firebase_login/views/register_screen.dart';
import 'package:meta/meta.dart';
import 'package:flutter_firebase_login/repositories/user_repository.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: FlatButton(
        child: Text('Create an Account'),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return RegisterScreen(userRepository: _userRepository);
            }),
          );
        },
      ),
    );
  }
}
