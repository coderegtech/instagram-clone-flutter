import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app_clone/utils/posts_util.dart';
import 'package:instagram_app_clone/utils/stories_util.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.photo_camera_outlined,
                      size: 30,
                    ),
                    Container(
                      width: 200,
                      child: Image.asset("lib/images/instagram_logo.png"),
                    ),
                    Container(
                      child: Icon(
                        FontAwesomeIcons.solidPaperPlane,
                        color: Colors.black87,
                        size: 25,
                      ),
                    ),
                  ]),
            ),

            // Stories Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                          Text(
                            "Watch all",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ))
                ],
              ),
            ),

            // Stories

            Container(
                height: 100,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return StoriesUtil();
                    })),

// posts
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return PostsUtil();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
