import 'package:flutter/material.dart';
import 'package:manager/home.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'approvereq.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    Color _iconColor = Colors.black;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          _buildPopupDialog(context),
                    );
                  },
                  child: Image(
                    image: AssetImage('lib/images/face.png'),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Caroline \nRose',
                      style: TextStyle(
                          color: Colors.lightBlue.shade700, fontSize: 25),
                    ),
                    Text(
                      'View profile and settings',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
                horizontalTitleGap: 15,
                minLeadingWidth: 0,
              )),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            thickness: 0.3,
            color: Colors.grey.shade500,
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 0,
                  leading: Icon(
                    Icons.qr_code,
                    color: Colors.blue.shade900,
                    size: 30,
                  ),
                  title: Text(
                    'Attendance stats',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 0.3,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 0,
                  leading: Icon(
                    Icons.timer,
                    color: Colors.blue.shade900,
                    size: 30,
                  ),
                  title: Text(
                    'Aprove Request',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 0.3,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 0,
                  thickness: 0.3,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 0,
                  leading: Icon(
                    Icons.details,
                    color: Colors.blue.shade900,
                    size: 30,
                  ),
                  title: Text(
                    'User Details',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 0.3,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  horizontalTitleGap: 0,
                  leading: Icon(
                    Icons.timer,
                    color: Colors.blue.shade900,
                    size: 30,
                  ),
                  title: Text(
                    'Attendance stats',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 0.3,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
          ),
          SizedBox(
            width: 100,
            child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    )
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade900),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
          )
        ],
      ),
    ));
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage('lib/images/face.png'), height: 70),
          SizedBox(
            height: 15,
          ),
          Text('Caroline Rose'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text('+91 744xxxxx75'),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mail,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text('carolinerose@gmail.com'),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
              width: 81,
              height: 30,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade900),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('logout', style: TextStyle(color: Colors.white))
                    ],
                  )))
        ],
      ),
    );
  }
}
