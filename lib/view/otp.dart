import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanclap/view/bottomnavi.dart';
import 'package:urbanclap/view/homescreen.dart';


// OTP Verification Screen
class OtpVerificationScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter OTP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              controller: otpController,
              decoration: InputDecoration(labelText: "Enter OTP"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (otpController.text == "1234") {
                  Get.snackbar("Success", "OTP Verified");
                  Get.to(() => MainScreen());
                } else {
                  Get.snackbar("Error", "Invalid OTP");
                }
              },
              child: Text("Verify OTP"),
            ),
          ],
        ),
      ),
    );
  }
}