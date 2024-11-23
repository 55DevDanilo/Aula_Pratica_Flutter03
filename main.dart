import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  State<Contador> createState() => ContadorPagina();
}

class ContadorPagina extends State<Contador> {
  var contagem = 0;

  void aumentaContagem() {
    setState(() {
      contagem++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.network(
                'https://raw.githubusercontent.com/flutter/assets-for-api-docs/refs/heads/main/assets/widgets/owl.jpg',
                height: 200,
              ),
              onVerticalDragEnd: (DragEndDetails details) {
                aumentaContagem();
              },
            ),
            Text('Voce apertou o botão essa quantidade de vezes'),
            Text('$contagem'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: aumentaContagem,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('essa é a nossa gaveta'),
            ),
            ListTile(
              title: Text('texto1'),
              onTap: aumentaContagem,
            ),
            ListTile(
              title: Text('texto2'),
            )
          ],
        ),
      ),
    );
  }
}
