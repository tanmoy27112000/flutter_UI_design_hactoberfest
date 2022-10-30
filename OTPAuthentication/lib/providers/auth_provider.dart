import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  String verId = '';
  String message = '';
  int? _resendToken;

  Future<void> verifyPhone(String phoneNumber, BuildContext _context) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (credential) {},
        verificationFailed: (error) {
          message = 'Error in Verification';
        },
        codeSent: (verificationId, token) {
          verId = verificationId;
          _resendToken = token;
        },
        codeAutoRetrievalTimeout: (verificationId) {},
        forceResendingToken: _resendToken,
      );
      message = 'Successful';
    } catch (e) {
      message = 'Error';
    }
  }

  Future<String> verifyOtp(String otpCode, BuildContext context) async {
    try {
      await auth.signInWithCredential(PhoneAuthProvider.credential(
          verificationId: verId, smsCode: otpCode));
      if (auth.currentUser != null) {
        message = 'Successful';
        Navigator.pushNamed(context, 'HomeScreen');
      }
    } catch (e) {
      message = 'Invalid OTP';
    }
    return message;
  }
}
