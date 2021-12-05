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

  num numberOne = 0.0, numberTwo = 0.0;
  num result = 0.0;

  String mathFunction(String text) {
    if (textControllerTwo != '0') {
      num numberOne = num.tryParse(textControllerOne.text) ?? 0;
      num numberTwo = num.tryParse(textControllerTwo.text) ?? 0;

      switch (text) {
        case 'collection':
          return (numberOne + numberTwo).toString();
        case 'interest':
          return (numberOne - numberTwo).toString();
        case 'multiply':
          return (numberOne * numberTwo).toString();
        case 'divided':
          return (numberOne / numberTwo).toString();
        default:
          return "ERR";
      }
    } else {
      return 'Number cannot be divided by 0';
    }
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
                  'Result: ${result.toString()}',
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
                  onPressed: () {
                    mathFunction('plus');
                    setState(() {
                      debugPrint('$result');
                    });
                  },
                  child: const Text('Topla'),
                ),
                const CustomSizedBoxWidth(),
                ElevatedButton(
                  onPressed: () {
                    mathFunction('interest');
                    setState(() {
                      debugPrint('$result');
                    });
                  },
                  child: const Text('Çıkar'),
                )
              ]),
              const CustomSizedBoxHeight(),
              Row(children: [
                ElevatedButton(
                  onPressed: () {
                    mathFunction('multiply');
                    setState(() {
                      debugPrint('$result');
                    });
                  },
                  child: const Text('Çarp'),
                ),
                const CustomSizedBoxWidth(),
                ElevatedButton(
                  onPressed: () {
                    mathFunction('plenty');
                    setState(() {
                      debugPrint('$result');
                    });
                  },
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
