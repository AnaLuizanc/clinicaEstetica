import 'package:flutter/material.dart';
import '../widgets/treatment_button.dart';

class TreatmentsPage extends StatelessWidget {
  const TreatmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color orangeColor = Color(0xfff35f14);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tratamentos'),
        backgroundColor: orangeColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              TreatmentButton(title: 'Unhas'),
              SizedBox(height: 16),
              TreatmentButton(title: 'Cabelos'),
              SizedBox(height: 16),
              TreatmentButton(title: 'Rosto'),
              SizedBox(height: 16),
              TreatmentButton(title: 'Corpo'),
              SizedBox(height: 16),
              TreatmentButton(title: 'Depilação'),
            ],
          ),
        ),
      ),
    );
  }
}
