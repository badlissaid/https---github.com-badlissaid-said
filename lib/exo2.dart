import 'package:flutter/material.dart';
import 'package:rich_app/custom.dart';

class SecondExercice extends StatelessWidget {
  const SecondExercice({super.key, required this.imagelink, required this.completName, required this.telephone, required this.email});
  final String imagelink;
final String completName;
final String telephone;
final String email;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green[200],
      body:  ExerciceBody(imagelink: imagelink, completName:completName, telephone:telephone, email: email,),
    );
  }
}

class ExerciceBody extends StatelessWidget {
  const ExerciceBody({
    super.key, required this.imagelink, required this.completName, required this.telephone, required this.email,
  });
final String imagelink;
final String completName;
final String telephone;
final String email;
  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Image.asset(imagelink), 
     Text(completName,style: const TextStyle(fontSize: 25,fontFamily: 'serif'),),
    const Text('STUDENT',style: TextStyle(fontSize: 16),),
     CustomCard(icon: Icons.phone, text: telephone,),
     CustomCard(icon: Icons.email, text: email,),

      ],
    );
  }
}