// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String interpret;
  final String status;
  final int result;
  const ResultScreen(
      {super.key,
      required this.interpret,
      required this.status,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF111328),
        elevation: 0.0,
        title: Center(
          child: Text(
            'Your Result',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: Color(0xFF111328),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$result',
                      style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      interpret,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w200,
                          color: Colors.white),
                    ),
                  ],
                )),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            color: Color(0xFFEB1555),
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              height: 50.0,
              child: Text(
                'Re-Calculate',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
