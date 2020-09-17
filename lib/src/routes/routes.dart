import 'package:flutter/material.dart';

import 'package:practica_flutter/src/pages/alert_page.dart';
import 'package:practica_flutter/src/pages/animated_container.dart';
import 'package:practica_flutter/src/pages/avatar_page.dart';
import 'package:practica_flutter/src/pages/card_page.dart';
import 'package:practica_flutter/src/pages/home_page.dart';
import 'package:practica_flutter/src/pages/input_page.dart';
import 'package:practica_flutter/src/pages/listview_page.dart';
import 'package:practica_flutter/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext contex) => HomePage(),
    'alert': (BuildContext contex) => AlertPage(),
    'avatar': (BuildContext contex) => AvatarPage(),
    'card': (BuildContext contex) => CardPage(),
    'animatedConainter': (BuildContext contex) => AnimatedContainerPage(),
    'inputs': (BuildContext contex) => InputPage(),
    'slider': (BuildContext contex) => SliderPage(),
    'list': (BuildContext contex) => ListViewPage()
  };
}
