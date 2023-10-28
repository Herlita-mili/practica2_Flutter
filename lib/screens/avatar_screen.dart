import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  final String nombre = "Herlita Farro Carrero";
  final String carrera = "Diseño y Desarrollo de Software";

  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Perfil'),
        elevation: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 50),
          const Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/foto.jpeg'),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              nombre,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              carrera,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.facebook),
                color: Colors.blue,
                onPressed: () {
                  // Agrega aquí la acción cuando se toque el ícono de Facebook.
                },
              ),
              SizedBox(width: 20),
              IconButton(
                icon: Icon(Icons.phone),
                color: Colors.green, // Puedes usar un icono de teléfono en lugar de WhatsApp
                onPressed: () {
    // Agrega aquí la acción cuando se toque el ícono de "WhatsApp".
                },
                )
            ],
          ),
        ],
      ),
    );
  }
}
