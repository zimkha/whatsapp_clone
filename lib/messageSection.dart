import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/favoriteSection.dart';


class MessageSection extends StatelessWidget {

  final List messageListe = [
    {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
      'message': 'yep bro Date Bayo',
      'lue' : 0,
      'date': '16:25'
    },
    {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
       'message': 'Ore wa Uzumaki Naruto',
      'lue' : 0,
      'date': '16:25'
    },
    {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
       'message': 'Nani Sténdayo',
      'lue' : 0,
      'date': '16:25'
    },
    {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
       'message': 'Nani Sténdayo',
      'lue' : 0,
      'date': '16:25'
    },
    {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
       'message': 'Nani Sténdayo',
      'lue' : 0,
      'date': '16:25'
    },
    {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
       'message': 'Nani Sténdayo',
      'lue' : 0,
      'date': '16:25'
    },
     {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
       'message': 'Nani Sténdayo',
      'lue' : 0,
      'date': '16:25'
    },
     {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
      'message': 'yep bro MoshiMoshi',
      'lue' : 0,
      'date': '16:25'
    },
     {
      'senderName' : 'Naruto',
      'senderPicture' : 'images/avatar/Naruto1.png',
      'message': 'yep bro MoshiMoshi',
      'lue' : 0,
      'date': '16:25'
    }
  ];
  MessageSection({Key ? key}) : super(key: key);
  @override 
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messageListe.map((msg) {
          return InkWell(
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                     width: 62,
                     height: 62,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: d_green,
                       image: DecorationImage(
                         image: AssetImage(msg['senderPicture']),
                         fit: BoxFit.cover
                       )
                     ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [ 
                               Text(
                                msg['senderName'],
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500
                              )
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    msg['message'],
                                      style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500
                              )
                                  )
                                ],
                              )
                             ],
                            ),
                            Column(
                              children: [
                                Text(msg['date'])
                              ],
                            )
                          ]
                        ),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        )
                      ],
                    ),
                   ),
                ],
              )
            )
          ); 
        }).toList(),
      ),
    );
  }
}