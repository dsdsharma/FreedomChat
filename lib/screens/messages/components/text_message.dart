import 'package:flutter/material.dart';
import 'package:freedomchat/constants.dart';
import 'package:freedomchat/models/ChatMessage.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    this.message,
    Key key,
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: EdgeInsets.only(top: kDefaultPadding),
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75,
            vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            color: kPrimaryColor
                .withOpacity(message.isSender ? 1 : 0.08),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          message.text,
          style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1.color),
        ));
  }
}
