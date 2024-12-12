import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessFulBottomSheet extends StatefulWidget {
  const SuccessFulBottomSheet({super.key});

  @override
  State<SuccessFulBottomSheet> createState() => _SuccessFulBottomSheetState();
}

class _SuccessFulBottomSheetState extends State<SuccessFulBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/Animations/Success.json",
                  // height: 250, width: 250
              ),
              const Text(
                "Successful",
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )
      ),
    );
  }
}
