import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          FirebaseFirestore.instance
              .collection("chat")
              .orderBy("createdAt", descending: false)
              .snapshots(),
      builder: (context, chatSnapshots) {
        if (chatSnapshots.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (!chatSnapshots.hasData || chatSnapshots.data!.docs.isEmpty) {
          return Center(child: Text("No messages found."));
        }
        if (chatSnapshots.hasError) {
          return Center(child: Text("Something went wrong..."));
        }
        final loadedMessages = chatSnapshots.data!.docs;
        return ListView.builder(
          itemCount: loadedMessages.length,
          itemBuilder: (context, index) {
            return Text(loadedMessages[index].data()["text"]);
          },
        );
      },
    );
  }
}
