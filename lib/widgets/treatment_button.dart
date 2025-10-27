import 'package:flutter/material.dart';

class TreatmentButton extends StatelessWidget {
  final String title;

  const TreatmentButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = Color(0xfff35f14);

    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TreatmentDetailPage(title: title),
          ),
        );
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: orangeColor, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: orangeColor,
          fontSize: 18,
        ),
      ),
    );
  }
}

class TreatmentDetailPage extends StatelessWidget {
  final String title;

  const TreatmentDetailPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xfff35f14),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/semitem.JPG',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
