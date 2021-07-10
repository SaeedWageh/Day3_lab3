import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  final Function onItemClick;

  UserCard(
      {required this.user, required this.onItemClick});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: this.user);
      },
      child: Card(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("${user.image}", width: 120),
              SizedBox(
                height: 5.0,
              ),
              Text("${user.name}"),
              SizedBox(
                height: 5.0,
              ),
              Text("${user.email}")
            ],
          ),
        ),
      ),
    );
  }
}
