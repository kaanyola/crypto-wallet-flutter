import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CurrenciesScreen extends StatefulWidget {
  @override
  _CurrenciesScreenState createState() => _CurrenciesScreenState();
}

class _CurrenciesScreenState extends State<CurrenciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF5F627D),
            Color(0xFF313347),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Your Coins")),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                      activeColor: Colors.white, size: Size(4, 4)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24, bottom: 18),
                height: 190,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      color: Colors.black54,
                      spreadRadius: -5,
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF08AEEA), Color(0xFF2AF598)]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
