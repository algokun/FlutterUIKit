import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/ui/page/Timeline/page3/task.dart';

import 'task_row.dart';

class TimelinePage3 extends StatelessWidget with Tasks {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: <Widget>[
          _buildTimeline(),
          _buildBottomPart(),
        ],
      ),
    ));
  }

  Widget _buildBottomPart() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildMyTasksHeader(),
        _buildTasksList(),
      ],
    );
  }

  Widget _buildTasksList() {
    return new Expanded(
      child: new ListView(
        children: tasks.map((task) => new TaskRow(task: task)).toList(),
      ),
    );
  }

  Widget _buildMyTasksHeader() {
    return new Padding(
      padding: new EdgeInsets.only(left: 64.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'My Tasks',
            style: new TextStyle(fontSize: 34.0),
          ),
          new Text(
            'FEBRUARY 8, 2015',
            style: new TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeline() {
    return new Positioned(
      top: 0.0,
      bottom: 0.0,
      left: 32.0,
      child: new Container(
        width: 1.0,
        color: Colors.grey[300],
      ),
    );
  }
}
