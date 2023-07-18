import 'package:flutter/material.dart';

class InstructionsWidget extends StatelessWidget {
  final String category;
  final IconData icon;
  const InstructionsWidget({
    super.key,
    required this.category,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            category,
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
        )
      ],
    );
  }
}
