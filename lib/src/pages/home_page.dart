import 'package:flutter/material.dart';

import 'package:preferencias_usuario/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      
      appBar: AppBar(
        title: Text("Preferencias de usuario")
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Color Secundario"),
          Divider(),
          Text("Género"),
          Divider(),
          Text("Nombre Usuario"),
          Divider(),
        ],
      )
    );
  }


}