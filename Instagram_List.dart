import 'package:flutter/material.dart';
import 'package:instagram_app/Inatagram_Post/Instagram_Story.dart';

class Instagram_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicesSize = MediaQuery.of(context).size;
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: Instagram_Story(),
                height: devicesSize.height * 0.12,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            new Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    image: AssetImage('assets/images/profileimage.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Column(
                                children: <Widget>[
                                  new Text(
                                    'User name',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                  new Text(
                                    'user location',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Color(0xff2f2f2f),
                                ),
                                onPressed: () {})
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: new Image.asset(
                      'assets/images/postimage.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                         Padding(padding: const EdgeInsets.only(left: 4.0),
                           child: IconButton(icon: Icon(Icons.favorite), onPressed: null),
                         ),
                         IconButton(icon: Icon(Icons.comment), onPressed: null),
                         IconButton(icon: Icon(Icons.share), onPressed: null)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.bookmark_border,),
                              onPressed: null),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: <Widget>[
                            Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                  '13k Like post',
                                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
                                ),
                                new Text('User Name : User Amir',style: TextStyle(fontSize: 12.0),),
                                new Text(
                                  'View All Comment...',
                                  style: TextStyle(fontWeight: FontWeight.w100),
                                ),

                              ],
                            ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                image: AssetImage('assets/images/profileimage.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Expanded(
                            child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: " Add a Comment ...",
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                   padding: const EdgeInsets.all(12.0),
                    child: new Text('4 hours ago', style: TextStyle(fontWeight: FontWeight.w400),),
                  )
                ],
              ));
  }
}
