import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen<T extends Cubit<Object>> extends StatelessWidget {
  final AppBar appBar;
  final Widget body;
  final void Function(BuildContext context) onResumed;
  final T Function(BuildContext context) cubitBuilder;

  Screen({
    Key key,
    @required this.body,
    this.appBar,
    this.onResumed,
    this.cubitBuilder,
  }) : assert(body != null);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<T>(
      create: cubitBuilder,
      child: _LifecycleObserver(
        onResumed: onResumed,
        child: Scaffold(appBar: appBar, body: body),
      ),
    );
  }
}

class _LifecycleObserver extends StatefulWidget {
  final Widget child;
  final void Function(BuildContext context) onResumed;

  _LifecycleObserver({Key key, this.child, this.onResumed});

  @override
  _LifecycleObserverState createState() => _LifecycleObserverState(child: child, onResumed: onResumed);
}

class _LifecycleObserverState extends State<_LifecycleObserver> with WidgetsBindingObserver {
  final Widget child;
  final void Function(BuildContext context) onResumed;

  _LifecycleObserverState({Key key, this.child, this.onResumed});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (onResumed != null) {
      onResumed(context);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (onResumed != null) {
        onResumed(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
