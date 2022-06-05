import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sunum/locator.dart';
import 'package:sunum/view_model/view_model.dart';

class CounterView extends StatelessWidget {
  final ViewModel viewModel = locator<ViewModel>();
  CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            Observer(builder: (_) {
              return Text(
                '${viewModel.number}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Observer(builder: (_) {
              return Text('${viewModel.isEven}',
                  style: Theme.of(context).textTheme.headline5);
            }),
            ElevatedButton(
              onPressed: () {
                viewModel.Increment();
              },
              child: Text('Increment'),
            )
          ],
        ),
      ),
    );
  }
}
