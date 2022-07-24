import 'package:flutter/material.dart';
import 'package:medical_one/utility/catgeory.dart';
import 'package:medical_one/utility/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Diaa Mohamed,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.person,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          //card --> how do you feel ?

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  Container(
                    child: Image.asset('lib/icon/tooth.png'),
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple[200],
                  ),

                  // how do you feel ?

                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Fill out your medical card Right Now",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),
          //search bar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "How we can help you ?"),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          // horizontal listview --> listview

          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Category(
                  CategoryName: "Dentist",
                  IconImagePath: 'lib/icon/tooth.png',
                ),
                Category(
                  CategoryName: "Surgeon",
                  IconImagePath: 'lib/icon/inject.png',
                ),
                Category(
                  CategoryName: "Pharmacist",
                  IconImagePath: 'lib/icon/medicine.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          //doctorlist

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctor List",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePath: 'lib/images/Doctor1.jpg',
                  rating: '4.0',
                  doctorName: "Dr.Ahmed Tarek",
                  doctorProfessional: "Dentist",
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/Doctor2.jpg',
                  rating: '4.0',
                  doctorName: "Dr.Marwa Mohamed",
                  doctorProfessional: "Dentist",
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/Doctor3.jpg',
                  rating: '4.0',
                  doctorName: "Dr.Menna",
                  doctorProfessional: "Dentist",
                ),
              ],
            ),
          )
        ])));
  }
}
