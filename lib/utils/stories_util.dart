import 'package:flutter/material.dart';

class StoriesUtil extends StatefulWidget {
  const StoriesUtil({Key? key}) : super(key: key);

  @override
  _StoriesUtilState createState() => _StoriesUtilState();
}

class _StoriesUtilState extends State<StoriesUtil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          CircleAvatar(
              radius: 30,
              backgroundColor: Colors.pink,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic0.thethingsimages.com%2Fwordpress%2Fwp-content%2Fuploads%2F2020%2F05%2FJustin-Bieber-2-e1589306518618.jpg&f=1&nofb=1&ipt=ea9f0defebca4a65a17b683b4314b083ad1dff051158f34dde0994cf98566681&ipo=images"),
              )),
          SizedBox(
            height: 3,
          ),
          Text(
            'john',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
