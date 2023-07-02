import 'package:flutter/material.dart';

import '../widgets/components/body.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWelcome(),
    );
  }
}
