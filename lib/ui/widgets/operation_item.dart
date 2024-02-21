
import 'package:flutter/material.dart';

class OperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;

  OperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _icon,
          SizedBox(width: 3,),
          Text(_title),
        ],
      ),
    );
  }
}
