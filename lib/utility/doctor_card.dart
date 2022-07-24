import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfessional;

  DoctorCard(
      {required this.doctorImagePath,
      required this.doctorName,
      required this.doctorProfessional,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Expanded(
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(50)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              //pic  of doc

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  doctorImagePath,
                  height: 100,
                ),
              ),
              SizedBox(height: 20),
              //rating 3
              Icon(
                Icons.star,
                color: Colors.amber[700],
              ),
              Text(
                rating,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              //doctor name
              Text(
                doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 5),
              // doctor title
              Text('3 yrs Exp' + doctorProfessional),
            ])),
      ),
    );
  }
}
