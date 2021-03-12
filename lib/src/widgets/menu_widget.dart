import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              
              image: DecorationImage(image: AssetImage('assets/menu-img.jpg'),fit: BoxFit.cover )
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue, ),
            title: Text("Home"),
            onTap: ()=>Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blue, ),
            title: Text("Party Mode"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue, ),
            title: Text("People"),
            onTap: (){},
          ), 
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue, ),
            title: Text("Settings"),
            onTap: (){
              // Navigator.pop(context);
              // Navigator.pushNamed(context, SettingsPage.routeName);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName); //ojo pagina de login
            /*
            ¡Hola Edgar!
            Hay varias formas de prevenir el back button.
            Por ejemplo: http://www.leutbounpaseuth.me/flutter/prevent-back-button/, https://stackoverflow.com/questions/50037710/flutter-move-to-a-new-screen-without-back o https://stackoverflow.com/questions/52689049/flutter-navigate-to-a-new-screen-and-clear-all-the-previous-screens.
            Te recomendaría pruebes varios, para que encuentras la que se adapte más a tus necesidades.
            Saludos.
            */ 
            
            
            }, 
          )
        ],
        
      ),
    );
  }
}