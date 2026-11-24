import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack: banner image with label on top
            Stack(
              children: [
                Image.asset(
                  'assets/images/hero.png',
                  width: double.infinity,
                  height: 160,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  left: 16,
                  bottom: 12,
                  child: Text(
                    'Good morning, Meljohn!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's Classes",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 12),
                  const ClassCard(subject: 'Mobile Development', time: '10:00 AM'),
                  const ClassCard(subject: 'Fundamentals of Data Mining', time: '01:00 PM'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassCard extends StatelessWidget {
  final String subject;
  final String time;

  const ClassCard({super.key, required this.subject, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.book, color: Theme.of(context).primaryColor),
          const SizedBox(width: 12),
          Expanded(child: Text(subject)),
          Text(time),
        ],
      ),
    );
  }
}