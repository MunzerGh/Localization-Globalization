import 'package:big_project/generated/l10n.dart';
import 'package:big_project/main.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).title)),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                left: isArabic() ? 16 : 0,
                right: isArabic() ? 0 : 16
              ),
              child: Text(
                S.of(context).hello,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              S.of(context).name,
            ),
          ],
        ),
      ),
    );
  }
}
