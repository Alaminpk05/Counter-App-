import 'package:counterbloc/Feature/Counter/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterBloc counterBloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.title),
      ),
      body: BlocConsumer<CounterBloc,CounterState>(
        bloc: counterBloc,
        listener: (context,state){

        },
        builder: (context,state){
          return Ui(BuildContext, state.counter);
        },
      )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Widget Ui(BuildContext,int value){

    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button ${value}  times:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20,),
            Text(
              value.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(IncreamentCounterEvent());
                  },
                  child: Icon(Icons.add),

                ),
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(DecreamentCounterEvent());
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
 }

 /// YOu also can copy this code and directly paste on body then it will be ok.that time you don't need Ui widget.You could delete it.
// BlocConsumer<CounterBloc, CounterState>(
// bloc: counterBloc,
// listener: (context, state) {
// // TODO: implement listener
// },
// builder: (context, state) {
// return Center(
// // Center is a layout widget. It takes a single child and positions it
// // in the middle of the parent.
// child: Padding(
// padding: const EdgeInsets.all(15.0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text(
// 'You have pushed the button ${state.counter}  times:',
// style: TextStyle(fontSize: 16),
// ),
// SizedBox(height: 20,),
// Text(
// state.counter.toString(),
// style: Theme.of(context).textTheme.headlineMedium,
// ),
// SizedBox(height: 100,),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// ElevatedButton(
// onPressed: () {
// counterBloc.add(IncreamentCounterEvent());
// },
// child: Icon(Icons.add),
//
// ),
// ElevatedButton(
// onPressed: () {
// counterBloc.add(DecreamentCounterEvent());
// },
// child: Icon(Icons.remove),
// ),
// ],
// )
// ],
// ),
// ),
// );
// }
// //   switch (state.runtimeType) {
// //     case CounterInitial:
// //       final initState=state as CounterInitial;
// //       return Ui(BuildContext, initState.counter);
// //
// //     case UpdateCounterActionState:
// //       final upstate = state as UpdateCounterActionState;
// //       return Ui(BuildContext, upstate.counter);
// //     default:
// //   }
// //   return Container();
// // },
// ),