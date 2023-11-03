import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final group = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Size Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World",
              style: TextStyle(fontSize: 40),
              minFontSize:20,
              stepGranularity:10,
              maxLines: 4,
            ),
            AutoSizeText('Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam Selam',
              presetFontSizes: [40,20,10],
              maxLines: 2,),
            AutoSizeText('Merhaba Merhaba',
              maxLines: 1,
              minFontSize: 40,
              overflowReplacement: Text('Çok uzun'),
            ),
            AutoSizeText(
              'Group 1',
              group: group,
              maxLines: 1,
              minFontSize: 40,
              //minFontSize: 40,
              //overflowReplacement: Text('Çok uzun'),
            ),
            AutoSizeText(
              'Group 2',
              minFontSize: 40,
              group: group,
              //maxLines: 1,
              //minFontSize: 40,
              //overflowReplacement: Text('Çok uzun'),
            ),
          ],
        ),
      ),
    );
  }
}
