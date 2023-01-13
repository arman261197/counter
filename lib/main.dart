import 'package:flutter/material.dart';

void main() {
  runApp(CounterWidget());
}

class CounterWidget extends StatefulWidget {
  //CounterWidget({super.key});
  @override
  State<CounterWidget> createState() => _CounterWidget();
}

class _CounterWidget extends State<CounterWidget> {
  int count = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            style: TextStyle(color: Colors.white),
            "Counter",
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.lightBlueAccent,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Tap - decrement",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 80,
                    onPressed: () {
                      count = count - 1;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove_circle,
                    ),
                  ),
                  Text(
                    count.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  IconButton(
                    iconSize: 80,
                    onPressed: () {
                      count = count + 1;
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.add_circle,
                    ),
                  ),
                ],
              ),
              Text(
                textAlign: TextAlign.center,
                "Tap + to increment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
