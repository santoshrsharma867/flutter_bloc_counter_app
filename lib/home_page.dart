import 'package:couter_app/blocs/counter_bloc/counter_bloc.dart';
import 'package:couter_app/blocs/counter_bloc/counter_event.dart';
import 'package:couter_app/blocs/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter app using bloc')),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
              child: Text(
            state.counter.toString(),
            style: TextStyle(fontSize: 40),
          ));
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(IncrementCounterEvent());
              }),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(DecrementCounterEvent());
              }),
        ],
      ),
    );
  }
}
