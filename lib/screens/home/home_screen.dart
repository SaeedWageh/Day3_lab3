import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/user_card.dart';
import 'package:flutter_application_3/model/user.dart';
// import 'package:flutter_application_3/screens/userDetails/user_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  // int _counter = 0;
  List<User> _usersList = [
    User(
        id: "1",
        name: "saeed",
        email: "saeed@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "2",
        name: "wageh",
        email: "wageh@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "3",
        name: "john",
        email: "john@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "4",
        name: "mark",
        email: "mark@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "5",
        name: "marina",
        email: "marina@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "6",
        name: "marina",
        email: "marina@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "7",
        name: "marina",
        email: "marina@gmail.com",
        image: "assets/images/man.jpg"),
    User(
        id: "8",
        name: "marina",
        email: "marina@gmail.com",
        image: "assets/images/man.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getUserCard(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //     _counter++;

      //     });
      //   },
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      title: Text("Hello"),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print("clicked");
        },
      ),
    );
  }

  Widget getUserCard() {
    List<Widget> items = List.generate(
        _usersList.length,
        (index) => UserCard(
            user: _usersList[index],
            onItemClick: (clickedUser) {
              print("clicked user ${clickedUser.name}");
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => UserDetailsScreen(
              //           user: clickedUser,
              //         )));
            }
            )
            );

    return ListView(
      children: items,
      padding: EdgeInsets.all(10),
    );
  }

  // Widget getHomeViewBody() {
  //   return Center(
  //     child: Column(
  //       children: [Text("your Current Count i "), Text('$_counter')],
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       mainAxisSize: MainAxisSize.max,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //     ),
  //   );
  // }
}
