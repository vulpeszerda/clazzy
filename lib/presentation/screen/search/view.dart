import 'package:clazzy/presentation/screen/search/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen<SearchCubit>(
      appBar: AppBar(title: Text('Search')),
      body: Text('Search'),
      cubitBuilder: (_) => SearchCubit(),
    );
  }
}
