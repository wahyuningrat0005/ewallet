// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ewallet/util/button.dart';
import 'package:ewallet/util/little.dart';
import 'package:ewallet/util/my_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pageController
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings))
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      "My",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Cards",
                      style: TextStyle(fontSize: 26),
                    ),
                  ]),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //MyCard
            Container(
              height: 200,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5230.30,
                      cardNumber: 23456789,
                      expiryMonth: 07,
                      expiryYear: 24,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 1234.34,
                      cardNumber: 123456789,
                      expiryMonth: 07,
                      expiryYear: 24,
                      color: Colors.green[300],
                    ),
                    MyCard(
                      balance: 5230.30,
                      cardNumber: 23456789,
                      expiryMonth: 07,
                      expiryYear: 24,
                      color: Colors.red[300],
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade600),
            ),
            SizedBox(
              height: 40,
            ),
            //tree button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    imagePath: 'assets/moneytf.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    imagePath: 'assets/transcation.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                    imagePath: 'assets/bil.png',
                    buttonText: 'Bills',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    MyLittle(
                      iconImage: 'assets/statistic.png',
                      titleText: 'Statistic',
                      subtittle: 'Payment and Icome',
                    ),
                    MyLittle(
                      iconImage: 'assets/creditcard.png',
                      titleText: 'Transcation',
                      subtittle: 'Transcation history',
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
