import 'package:flutter/material.dart';
import 'package:whatsapp_clone/menuSection.dart';
import 'package:whatsapp_clone/favoriteSection.dart';
import 'package:whatsapp_clone/messageSection.dart';

const white_wht = Colors.white;
const black_color = Colors.black;

class HomPage extends StatelessWidget {
  final  bgcolor ;
  const HomPage({Key ? key, required this.bgcolor}) : super(key:  key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu,
            color: white_wht,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.search_rounded,
            color: white_wht,
            size: 30,
          ),
        ),
        ],
      ),
      body: Column(
        children: [
         MenuSection(),
         FavoriteSection(),
         Expanded(child: 
          MessageSection()
         )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFF2ac0a5),
        child: const Icon(
          Icons.edit,
          size: 30,
        ),
        ),
    );
  }
}