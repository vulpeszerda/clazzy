import 'package:clazzy/data/account.dart';
import 'package:clazzy/data/timeline.dart';
import 'package:clazzy/domain/repository/account.dart';
import 'package:clazzy/domain/repository/timeline.dart';
import 'package:clazzy/presentation/screen/main/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClazzyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AccountRepository>(create: (_) => DataAccountRepository()),
        Provider<AccountCache>(create: (_) => DataAccountCache()),
        Provider<TimelineRepository>(create: (_) => DataTimelineRepository())
      ],
      child: MaterialApp(
        title: 'Clazzy',
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
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainScreen(),
      ),
    );
  }
}
