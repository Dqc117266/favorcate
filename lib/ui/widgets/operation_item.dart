
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;
  final Color textColor;

  OperationItem(this._icon, this._title, {this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon,
          SizedBox(width: 3,),
          Expanded(child: Text(_title, style: TextStyle(color: textColor),)),
        ],
      ),
    );
  }
}
