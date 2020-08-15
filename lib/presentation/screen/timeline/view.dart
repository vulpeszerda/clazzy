import 'package:clazzy/presentation/screen/timeline/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screen.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen<TimelineCubit>(
      appBar: AppBar(title: Text('Timeline')),
      body: Text('Timeline'),
      cubitBuilder: (_) => TimelineCubit(),
    );
  }
}
