import 'package:flutter/material.dart';
import 'package:dicoding_finalsubbegin/model/char.dart';

class DetailChar extends StatelessWidget {
  final Character char;

  DetailChar({required this.char});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: SafeArea(child: Padding(child: Column(children: []), padding: const EdgeInsets.all(10),)),
    );
  }
}