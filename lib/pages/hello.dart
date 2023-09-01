import 'dart:async';
import 'package:flutter/material.dart';
import 'package:themedemo66/pages/home.dart';
import 'package:themedemo66/pages/register.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 30,
            ),
            Text('SCIT PSU Surat',
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 10,
            ),
            Text('Prince of Songkla University',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(
              height: 3,
            ),
            Text('Surat Thani Campus',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(
              height: 20,
            ),
            Text(' "SCIT, We drive your future" ',
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
