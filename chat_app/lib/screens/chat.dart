import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

final _firebase = FirebaseAuth.instance;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void setupPushNotifications() async {
    final fcm = FirebaseMessaging.instance;
    await fcm.requestPermission();

    // Target a single device to push notifications
    // final token = await fcm.getToken();
    // print(token);

    // Target a multiple device to push notifications through topics
    fcm.subscribeToTopic("chat");
  }

  @override
  void initState() {
    super.initState();
    setupPushNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
        actions: [
          IconButton(
            onPressed: () {
              _firebase.signOut();
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      body: Column(children: [Expanded(child: ChatMessages()), NewMessage()]),
    );
  }
}
