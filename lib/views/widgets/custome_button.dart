import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key, required this.onPressed, this.isLoading = false});
  final void Function() onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: MaterialButton(
        onPressed: onPressed,
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minWidth: double.infinity,
        height: 50,
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ))
            : const Text(
                'Add',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
