import 'package:flutter/material.dart';

import 'package:practica_flutter/src/providers/menu_provider.dart';
import 'package:practica_flutter/src/utils/icon_string_util.dart';

import 'package:practica_flutter/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // menuProvider.loadData()
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _itemsList(snapshot.data, context),
          );
        });
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    data.forEach((option) {
      final widgetTemp = ListTile(
        title: Text(option['texto']),
        leading: getIcon(option['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          // Forma tradicional
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);

          Navigator.pushNamed(context, option['ruta']);
        },
      );

      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
