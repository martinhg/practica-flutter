import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcor10-3.fna.fbcdn.net/v/t1.0-9/100689056_10220362338801541_6518387696665100288_o.jpg?_nc_cat=106&_nc_sid=84a396&_nc_ohc=FgvFoRu8DzYAX8MCy3r&_nc_ht=scontent.fcor10-3.fna&oh=42c62d6fb7e168f43a4d1446887a9fc8&oe=5F87DC22'),
                radius: 25.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('MH'),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://scontent.fcor10-3.fna.fbcdn.net/v/t31.0-8/30420884_10214409631147570_5110543842137308317_o.jpg?_nc_cat=104&_nc_sid=84a396&_nc_ohc=ISR7KZ0F8_IAX9fuYzR&_nc_ht=scontent.fcor10-3.fna&oh=159366bc1adaeb5a9e5f3816908fae1b&oe=5F895367'),
            fadeInDuration: Duration(
              milliseconds: 200,
            ),
          ),
        ));
  }
}
