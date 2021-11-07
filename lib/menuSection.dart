import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuSection extends StatelessWidget {
  final List menuItems = ['Message', 'Online', 'Story', 'Groups', 'Calls'];

  MenuSection({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 100,
       color: Colors.black,
       child:  SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Padding(
           padding: const EdgeInsets.all(15),
           child: Row(
             children: menuItems.map((item) {
               return Container(
                 margin: EdgeInsets.only(right: 50),
                 child: Text(
                   item,
                   style: GoogleFonts.inder(
                     color: Colors.white60,
                     fontSize: 15
                     ),
                   ),
               );
             }).toList()
           ),
         ),
       ),
    );
  }
}