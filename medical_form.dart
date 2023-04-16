import 'package:flutter/material.dart';
import 'package:med_app/home_screen.dart';
import 'package:med_app/util/webpage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MedForm extends StatelessWidget {
  const MedForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/54/38/0c/54380ce7c93fe2c5931c38ce6f9efec1.jpg'),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsetsDirectional.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Sahil Gupta',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "How Are You Feeling?",
                      labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                          color: Colors.grey[1000])),
                ),
                SizedBox(height: 25),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "What are the symptoms you are having?",
                      labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                          color: Colors.grey[1000])),
                ),
                SizedBox(height: 25),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Have you Taken Any Medicine Before?",
                      labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                          color: Colors.grey[1000])),
                ),
                SizedBox(height: 70),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
