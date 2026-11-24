import 'package:flutter/material.dart';

class FlagCard extends StatelessWidget {
  final String imagePath;
  final String countryName;
  final bool showCountry;

  const FlagCard({
    super.key,
    required this.imagePath,
    required this.countryName,
    required this.showCountry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 280,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            showCountry ? countryName : 'Какая это страна?',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
