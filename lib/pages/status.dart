import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/socket.service.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    // socketService.socket.emit('');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Server status: ${socketService.serverStatus}')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          socketService.socket.emit('emitir-mensaje', {
            'nombre': 'Miguel',
            'mensaje': 'Hola mundo',
            'mensaje2': 'Aqui estamos aprendiendo sockets en flutter'
          });
        },
        child: Icon(Icons.message),
      ),
    );
  }
}
