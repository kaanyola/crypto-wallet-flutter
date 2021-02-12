import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:crypto_wallet/screens/currencies_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(child: Text("Portfolio")),
          actions: [
            IconButton(
                icon: Stack(children: [
                  Positioned(
                      right: 0,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      )),
                  Icon(Icons.notifications_outlined),
                ]),
                onPressed: () {})
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Coins',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 16)),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CurrenciesScreen(),
                        )),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFFF5B300), shape: BoxShape.circle),
                      child: Icon(
                        CryptoFontIcons.BTC,
                        color: Colors.white,
                      ),
                    ),
                    title: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bitcoin',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '\$1233.45',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '0.000041',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '12.41%',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.green,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
