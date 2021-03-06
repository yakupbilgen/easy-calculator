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

  late num numberOne, numberTwo;
  var result;

  //codes are not working correctly
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

  numPlus() {
    num numberOne = num.tryParse(textControllerOne.text) ?? 0;
    num numberTwo = num.tryParse(textControllerTwo.text) ?? 0;
    result = numberOne + numberTwo;
    setState(() {});
  }

  numInterest() {
    num numberOne = num.tryParse(textControllerOne.text) ?? 0;
    num numberTwo = num.tryParse(textControllerTwo.text) ?? 0;
    result = numberOne - numberTwo;
    setState(() {});
  }

  numMultiply() {
    num numberOne = num.tryParse(textControllerOne.text) ?? 0;
    num numberTwo = num.tryParse(textControllerTwo.text) ?? 0;
    result = numberOne * numberTwo;
    setState(() {});
  }

  numDivided() {
    num numberOne = num.tryParse(textControllerOne.text) ?? 0;
    num numberTwo = num.tryParse(textControllerTwo.text) ?? 0;
    if (numberTwo != 0) result = numberOne / numberTwo;
    if (numberTwo == 0) result = 'Number cannot be divided by 0';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Calculator'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Container(
          width: deviceSize.width,
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Row(
                children: [
                  SizedBox(
                    width: (deviceSize.width / 2) - 50,
                    child: ElevatedButton(
                      onPressed: numPlus,
                      child: const Text('Topla'),
                    ),
                  ),
                  const CustomSizedBoxWidth(),
                  SizedBox(
                    width: (deviceSize.width / 2) - 50,
                    child: ElevatedButton(
                      onPressed: numInterest,
                      child: const Text('????kar'),
                    ),
                  )
                ],
              ),
              const CustomSizedBoxHeight(),
              Row(
                children: [
                  SizedBox(
                    width: (deviceSize.width / 2) - 50,
                    child: ElevatedButton(
                      onPressed: numMultiply,
                      child: const Text('??arp'),
                    ),
                  ),
                  const CustomSizedBoxWidth(),
                  SizedBox(
                    width: (deviceSize.width / 2) - 50,
                    child: ElevatedButton(
                      onPressed: numDivided,
                      child: const Text('B??l'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
