import 'package:flutter/material.dart';

class HomeNoData extends StatelessWidget {
  const HomeNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(padding: EdgeInsets.all(8),child: Column(children: [
        Image.asset('assets/images/animation_llzal741_small.gif',height: 250,width: 250,fit: BoxFit.fill,),
        Text('Searching 🔍',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
      ]),),
    );
  }
}
