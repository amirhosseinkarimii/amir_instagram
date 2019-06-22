import 'package:flutter/material.dart';

class Instagram_Story extends StatelessWidget {
  final Stories = Expanded(
      child: new ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            new Container(
              child: Padding(padding: const EdgeInsets.fromLTRB(10.0, 70.0, 0.0, 0.0),
              child: new Text('User name',style: TextStyle(fontSize: 10.0),),
              ),
              width: 70.0,
              height: 70.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                //border: Border.all(color: Colors.deepOrange , width: 3.0 ,),
                image:
                    DecorationImage(image: AssetImage('assets/images/profileimage.jpg'),fit: BoxFit.fill),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 7.0),
            ),
            index == 0
                ? Positioned(
                    right: 10.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10.0,
                      child: new Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                : new Container(),
          ],
        ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(1.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stories,
        ],
      ),
    );
  }
}
