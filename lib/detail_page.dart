import 'package:flutter/material.dart';
import 'package:flutter_exam/home_page.dart';
import 'package:flutter_exam/order_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
          },
          padding: EdgeInsets.only(left: 30),
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: const Text(
          'Detail',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
        ),
        actions: const [
          Icon(Icons.favorite_outline, color: Colors.black),
          SizedBox(
            width: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/bg_3.png',
                width: 360,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cappucino',
                      style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    const Text(
                      'with Chocolate',
                      style: TextStyle(color: Color(0xff9B9B9B), fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: '⭐ 4.8 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18)),
                                TextSpan(
                                    text: '(230)',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        fontWeight: FontWeight.w500))
                              ]),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.coffee,
                                color: Color(0xffC67C4E),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.fastfood,
                                color: Color(0xffC67C4E),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    const Divider(
                      thickness: 1.6,
                      color: Color(0xffEAEAEA),
                    ),
                    SizedBox(height: 15),
                    const Text(
                      'Description',
                      style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text:
                                  'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                              style: TextStyle(
                                  color: Color(0xff9b9b9b),
                                  fontSize: 15,
                                  letterSpacing: 1)),
                          TextSpan(
                              text: 'Read More',
                              style: TextStyle(
                                  color: Color(0xffC67C4E),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ]),
                      ),
                    ),
                    SizedBox(height: 20),
                    const Text(
                      'Size',
                      style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(14)),
                          child: const Center(
                              child: Text(
                            'S',
                            style: TextStyle(
                                color: Color(0xff2F2D2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffFFF5EE),
                              border: Border.all(color: Color(0xffC67C4E)),
                              borderRadius: BorderRadius.circular(14)),
                          child: const Center(
                              child: Text(
                            'M',
                            style: TextStyle(
                                color: Color(0xffC67C4E),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(14)),
                          child: const Center(
                              child: Text(
                            'L',
                            style: TextStyle(
                                color: Color(0xff2F2D2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                      color: Color(0xff9B9B9B), fontSize: 16),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '\$ 4.53',
                                  style: TextStyle(
                                      color: Color(0xffC67C4E),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OrderPage(),
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 20),
                                  backgroundColor: Color(0xffC67C4E),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
