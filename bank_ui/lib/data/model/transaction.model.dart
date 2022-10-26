import 'package:flutter/material.dart';

class Transaction {
  int id;
  String title;
  String date;
  String amount;
  bool status;
  Image image;

  Transaction({
    required this.id,
    required this.title,
    required this.date,
    required this.amount,
    required this.status,
    required this.image,
  });
}

List<Transaction> transaction = [
  Transaction(
    id: 1,
    title: 'Cash Withdrawl',
    date: '10:30:23 Aug',
    amount: '304',
    status: false,
    image: Image.asset(
      'assets/cash.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Transaction(
    id: 2,
    title: 'Payment',
    date: '10:30:23 Aug',
    amount: '500',
    status: true,
    image: Image.asset(
      'assets/payment.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Transaction(
    id: 3,
    title: 'Grocery Store',
    date: '10:30:23 Aug',
    amount: '56',
    status: false,
    image: Image.asset(
      'assets/shop.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Transaction(
    id: 4,
    title: 'Monthly Subscribe',
    date: '10:30:23 Aug',
    amount: '23',
    status: false,
    image: Image.asset(
      'assets/monthly.png',
      height: 30,
      color: Colors.white,
    ),
  ),
];
