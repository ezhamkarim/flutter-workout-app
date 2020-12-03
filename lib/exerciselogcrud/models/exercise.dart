import 'package:flutter/material.dart';

class Entry {

  final String exerciseId;
  final String date;
  final String exercise;
  final String level;
  final String sets;
  final String reps;

  Entry({this.date, this.exercise, this.level, this.sets, this.reps, @required this.exerciseId});

  factory Entry.fromJson(Map<String, dynamic> json){
    return Entry(  
      date: json['date'],
      exercise: json['exercise'],
      level: json['level'],
      sets: json['sets'],
      reps: json['reps'],
      exerciseId: json['exerciseId']
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'date': date,
      'exercise':exercise,
      'level':level,
      'sets':sets,
      'reps':reps,
      'exerciseId':exerciseId
    };
  }
}