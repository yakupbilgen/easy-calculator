import 'package:calculator/constant/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textControllerOne = TextEditingController();
  TextEditingController textControllerTwo = TextEditingController();

  late num number1, number2, result = 0;

  mathFunction(String mathFuntion) {
    if (textControllerTwo != '0') {
      number1 = num.parse(textControllerOne.text);
      number2 = num.parse(textControllerTwo.text);

      switch (mathFuntion) {
        case 'gather':
          return result = number1 + number2;
        case 'interest':
          return result = number1 - number2;
        case 'multiply':
          return result = number1 * number2;
        case 'plenty':
          return result = number1 + number2;
      }
    } else {
      return 'Number cannot be divided by 0';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Calculator'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Result: $result',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const CustomSizedBoxHeight(),
              TextFormField(
                controller: textControllerOne,
                keyboardType: TextInputType.number,
              ),
              const CustomSizedBoxHeight(),
              TextFormField(
                controller: textControllerTwo,
                keyboardType: TextInputType.number,
              ),
              const CustomSizedBoxHeight(),
              Row(children: [
                ElevatedButton(
                  onPressed: mathFunction('gather'),
                  child: const Text('Topla'),
                ),
                const CustomSizedBoxWidth(),
                ElevatedButton(
                  onPressed: mathFunction('interest'),
                  child: const Text('Çıkar'),
                )
              ]),
              const CustomSizedBoxHeight(),
              Row(children: [
                ElevatedButton(
                  onPressed: mathFunction('multiply'),
                  child: const Text('Çarp'),
                ),
                const CustomSizedBoxWidth(),
                ElevatedButton(
                  onPressed: mathFunction('plenty'),
                  child: const Text('Böl'),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
