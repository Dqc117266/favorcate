import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Column(
          children: [
            buildHeaderView(context),
            buildListTile(context, Icon(Icons.restaurant), "进餐", () {
              Navigator.of(context).pop();
            }),
            buildListTile(context, Icon(Icons.settings), "过滤", () {
              Navigator.of(context).pushNamed(FilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderView(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      alignment: Alignment(0, 0.5),
      color: Colors.orange,
      child: Text("开始动手", style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold),),
    );
  }

  Widget buildListTile(BuildContext context, Widget icon, String title, Function handler) {
    return ListTile(
      leading: icon,
      title: Text(title, style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold),),
        onTap: () => handler(),
    );
  }

}
