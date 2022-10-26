import 'package:flutter/material.dart';

class Feature {
  int id;
  String title;
  Image image;

  Feature({required this.id, required this.title, required this.image});
}

List<Feature> feature = [
  Feature(
    id: 1,
    title: 'Pay',
    image: Image.asset(
      'assets/arrow-upward.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 2,
    title: 'Receive',
    image: Image.asset(
      'assets/down-arrow.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 3,
    title: 'Bills',
    image: Image.asset(
      'assets/bill.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 4,
    title: 'Transaction',
    image: Image.asset(
      'assets/transaction.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 5,
    title: 'Loans',
    image: Image.asset(
      'assets/loan.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 6,
    title: 'Credit Card',
    image: Image.asset(
      'assets/credit-cards.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 7,
    title: 'Mutual Fund',
    image: Image.asset(
      'assets/money.png',
      height: 30,
      color: Colors.white,
    ),
  ),
  Feature(
    id: 8,
    title: 'Fixed Deposits',
    image: Image.asset(
      'assets/fixed-deposit.png',
      height: 30,
      color: Colors.white,
    ),
  ),
];
