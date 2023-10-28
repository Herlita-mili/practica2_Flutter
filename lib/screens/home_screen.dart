import 'package:examen1/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final options = AppRoutes.menuOptions[index];
          return ListTile(
            leading: Icon(
              options.icon,
              color: Color.fromARGB(255, 238, 21, 166),
            ),
            title: Text(options.name),
            trailing: Icon(Icons.star, color: Color.fromARGB(255, 202, 45, 110),), // Cambiado a Icons.star
            onTap: () {
              Navigator.pushNamed(context, options.route);
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
