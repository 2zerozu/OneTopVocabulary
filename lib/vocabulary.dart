class VocabularyWord {
  final String english;
  final String korean;

  VocabularyWord({required this.english, required this.korean});
}

final vocabularyData = {
  'level1Basic': level1Basic,
  'level1Advanced': level1Advanced,
  'level2Basic': level2Basic,
  'level2Advanced': level2Advanced,
  'level3Basic': level3Basic,
  'level3Advanced': level3Advanced,
  'level4Basic': level4Basic,
  'level4Advanced': level4Advanced,
};


final Map<int, List<VocabularyWord>> level1Basic = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  3: [
    VocabularyWord(english: 'book', korean: '책'),
    VocabularyWord(english: 'bird', korean: '새'),
    VocabularyWord(english: 'piano', korean: '피아노')
  ],
  4: [
    VocabularyWord(english: 'computer', korean: '컴퓨터'),
    VocabularyWord(english: 'pencil', korean: '연필'),
    VocabularyWord(english: 'pizza', korean: '피자')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level1Advanced = {
  1: [
    VocabularyWord(english: 'flower', korean: '꽃'),
    VocabularyWord(english: 'cap', korean: '모자'),
    VocabularyWord(english: 'pants', korean: '바지')
  ],
  2: [
    VocabularyWord(english: 'frog', korean: '개구리'),
    VocabularyWord(english: 'infinite', korean: '무한한'),
    VocabularyWord(english: 'coffee', korean: '커피')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level2Basic = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level2Advanced = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level3Basic = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level3Advanced = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level4Basic = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  // 나머지 데이터들...
};

final Map<int, List<VocabularyWord>> level4Advanced = {
  1: [
    VocabularyWord(english: 'apple', korean: '사과'),
    VocabularyWord(english: 'banana', korean: '바나나'),
    VocabularyWord(english: 'cherry', korean: '체리')
  ],
  2: [
    VocabularyWord(english: 'dog', korean: '개'),
    VocabularyWord(english: 'cat', korean: '고양이'),
    VocabularyWord(english: 'mouse', korean: '쥐')
  ],
  // 나머지 데이터들...
};