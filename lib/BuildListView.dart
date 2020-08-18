import 'package:flutter/material.dart';

class BuildListView extends StatelessWidget {
  final List<String> listName;
  BuildListView({this.listName});

  List<Widget> _buildWidgetList() {

    return listName.map((item) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.green,
        child: ListTile(
          leading: const Icon(Icons.access_alarm),
          title: Text(
            item,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "Subtitle $item",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            print("Item clicked");
          },
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: _buildWidgetList());
  }
}
