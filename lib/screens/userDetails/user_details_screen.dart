import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/user_card.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args;
    args = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("user details"),
      ),
      body: Center(
        child: UserCard(
          user: args, onItemClick: (){},
        ),
      ),
    );
  }
}
