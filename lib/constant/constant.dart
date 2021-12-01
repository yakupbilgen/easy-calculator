import 'package:flutter/material.dart';

class CustomSizedBoxHeight extends StatelessWidget {
  const CustomSizedBoxHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 20);
  }
}

class CustomSizedBoxWidth extends StatelessWidget {
  const CustomSizedBoxWidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 20);
  }
}
