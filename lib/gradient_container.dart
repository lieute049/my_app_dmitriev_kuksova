import 'dart:math';

import 'package:flutter/material.dart';

import 'flag_card.dart';
import 'next_button.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() =>
      _GradientContainerState();
}

class _GradientContainerState
    extends State<GradientContainer> {
  final Random _random = Random();
  int _currentIndex = 0;
  bool _isCountryVisible = false;

  final List<Map<String, String>> _flags = [
    {
      'image': 'assets/images/images44.png',
      'country': 'Россия',
    },
    {
      'image': 'assets/images/image22.png',
      'country': 'Ирландия',
    },
    {
      'image': 'assets/images/image33.png',
      'country': 'Аргентина',
    },
  ];

  void _nextFlag() {
    setState(() {
      int nextIndex = _random.nextInt(_flags.length);
      if (_flags.length > 1) {
        while (nextIndex == _currentIndex) {
          nextIndex = _random.nextInt(_flags.length);
        }
      }
      _currentIndex = nextIndex;
      _isCountryVisible = false;
    });
  }

  void _toggleAnswer() {
    setState(() {
      _isCountryVisible = !_isCountryVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentFlag = _flags[_currentIndex];

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1E3C72),
            Color(0xFF2A5298),
            Color(0xFF4CA1AF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              FlagCard(
                imagePath: currentFlag['image']!,
                countryName: currentFlag['country']!,
                showCountry: _isCountryVisible,
              ),
              const SizedBox(height: 32),
              NextButton(
                label: 'Следующий',
                onPressed: _nextFlag,
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: _toggleAnswer,
                child: Text(
                  _isCountryVisible
                      ? 'Скрыть ответ'
                      : 'Показать ответ',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
