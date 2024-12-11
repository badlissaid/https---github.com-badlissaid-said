import 'package:flutter/material.dart';
import 'package:rich_app/constants.dart';
import 'package:rich_app/exo2.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CustomCard(
            completName: 'abdelghani moussaouli',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'kacem boussnan',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'fekhar mensour',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'ahmed chikh salah',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'mohammed bousnane',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'sofiane chihani',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'azghar lokmane',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'yacer babaoumar',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'brahim bafouloulou',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),
          CustomCard(
            completName: 'kacem moussaouali',
            imagelink: kImage,
            email: 'moussaouali@gmail.com',
            telephone: '0696467255',
          ),

        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.imagelink,
    required this.completName,
    required this.telephone,
    required this.email,
  });
  final String imagelink;
  final String completName;
  final String telephone;
  final String email;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SecondExercice(
              imagelink: imagelink,
              completName: completName,
              telephone: telephone,
              email: email);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 11),
        child: Container(
          height: 65,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.red,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:  6.0,right: 8.00),
                child: Container(
                 
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imagelink,),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    completName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                  Text(email)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
