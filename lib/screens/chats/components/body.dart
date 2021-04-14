import 'package:flutter/material.dart';
import 'package:freedomchat/components/filled_outline_button.dart';
import 'package:freedomchat/constants.dart';
import 'package:freedomchat/models/Chat.dart';
import 'package:freedomchat/screens/chats/components/chat_card.dart';
import 'package:freedomchat/screens/messages/messages_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                  press: () {}, text: "Recent Messages"),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
