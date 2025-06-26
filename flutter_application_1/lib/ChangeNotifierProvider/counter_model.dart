import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _count1 = 0;
  int _count2 = 0;
  int _count3 = 0;
  int _count4 = 0;
  int _count5 = 0;
  int _count6 = 0;
  int _count7 = 0;

  int get count1 => _count1;
  int get count2 => _count2;
  int get count3 => _count3;
  int get count4 => _count4;
  int get count5 => _count5;
  int get count6 => _count6;
  int get count7 => _count7;
  

  void incrementar(){
    _count1++;
    _count2++;
    _count3++;
    _count4++;
    _count5++;

  }


    void decrementar(){
    _count6--;
    _count7--;

        notifyListeners();

  }
}