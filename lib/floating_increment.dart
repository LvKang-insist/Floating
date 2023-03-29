import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'floating/manager/floating_manager.dart';

/// @name：floating_increment
/// @package：
/// @author：345 QQ:1831712732
/// @time：2022/02/10 23:21
/// @des：

class FloatingIncrement extends StatefulWidget {
  const FloatingIncrement({Key? key}) : super(key: key);

  @override
  _FloatingIncrementState createState() => _FloatingIncrementState();
}

class _FloatingIncrementState extends State<FloatingIncrement> {
  int _counter = 0;
  double width = 80;
  double height = 80;
  double x = 30;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          // setState(() {
          // if (width < 200) {
          //   width = width + x;
          //   height = height + x;
          // } else {
          //   width = width - x;
          //   height = height - x;
          // }
          // _counter++;
          // });
          if (x > 240) {
            x = 30;
          }else{
            x = x + 30;
          }
          var floating = floatingManager.getFloating("2");
          floating.scrollManager().scrollTopLeft(x, x);
        },
        child: AnimatedContainer(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(50)),
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 300),
          child: Text(
            '点击移动$_counter',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
