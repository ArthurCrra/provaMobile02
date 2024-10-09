import 'package:chat_app/views/feed_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text('Página Inicial'),
    backgroundColor: Colors.green,
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Bem-vindo", style: TextStyle(fontSize: 24)),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FeedPage()));
          },
          child: Text("Ver Feedbacks"),
        ),
      ],
    ),
  ),
);
}
}