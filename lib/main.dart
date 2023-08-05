import 'package:flutter/material.dart';
// Импорт бул бардык флаттердин тиешелүү нерселерди камтыйт
//  void  эч нерсе кайтарбайт
// Майн  негизги функция

// () Функция экенин билдирет
// {} Функциянын денеси
void main() {
  runApp(const MyApp());
}
// runApp  сиздин тиркеменизди баштоо функциясы  ал ичине виджед алат

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // класстын конструктору StatelessWidget ушундан  super.key алат
// class MyApp класс же виджед аталышы
// extends  мурас алат => StatelessWidget
  // This widget is the root of your application.
  //Бул виджет колдонмоңуздун түпкү негизи болуп саналат.
  @override
  Widget build(BuildContext context) {
    // build  куруу ал өзүнө виджед алат
    // BuildContext бул адрес виджеттерди көзөмөлдөөчу вектор
    return MaterialApp(
      // MaterialApp материалдык дизайны бар жаңы флаттер колдонмосун түзөт
      debugShowCheckedModeBanner: false,
      //debug приложение бурчунда белги
      title: 'Flutter Demo',
      theme: ThemeData(
        // theme  бул тема MaterialAppка тиешелүү свойство
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      // home:MaterialAppка тиешелүү свойство
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // MyHomePage  класс же виджед аталышы

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 1",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                child: Center(
                    child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                )),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // бул Rowту экрандын ортосуна алып келет
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index--;
                        });
                      },
                      child: const Icon(Icons.remove)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index++;
                        });
                      },
                      child: const Icon(Icons.add))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
