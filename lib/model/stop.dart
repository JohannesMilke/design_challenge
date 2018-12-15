import 'package:advent15_design_challenge/model/stop_number.dart';
import 'package:advent15_design_challenge/model/stop_icon.dart';
import 'package:flutter/material.dart';

@immutable
class Stop {
  final StopNumber number;
  final StopIcon stopIcon;
  final String title;
  final String subtitle;
  final String iconText;
  final Color color;

  const Stop({
    @required this.stopIcon,
    @required this.title,
    this.color,
    this.number = StopNumber.normal,
    this.subtitle,
    this.iconText,
  });
}
