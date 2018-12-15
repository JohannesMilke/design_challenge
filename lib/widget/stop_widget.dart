import 'package:advent15_design_challenge/data/stop_helpers.dart';
import 'package:advent15_design_challenge/model/stop.dart';
import 'package:advent15_design_challenge/model/stop_icon.dart';
import 'package:flutter/material.dart';

class StopWidget extends StatelessWidget {
  final Stop stop;

  const StopWidget({Key key, this.stop}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: badge(context, stop: stop),
        width: 120.0,
      );

  Widget badge(BuildContext context, {Stop stop}) {
    final IconData icon = getStopIcon(stop);
    final bool largeIcon = stop.stopIcon == StopIcon.bus ? true : false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: stop.color,
          size: largeIcon ? 48.0 : 40.0,
        ),
        SizedBox(width: 8.0),
        stop.iconText != null
            ? Expanded(
                child: Text(
                  stop.iconText,
                  style: Theme.of(context).textTheme.subhead,
                ),
              )
            : Container(),
      ],
    );
  }
}
