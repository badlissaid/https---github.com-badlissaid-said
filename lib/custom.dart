
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5
      ),
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(25)
          
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              
              child: Icon(icon),
            ),
            // ignore: prefer_const_constructors
            SizedBox(width: 20,),
            Text(text,style: const TextStyle(fontSize: 22,fontWeight:FontWeight.w500 ),),
          ],
        ),
      ),
    );
 } }