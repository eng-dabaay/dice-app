import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftNumber = 1;
  int rigtNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Dice App', style: TextStyle(fontSize: 30, color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        leftNumber = Random().nextInt(6)+1;
                      });
                    },
                    child: Image.asset('ludo/dice$leftNumber.png'),
                  ),
                ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      rigtNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('ludo/dice$rigtNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
