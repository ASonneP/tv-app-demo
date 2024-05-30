import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.search, size: 28),
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Main',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/shop');
                },
                child: Text('Shop',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/apps');
                },
                child: Text('Apps',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.notifications, size: 28),
                onPressed: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.settings, size: 28),
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');
                },
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.person, size: 28),
                onPressed: () {
                  Navigator.pushNamed(context, '/profiles');
                },
              ),
              SizedBox(width: 10),
              TimeDisplay(),
            ],
          ),
        ],
      ),
    );
  }
}

class TimeDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('HH:mm').format(DateTime.now());
    return Text(
      formattedTime,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
