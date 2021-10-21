import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageURL;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(
      {this.imageURL = "assets/images/grub.png",
      this.name = "Anonymous",
      this.text = "Saya sibuk",
      this.time = "Long time ago",
      this.unread = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageURL,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: title,
              ),
              Text(
                text,
                style:
                    unread ? subTitle : subTitle.copyWith(color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitle,
          ),
        ],
      ),
    );
  }
}
