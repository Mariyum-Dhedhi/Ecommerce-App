import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.istockphoto.com/id/1196083861/vector/simple-man-head-icon-set.jpg?s=612x612&w=0&k=20&c=a8fwdX6UKUVCOedN_p0pPszu8B4f6sjarDmUGHngvdM=";
    return Drawer(
        child: Container(
      color: Color.fromARGB(255, 219, 227, 232),
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 219, 227, 232)),
                  accountName: Text("Mariyum",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  accountEmail: Text(
                    "maryamdhedhi6@gmail.com",
                    style: TextStyle(
                        color: Color.fromARGB(255, 97, 96, 96), fontSize: 15),
                  ),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          imageUrl) //Image Provider (Network & Assest Image)
                      ))),
          ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              )),
          ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
              )),
          ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
              ))
        ],
      ),
    ));
  }
}
