import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomMenu(),
    );
  }
}

class CustomMenu extends StatelessWidget {
  // Lista de opciones del menú junto con las imágenes correspondientes
  final List menuOptions = [
  MenuItem(title: "Home", image: "assets/chat.png"),
  MenuItem(title: "Profile", image: "assets/home.png"),
  MenuItem(title: "Chat", image: "assets/user.png"),
  MenuItem(title: "Alarma", image: "assets/alarma.png"),
  MenuItem(title: "Actividades", image: "assets/actividades.png"),
  MenuItem(title: "Apuntes", image: "assets/apuntes.png"),
  MenuItem(title: "Telefono", image: "assets/telefono.png"),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Menu'),
      ),
      body: ListView.builder(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              menuOptions[index].image,
              width: 40,
              height: 40,
            ),
            title: Text(menuOptions[index].title),
            subtitle: Text(
              menuOptions[index].title,
              style: TextStyle(fontSize: 12), // Tamaño de fuente más pequeño
            ),
            onTap: () {
              // Lógica para manejar la selección de la opción del menú
              // Por ejemplo, puedes navegar a una nueva pantalla
              print('Seleccionaste: ${menuOptions[index].title}');
            },
          );
        },
      ),
    );
  }
}

class MenuItem {
  final String title;
  final String image;

  MenuItem({required this.title, required this.image});
}
