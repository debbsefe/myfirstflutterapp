import '../models/user.dart';
import 'authenticate/authenticate.dart';
import 'home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as provider;

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = provider.Provider.of<User>(context);

    // return either Home of Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
