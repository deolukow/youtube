import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';

import '../theme/colors.dart';

Widget getAppBar() {
  return AppBar(
    backgroundColor: Color(0xFF1b1c1e),
    title: Padding(
      padding: const EdgeInsets.only(right: 2, left: 2),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/youtube.svg",
            width: 35,
          ),
          Text(
            'YouTube',
            style: TextStyle(
                color: white,
                fontSize: 27,
                height: 1,
                fontFamily: 'Gothic',
                fontWeight: FontWeight.bold,
                letterSpacing: -1.7),
          ),
          SizedBox(
            width: 96,
          ),
          Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    LineIcons.video_camera,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 3,
              ),
              IconButton(
                  icon: Icon(LineIcons.bell, color: Colors.white),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.search_outlined, color: Colors.white),
                  onPressed: () {}),
              SizedBox(
                width: 9,
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://uas-paw-kelompokiv.000webhostapp.com/img/deo.jpg"),
                        fit: BoxFit.cover)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
