import 'package:flutter/material.dart';

import '../../Config/Colors.dart';
import 'SuccessfulBottomSheet.dart';

class ConfirmOrderWithOtp extends StatefulWidget {
  const ConfirmOrderWithOtp({super.key});

  @override
  State<ConfirmOrderWithOtp> createState() => _ConfirmOrderWithOtpState();
}

class _ConfirmOrderWithOtpState extends State<ConfirmOrderWithOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const Text(
          "New Order",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/otp.png"),
              const Text(
                "ask Otp?",
                style: TextStyle(fontSize: 22),
              ),
              const Text(
                "& Confirm OTP",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      decoration: InputDecoration(
                        hintText: 'Enter OTP',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                            Icons.security, color: valvatColor),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const SuccessFulBottomSheet();
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: valvatColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15),
                    ),
                    child: const Text(
                      "Confirm",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
