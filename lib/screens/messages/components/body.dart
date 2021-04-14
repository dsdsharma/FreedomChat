import 'package:flutter/material.dart';
import 'package:freedomchat/constants.dart';
import 'package:freedomchat/models/ChatMessage.dart';
import 'package:freedomchat/screens/messages/components/chat_input_field.dart';
import 'package:freedomchat/screens/messages/components/message.dart';
import 'package:freedomchat/screens/messages/components/text_message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                    message: demeChatMessages[index],
                  )),
        )),
        ChatInputField()
      ],
    );
  }
}
