import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    vocabulary[index].english,
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 20.0), // 단어와 뜻 사이에 간격을 줍니다.
                  Text(
                    vocabulary[index].korean,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            );
          },
          itemCount: vocabulary.length,
          pagination: SwiperPagination(),
          control: SwiperControl(),
        ),
      ),
    );
  }
}
