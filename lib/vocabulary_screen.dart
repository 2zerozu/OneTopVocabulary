import 'package:flutter/material.dart';
import 'vocabulary.dart';

class VocabularyScreen extends StatelessWidget {
  final int day;
  final List<VocabularyWord> vocabulary;

  VocabularyScreen({required this.day, required this.vocabulary});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day $day Vocabulary'),
      ),
      body: ListView.builder(
        itemCount: vocabulary.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vocabulary[index].english), // 영어 단어를 표시
            subtitle: Text(vocabulary[index].korean), // 한국어 뜻을 표시
          );
        },
      ),
    );
  }
}
