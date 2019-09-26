import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  var header = DrawerHeader(child: Text("Ajustes"));
  var info = AboutListTile(
    child: Text("Informacion de la aplicacion"),
    applicationIcon: Icon(Icons.favorite),
    applicationVersion: "v1.0.0",
    icon: Icon(Icons.info),
  );

  Drawer getDrawer(BuildContext context) {
    ListTile getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getListView() {
      return ListView(children: <Widget>[
        header,
        getItem(Icon(Icons.settings), "Configuracion", "/configuracion"),
        getItem(Icon(Icons.home), "Pagina principal", "/"),
        getItem(Icon(Icons.battery_alert), "Bateria", "/bateria"),
        info
      ]);
    }

    return Drawer(child: getListView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: getDrawer(context)
    );
  }
}
