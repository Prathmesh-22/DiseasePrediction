import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:med_app/util/doctorAppointment.dart';

class Doctors extends StatelessWidget {
  late final String doctImgPath;
  late final String rating;
  late final String doctName;
  late final String doctProfession;

  Doctors({
    required this.doctImgPath,
    required this.doctName,
    required this.doctProfession,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppointmentPage()));
            },
            child: Container(
              height: 100,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Column(
                  children: [
                    // pitchure of doctor
                    Image.asset(
                      doctImgPath,
                      height: 100,
                    ),

                    // rating
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                            size: 15,
                          ),
                          Text(rating),
                        ],
                      ),
                    ),

                    // name
                    Text(
                      doctName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),

                    // doctor tittle
                    Text(doctProfession),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
