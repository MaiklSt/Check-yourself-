class QuestionAnswer {
  final String question;
  final List<Map> answer;

  QuestionAnswer({this.question, this.answer});
}

class QuestionData {
  final _data = [
    QuestionAnswer(
        question: 'Кому было ниспослано Евангелие (Инджиль)?',
        answer: [
          {'answer': 'пророку Исе', 'correct': '1'},
          {'answer': 'пророку Мусе'},
          {'answer': 'пророку Ибрахиму'},
          {'answer': 'пророку Мухаммаду'},
        ]),
    QuestionAnswer(
        question: 'В какое время года родился пророк Мухаммад?',
        answer: [
          {'answer': 'Зима'},
          {'answer': 'Весна', 'correct': '1'},
          {'answer': 'Лето'},
          {'answer': 'Осень'},
        ]),
    QuestionAnswer(
        question: 'Какая сура должна быть обязательно прочтена в намазе?',
        answer: [
          {'answer': 'Ан-Нас (люди)'},
          {'answer': 'Аль-Ихляс (очищение)'},
          {'answer': 'Аль-Фаляк (рассвет)'},
          {'answer': 'Аль-Фатиха (открывающая книгу)', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Из скольких ракятов состоит праздничный намаз?',
        answer: [
          {'answer': '8'},
          {'answer': '6'},
          {'answer': '4'},
          {'answer': '2', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Как называется ночь, в которой началось ниспослание Корана?',
        answer: [
          {'answer': 'Ночь волеизъявления'},
          {'answer': 'Ночь предопределения', 'correct': '1'},
          {'answer': 'Ночь послушания'},
          {'answer': 'Ночь предрешения'},
        ]),
    QuestionAnswer(
        question: 'Как назывался год, в котором родился пророк Мухаммад?',
        answer: [
          {'answer': 'Годом верблюда'},
          {'answer': 'Годом слона', 'correct': '1'},
          {'answer': 'Годом коровы'},
          {'answer': 'Годом барана'},
        ]),
    QuestionAnswer(
        question: 'Как называется вторая сура в Коране?',
        answer: [
          {'answer': 'Корова', 'correct': '1'},
          {'answer': 'Люди'},
          {'answer': 'Женщины'},
          {'answer': 'Рассвет'},
        ]),
    QuestionAnswer(
        question: 'Как называется предложение в Коране?',
        answer: [
          {'answer': 'Сура'},
          {'answer': 'Аят', 'correct': '1'},
          {'answer': 'Строка'},
          {'answer': 'Строфа'},
        ]),
    QuestionAnswer(
        question: 'Как переводится выражение «СубханАллах»?',
        answer: [
          {'answer': 'Милосерден Аллах'},
          {'answer': 'Велик Аллах'},
          {'answer': 'Справедлив Аллах'},
          {'answer': 'Свят Аллах', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Имена скольких пророков упомянуто в Коране?',
        answer: [
          {'answer': '24'},
          {'answer': '25', 'correct': '1'},
          {'answer': '26'},
          {'answer': '27'},
        ]),
    QuestionAnswer(
        question: 'Когда проводится ифтар (разговение) в период поста?',
        answer: [
          {'answer': 'После полуденного намаза'},
          {'answer': 'При нахождении солнца в зените'},
          {'answer': 'После захода солнца', 'correct': '1'},
          {'answer': 'При наступлении времени ночной молитвы'},
        ]),
    QuestionAnswer(
        question: 'Что означает выражение «Аллаху Акбар»?',
        answer: [
          {'answer': 'Аллах Всемогущ'},
          {'answer': 'Аллах Высок'},
          {'answer': 'Аллах Вездесущ'},
          {'answer': 'Аллах Велик', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Что означает выражение «Ал-хамду лиЛляхи»?',
        answer: [
          {'answer': 'Благодарность Аллаху'},
          {'answer': 'Обращение к Аллаху'},
          {'answer': 'Хвала Аллаху', 'correct': '1'},
          {'answer': 'Поклонение Аллаху'},
        ]),
    QuestionAnswer(
        question: 'Что нужно сделать в первую очередь для принятия Ислама?',
        answer: [
          {'answer': 'Выполнить намаз'},
          {'answer': 'Выплатить закят'},
          {'answer': 'Продержать пост'},
          {'answer': 'Произнести шахаду', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Какова была участь фараона во время погони за Мусой?',
        answer: [
          {'answer': 'Был убит стрелой'},
          {'answer': 'Утонул', 'correct': '1'},
          {'answer': 'Отравился'},
          {'answer': 'Был заколдован'},
        ]),
    QuestionAnswer(
        question: 'Сколько сур в Коране?',
        answer: [
          {'answer': '112'},
          {'answer': '113'},
          {'answer': '114', 'correct': '1'},
          {'answer': '115'},
        ]),
    QuestionAnswer(
        question: 'Как называется глава в Коране?',
        answer: [
          {'answer': 'Часть'},
          {'answer': 'Заголовок'},
          {'answer': 'Аят'},
          {'answer': 'Сура', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Кто из этих ангелов является посредником между Аллахом и пророками?',
        answer: [
          {'answer': 'Джебраил', 'correct': '1'},
          {'answer': 'Микаил'},
          {'answer': 'Азраил'},
          {'answer': 'Исрафил'},
        ]),
    QuestionAnswer(
        question: 'Как звали первую жену пророка Мухаммада?',
        answer: [
          {'answer': 'Айша'},
          {'answer': 'Фатима'},
          {'answer': 'Зайнаб'},
          {'answer': 'Хадиджа', 'correct': '1'},
        ]),
    QuestionAnswer(
        question: 'Как среди мусульман называется изречение пророка Мухаммада?',
        answer: [
          {'answer': 'Аят'},
          {'answer': 'Сура'},
          {'answer': 'Хадис', 'correct': '1'},
          {'answer': 'Джуз'},
        ]),
    QuestionAnswer(
        question: 'Сколько аятов содержит самая маленькая сура Корана?',
        answer: [
          {'answer': '2'},
          {'answer': '3', 'correct': '1'},
          {'answer': '4'},
          {'answer': '5'},
        ]),
    QuestionAnswer(
        question: 'Во сколько лет Мухаммад стал пророком?',
        answer: [
          {'answer': '25'},
          {'answer': '30'},
          {'answer': '35'},
          {'answer': '40', 'correct': '1'},
        ]),
  ];
  List<QuestionAnswer> get question => [..._data];
}
