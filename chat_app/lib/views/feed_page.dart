import 'package:chat_app/services/auth_service.dart';
import 'package:chat_app/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Feedbacks',
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Feedbacks').snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                var feedback = snapshot.data.docs[index];
                return ListTile(
                  leading: CircleAvatar(),
                  title: Text(feedback['username']),
                  subtitle: Text(feedback['message']),
                );
              },
            );
          } else {
            return const Center(
              child: Text("Nenhum feedback encontrado."),
            );
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: const Color(0xFFF2EEEE),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Digite seu feedback',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      // Enviar feedback
                      await FirestoreService().postFeedback(messageController.text);
                      messageController.clear();
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Icon(Icons.send, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
