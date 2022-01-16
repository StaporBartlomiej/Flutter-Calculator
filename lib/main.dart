import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: ResultDisplay(text: 'xd'),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Flexible(
                            child: CalculatorButton(
                          label: 'NUM',
                          onTap: () => {},
                          size: 85,
                        )),
                        Flexible(
                            child: CalculatorButton(
                                label: '7',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '4',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '1',
                                onTap: () => {},
                                size: 85))
                      ],
                    ),
                    Column(
                      children: [
                        Flexible(
                            child: CalculatorButton(
                                label: '/',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '8',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '5',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '2',
                                onTap: () => {},
                                size: 85))
                      ],
                    ),
                    Column(
                      children: [
                        Flexible(
                            child: CalculatorButton(
                                label: '*',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '9',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '6',
                                onTap: () => {},
                                size: 85)),
                        Flexible(
                            child: CalculatorButton(
                                label: '3',
                                onTap: () => {},
                                size: 85))
                      ],
                    ),
                    Column(
                      children: [
                        Flexible(
                            child: CalculatorButton(
                                label: '-',
                                onTap: () => {},
                                size: 85)),
                        Expanded(
                            child: CalculatorButton(
                                label: '+',
                                onTap: () => {},
                                size: 85)),
                        Expanded(
                          child: CalculatorButton(
                              label: 'ENTER',
                              onTap: () => {},
                              size: 85),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // children: Row(
          ),
        ));
  }
}

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double size;
  final Color backgroundColor = Colors.white;
  final Color labelColor = Colors.black;

  const CalculatorButton(
      {Key? key, required this.label, required this.onTap, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Ink(
        width: size,
        height: size,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, offset: Offset(1, 1), blurRadius: 2),
            ],
            borderRadius: BorderRadius.all(Radius.circular(size / 2)),
            color: backgroundColor),
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(size / 2)),
          ),
          onTap: onTap,
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: 22, color: labelColor),
            ),
          ),
        ),
      ),
    );
  }
}

class ResultDisplay extends StatelessWidget {
  final String text;

  const ResultDisplay({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.black,
      child: Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.only(right: 24, bottom: 24),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 34),
        ),
      ),
    );
  }
}
