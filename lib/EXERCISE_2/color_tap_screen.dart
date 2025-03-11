import 'package:flutter/material.dart';
import 'widgets/actions/color_tap.dart';
import 'package:provider/provider.dart';
import 'model/color_counter.dart';

class ColorTapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("ColorTapScreen build()");
    final counters = Provider.of<ColorCounters>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Color Taps")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorTap(
            type: CardType.red,
            onTap: () => counters.incrementRed(),
            child: Text("Red Count: ${counters.redCounter}", style: TextStyle(color: Colors.white)),
          ),
          ColorTap(
            type: CardType.blue,
            onTap: () => counters.incrementBlue(),
            child: Text("Blue Count: ${counters.blueCounter}", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}