import 'package:flutter/material.dart';
import 'package:flutter_exam/delivery_page.dart';
import 'package:flutter_exam/detail_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
              builder: (context) => const DetailPage(),
            ));
          },
          padding: const EdgeInsets.only(left: 30),
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: const Text(
          'Order',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 160,
                          height: 45,
                          decoration: BoxDecoration(
                              color: const Color(0xffC67C4E),
                              borderRadius: BorderRadius.circular(14)),
                          child: const Center(
                              child: Text(
                            'Deliver',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                        const SizedBox(
                          width: 160,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Pick Up',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Delivery Address',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Jl. Kpg Sutoyo',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                    style: TextStyle(color: Color(0xff808080), fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffDEDEDE),
                            ),
                            borderRadius: BorderRadius.circular(18)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              size: 18,
                              color: Color(0xff303336),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Edit Address',
                              style: TextStyle(color: Color(0xff303336)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffDEDEDE),
                            ),
                            borderRadius: BorderRadius.circular(18)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.event_note,
                                size: 18, color: Color(0xff303336)),
                            SizedBox(width: 5),
                            Text(
                              'Add Note',
                              style: TextStyle(color: Color(0xff303336)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    thickness: 1,
                    color: Color(0xffeaeaea),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/order.png'),
                      Transform.translate(
                        offset: const Offset(-30, 0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cappucino',
                              style: TextStyle(
                                  color: Color(0xff2F2D2C),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'with Chocolate',
                              style: TextStyle(color: Color(0xff9B9B9B)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffeaeaea)),
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Color(0xffeaeaea),
                                ),
                              ),
                              const Text(
                                '1',
                                style: TextStyle(
                                    color: Color(0xff2F2D2C),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffeaeaea)),
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Color(0xff2F2D2C),
                                ),
                              )
                            ]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 3,
              color: Color(0xffF4F4F4),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffEAEAEA)),
                        borderRadius: BorderRadius.circular(14)),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/discount.png'),
                          Transform.translate(
                              offset: const Offset(-40, 0),
                              child: const Text(
                                '1 Discount is applied',
                                style: TextStyle(
                                    color: Color(0xff2F2D2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )),
                          const Icon(
                            Icons.keyboard_arrow_right_outlined,
                            size: 30,
                            color: Color(0xff2F2D2C),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Payment Summary',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style:
                            TextStyle(color: Color(0xff2F2D2C), fontSize: 16),
                      ),
                      Text(
                        '\$ 4.53',
                        style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery Fee',
                        style:
                            TextStyle(color: Color(0xff2F2D2C), fontSize: 16),
                      ),
                      Transform.translate(
                        offset: const Offset(80, 0),
                        child: const Text(
                          '\$ 2.0',
                          style: TextStyle(
                              color: Color(0xff2F2D2C),
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      const Text(
                        '\$ 1.0',
                        style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Color(0xffEAEAEA),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Payment',
                          style: TextStyle(
                              color: Color(0xff2F2D2C), fontSize: 16)),
                      Text(
                        '\$ 5.53',
                        style: TextStyle(
                            color: Color(0xff2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/moneys.png'),
                      const SizedBox(width: 10),
                      Transform.translate(
                        offset: const Offset(-100, 0),
                        child: Container(
                          width: 130,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xffF6F6F6),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: const Color(0xffC67C4E),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                    child: Text(
                                  'Cash',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                '\$ 5.53',
                                style: TextStyle(color: Color(0xff2F2D2C)),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff808080),
                            borderRadius: BorderRadius.circular(50)),
                        child:
                            const Icon(Icons.more_horiz, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DeliveryPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffC67C4E),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 147, vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Order',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
