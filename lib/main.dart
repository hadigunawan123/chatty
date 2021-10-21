import 'package:bwa_chatty/chat.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: tealColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
          color: whiteColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/grub.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hadi Gunawan',
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Jabatan',
                style: TextStyle(color: Colors.white38, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: title,
                    ),
                    ChatTile(
                      imageURL: 'assets/images/grub.png',
                      name: 'Joshua',
                      text: 'Ey Bre...',
                      time: 'Now',
                    ),
                    ChatTile(
                      imageURL: 'assets/images/grub.png',
                      name: 'Sidiq',
                      text: 'woakoakakoawko',
                      time: 'Now',
                    ),
                    ChatTile(
                      imageURL: 'assets/images/grub.png',
                      name: 'Jokowi',
                      text: 'Ngutang dong bre...',
                      unread: true,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(30, 16, 30, 5)),
                    Text(
                      'Group',
                      style: title,
                    ),
                    ChatTile(
                      imageURL: 'assets/images/grub.png',
                      name: 'RWB',
                      text: 'Hari ini harus 50 SC',
                      unread: true,
                      time: '05:30',
                    ),
                    ChatTile(
                      imageURL: 'assets/images/grub.png',
                      name: 'Petarung Halal',
                      text: 'Pulang malem yeay..',
                      time: '07:40',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
