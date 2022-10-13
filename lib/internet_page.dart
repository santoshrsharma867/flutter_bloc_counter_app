import 'package:couter_app/blocs/internet_bloc/internet_bloc.dart';
import 'package:couter_app/blocs/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetPage extends StatelessWidget {
  const InternetPage({Key? key}) : super(key: key);
  // TextStyle _style =  TextStyle(fontSize: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<InternetBloc, InternetState>(
        listener: ((context, state) {
          if (state is InternetGainedState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Internet Connected'),
              backgroundColor: Colors.green,
            ));
          } else if (state is InternetLostState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Internet Not Connected'),
              backgroundColor: Colors.red,
            ));
          }
        }),
        builder: (context, state) {
          if (state is InternetGainedState) {
            return Center(
                child: Text('Connected!', style: TextStyle(fontSize: 30)));
          } else if (state is InternetLostState) {
            return Center(
                child: Text('Disconnected!', style: TextStyle(fontSize: 30)));
          } else {
            return Center(
                child: Text('Loading..', style: TextStyle(fontSize: 30)));
          }
        },
      ),
    );
  }
}
