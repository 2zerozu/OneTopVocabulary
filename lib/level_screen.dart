import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'strings.dart';
import 'vocabulary.dart';
import 'vocabulary_screen.dart';

class LevelScreen extends StatefulWidget {
  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  String selectedLevel = 'level1';
  String selectedCategory = 'Basic';
  int selectedDay = 1;

  // 단어장 레벨 List
  final List<String> levels = [
    Strings.level1Basic,
    Strings.level1Advanced,
    Strings.level2Basic,
    Strings.level2Advanced,
    Strings.level3Basic,
    Strings.level3Advanced,
    Strings.level4Basic,
    Strings.level4Advanced,
    // 이하 동일하게 작성
  ];

  int day = 1;

  void _showDayPicker(BuildContext context, int index) {
    setState(() {
      selectedDay = 1; // 피커를 표시하기 전에 selectedDay 변수를 초기화합니다.
      selectedLevel = 'level${(index / 2).floor() + 1}'; // 인덱스를 기반으로 레벨을 설정합니다.
      selectedCategory = index % 2 == 0 ? 'Basic' : 'Advanced'; // 인덱스를 기반으로 카테고리를 설정합니다.
    });

    // showModalBottomSheet 호출 전에 selectedVocabulary를 설정합니다.
    final selectedVocabulary = vocabularyData['${selectedLevel}${selectedCategory}'];

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          child: Column(
            children: [
              ListTile(
                trailing: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Expanded(
                child: CupertinoPicker(
                  itemExtent: 50.0, // 피커의 아이템 높이를 늘립니다.
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      selectedDay = index + 1; // selectedDay를 업데이트합니다.
                    });
                  },
                  children: List<Widget>.generate(20, (int index) {
                    return Center(child: Text('Day${index + 1}', style: TextStyle(fontSize: 21)));
                  }),
                ),
              ),
              Container(
                width: double.infinity, // '확인' 버튼의 너비를 최대로 합니다.
                height: 40.0,
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: Text('확인'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (selectedVocabulary != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VocabularyScreen(day: selectedDay, vocabulary: selectedVocabulary[selectedDay]!)),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('단어장 선택'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16, left: 16, right: 16),
        // add top, left, and right margins
        child: GridView.count(
          crossAxisCount: 2,
          // number of columns
          crossAxisSpacing: 10,
          // add space between columns
          mainAxisSpacing: 10,
          // add space between rows
          childAspectRatio: 3 / 2,
          // ratio of width to height
          children: levels.asMap().entries.map((entry) {
            return Container(
              child: ElevatedButton(
                child: Text(
                  entry.value,
                  style: TextStyle(
                    color: Colors.indigo[900], // set text color to dark navy
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  // set background color to white
                  onPrimary: Colors.indigo[900],
                  // set splash color to dark navy
                  side: BorderSide(
                      color: Colors.blue), // set border color to navy
                ),
                onPressed: () => _showDayPicker(context, entry.key),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
