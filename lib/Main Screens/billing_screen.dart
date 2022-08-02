// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test2/Main%20Screens/home_page.dart';
import 'package:test2/Main%20Screens/making_payment_screen.dart';
import 'package:test2/Widgets/card_one.dart';

class BillingScreen extends StatefulWidget {
  @override
  _BillingScreen createState() => _BillingScreen();
}

class _BillingScreen extends State<BillingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      // App Bar
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.arrow_back_ios),
          Text(
            "My Payments",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      SizedBox(
        height: 60,
      ),

      // Current & Insurance Payments
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 190,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Current Balance",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$122",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightBlue,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 190,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Insurance Payments",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$42.76",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 123, 235, 197),
                  ),
                )
              ],
            ),
          )
        ],
      ),

      SizedBox(
        height: 20,
      ),

      // Out of Pocket & Amount Due Now
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 190,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Out of Pocket",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$34.22",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 243, 88, 77),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 190,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 83, 83),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Amount Due Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$27.22",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromARGB(255, 244, 19, 3),
                  ),
                )
              ],
            ),
          )
        ],
      ),

      SizedBox(height: 50),

      // Transaction and Search
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Transactions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 35,
            width: 215,
            child: TextField(
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 7, bottom: 10),
                  hintText: 'Search                                   🔎',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.black38)),
            ),
          ),
        ],
      ),

      SizedBox(height: 50),

      // Transactions
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "Transaction ID",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        Text(
          "Date",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        Text(
          "Amount",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        Text(
          "Status",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ]),

      SizedBox(
        height: 5,
      ),

      // Transaction 1
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "#657782189",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
            fontSize: 15,
          ),
        ),
        Text(
          "7 Jan 2021",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "\$60",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Container(
          width: 50,
          padding: EdgeInsets.only(left: 6, right: 6),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 64, 64),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                "Error",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ]),

      SizedBox(
        height: 15,
      ),

      // Transaction 2
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "#129673891",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
            fontSize: 15,
          ),
        ),
        Text(
          "28 Dec 2020",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "\$23",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Container(
          width: 50,
          padding: EdgeInsets.only(left: 1, right: 1),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 205, 57),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                "Pending",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ]),

      SizedBox(
        height: 15,
      ),

      // Transaction 3
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "#442232331",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
            fontSize: 15,
          ),
        ),
        Text(
          "14 Dec 2020",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "\$18",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Container(
          width: 50,
          padding: EdgeInsets.only(left: 1, right: 1),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 90, 148, 255),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                "Pay Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ]),

      SizedBox(
        height: 15,
      ),

      // Transaction 4
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "#988145231",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
            fontSize: 15,
          ),
        ),
        Text(
          "6 Dec 2020",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "\$60",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Container(
          width: 50,
          padding: EdgeInsets.only(left: 2, right: 2),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 125, 247, 108),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                "Success",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ]),

      SizedBox(
        height: 80,
      ),

      Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentScreen()),
            );
          },
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blue,
          child: Text(
            'Make a Payment',
            style: TextStyle(
                color: Color.fromARGB(255, 252, 252, 252),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      )
    ])));
  }
}
