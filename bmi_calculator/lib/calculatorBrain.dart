
import 'dart:math';
class CalculatorBrain{
  CalculatorBrain(this.height,this.weight);

  final int height;
  final int weight;
  double _bmi;

  String BMICalculator(){
    _bmi = weight / pow((height/100),2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>30){
      return "OBESE";
    }
    else if(_bmi>=25){
      return "OVERWEIGHT";
    }
    else if(_bmi>18.5){
      return "NORMAL";
    }
    else{
      return "UNDERWEIGHT";
    }

  }

  String getInterpretations(){
    if(_bmi>30){
      return "Your weight is much higher than normal body weight. Consult a doctor.";
    }
    else if(_bmi>=25){
      return "You have higher than normal body weight. Try to exercise more.";
    }
    else if(_bmi>18.5){
      return "You have a normal body weight. Good Job!";
    }
    else{
      return "You have a bit lower than normal body weight. Try to eat more.";
    }
  }

}