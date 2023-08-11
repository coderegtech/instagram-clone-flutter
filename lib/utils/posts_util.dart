import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostsUtil extends StatefulWidget {
  const PostsUtil({Key? key}) : super(key: key);

  @override
  _PostsUtilState createState() => _PostsUtilState();
}

class _PostsUtilState extends State<PostsUtil> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: const [
                    CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.pink,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstatic0.thethingsimages.com%2Fwordpress%2Fwp-content%2Fuploads%2F2020%2F05%2FJustin-Bieber-2-e1589306518618.jpg&f=1&nofb=1&ipt=ea9f0defebca4a65a17b683b4314b083ad1dff051158f34dde0994cf98566681&ipo=images"),
                        )),
                    SizedBox(width: 10),
                    Text(
                      "westley.windler",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Icon(FontAwesomeIcons.ellipsis)
              ]),
              SizedBox(height: 15),
              // Image Upload
              Container(
                  width: double.infinity,
                  height: 300,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://i.ytimg.com/vi/clAKM3ILHJY/maxresdefault.jpg",
                        fit: BoxFit.cover,
                      ))),

              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(FontAwesomeIcons.heart),
                        SizedBox(width: 10),
                        Icon(FontAwesomeIcons.circle),
                        SizedBox(width: 10),
                        Icon(FontAwesomeIcons.paperPlane)
                      ],
                    ),
                    Icon(FontAwesomeIcons.bookmark)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
