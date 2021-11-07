import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const d_green = Color(0xFF2ac0a5);

class FavoriteSection extends StatelessWidget {
  final List favoritLis = [
    {
      'name' : 'Naruto 1',
      'picture' : 'images/avatar/Naruto1.png' 
    },
     {
      'name' : 'Kakashi Sensei',
      'picture' : 'images/avatar/kakashi.png' 
    },
     {
      'name' : 'Naruto 2',
      'picture' : 'images/avatar/Naruto2.jpeg' 
    },
     {
      'name' : 'Himawari',
      'picture' : 'images/avatar/boruto.png' 
    },
    {
      'name' : 'Kaguya',
      'picture' : 'images/avatar/boruto.png' 
    },
    {
      'name' : 'Me',
      'picture' : 'images/avatar/boruto.png' 
    }
    ];
  FavoriteSection({Key ? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(      
       color: Colors.black,
       child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15
        ),
        decoration: BoxDecoration(
          color: d_green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Favorite Contacts',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    )
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: (){},
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoritLis.map((item) {
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(item['picture']),
                          )
                        ),
                        Text(
                          item['name'],
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                          )
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
       ),
    );
  }
}