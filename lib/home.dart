import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:manager/approvereq.dart';
import 'package:manager/viewusers.dart';
import 'package:marquee/marquee.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(
              child: Container(
            height: 65,
            color: HexColor('#d8d8d9'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      LineIcon(
                        LineIcons.home,
                        size: 30,
                        color: HexColor('#818081'),
                      ),
                      Text(
                        'Home',
                        style:
                            TextStyle(color: HexColor('#818081'), fontSize: 15),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      LineIcon(
                        LineIcons.barChart,
                        size: 30,
                        color: HexColor('#818081'),
                      ),
                      Text(
                        'Stats',
                        style:
                            TextStyle(color: HexColor('#818081'), fontSize: 15),
                      )
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.qr_code,
                      color: HexColor('#818081'),
                      size: 50,
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Users();
                    }));
                  },
                  child: Column(
                    children: [
                      LineIcon(
                        LineIcons.bookOpen,
                        size: 30,
                        color: HexColor('#818081'),
                      ),
                      Text(
                        'User',
                        style:
                            TextStyle(color: HexColor('#818081'), fontSize: 15),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return More();
                    }));
                  },
                  child: Column(
                    children: [
                      LineIcon(
                        LineIcons.boxes,
                        size: 30,
                        color: HexColor('#818081'),
                      ),
                      Text(
                        'More',
                        style:
                            TextStyle(color: HexColor('#818081'), fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                      ),
                      Row(
                        children: [
                          Text(
                            'Caroline\nRose',
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 30),
                          ),
                          IconButton(
                              onPressed: () {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  builder: (context) => SingleChildScrollView(
                                    controller:
                                        ModalScrollController.of(context),
                                    child: Container(
                                        child: Column(
                                      //  mainAxisAlignment:
                                      //    MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Divider(
                                          thickness: 5,
                                          color: Colors.blue.shade900,
                                          height: 1,
                                          endIndent: 120,
                                          indent: 120,
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        GestureDetector(
                                            child: ListTile(
                                          leading: Image(
                                              image: AssetImage(
                                                  'lib/images/face.png')),
                                          title: Text('Manager',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue.shade900)),
                                        )),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        ListTile(
                                          leading: Image(
                                              image: AssetImage(
                                                  'lib/images/face.png')),
                                          title: Text('Admin',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.blue.shade900)),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        GestureDetector(
                                            child: ListTile(
                                          leading: Image(
                                              image: AssetImage(
                                                  'lib/images/face.png')),
                                          title: Text('Employee',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.blue.shade900)),
                                        )),
                                        SizedBox(
                                          height: 25,
                                        )
                                      ],
                                    )),
                                  ),
                                );
                              },
                              icon: Icon(Icons.arrow_drop_down,
                                  color: Colors.lightBlue))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 86,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context),
                          );
                        },
                        child: Image(
                            image: AssetImage('lib/images/face.png'),
                            height: 50),
                      ),
                      Text(
                        'Admin',
                        style: TextStyle(color: Colors.amber, fontSize: 10),
                      ),
                      Text(
                        'Bengaluru',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        'Emp Id: 12345',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('You Have :',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.normal)),
                Column(
                  children: [
                    Text('5', style: TextStyle(fontSize: 40)),
                    Text(
                      'Pending requests',
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('0', style: TextStyle(fontSize: 40)),
                    Text(
                      'Visitor scheduals',
                      style: TextStyle(color: Colors.green, fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Marquee(
                text: 'sample text ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 20.0,
                velocity: 60.0,
                pauseAfterRound: Duration.zero,
                startPadding: 10.0,
                accelerationDuration: Duration.zero,
                accelerationCurve: Curves.linear,
                decelerationDuration: Duration.zero,
                decelerationCurve: Curves.easeOut,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(4),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('View attendance stats',
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 20)),
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                          backgroundColor: Colors.blue,
                        )
                      ])),
            ),
            Text('Approve Request',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              GestureDetector(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Text(
                        'Request For Leave',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Approve_req();
                    }));
                  }),
              GestureDetector(
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Center(
                      child: Text(
                        'Request to regularize',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  onTap: () {})
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(4),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('View user details',
                            style: TextStyle(
                                color: Colors.blue.shade900, fontSize: 20)),
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                          backgroundColor: Colors.blue,
                        )
                      ])),
            ),
          ])),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: Container(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.person_outline_rounded,
                  color: Colors.blue,
                ),
                Text(
                  'My profile',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                Text(
                  'notifications',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
