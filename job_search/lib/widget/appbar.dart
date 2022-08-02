import 'package:flutter/material.dart';
class HomeAppbar extends StatefulWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome home",
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
                Text(
                  "Annie Bryant",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 18, right: 14),
                      transform: Matrix4.rotationZ(100),
                      child: Icon(Icons.notifications_none_outlined)),
                  SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/avatar.png',
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Positioned(
                  left: 16,
                  top: 2,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
