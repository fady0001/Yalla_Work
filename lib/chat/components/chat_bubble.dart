import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/chat_message.dart';
import '../modules/chat_detail_page.dart';

class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({super.key, required this.chatMessage});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    print('========================#1');
    print(widget.chatMessage.message);
    print('========================#2');

    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type == MessageType.Receiver
                ? Colors.white
                : Colors.grey.shade200),
          ),
          padding: const EdgeInsets.all(16),
          child: Text(widget.chatMessage.message),
        ),
      ),
    );
  }
}
