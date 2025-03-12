import 'dart:async';
import 'package:intl/intl.dart';

void main() {
  Timer.periodic(Duration(seconds: 1), (timer) {
    _updateTime();
  });
}

void _updateTime() {
  DateTime now = DateTime.now();
  String formattedTime = DateFormat('HH:mm:ss').format(now);
  
  print('\x1B[2J\x1B[0;0H'); 
  print(formattedTime);
}
