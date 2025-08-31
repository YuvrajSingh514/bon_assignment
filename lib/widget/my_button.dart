import 'package:bon_assignment/screens/credit_card_screen.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 50,
      width: 260,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreditCardScreen()),
          );
        },
        child: const Text('Choose Brand'),
      ),
    );
  }
}
