import 'package:flutter/material.dart';
import 'package:mobile_app/modal/call_model.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 15,
          ),
          ListTile(
            dense: false,
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callData[i].pic),
              radius: 30,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  callData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(i != 0 ? Icons.call : Icons.videocam)
              ],
            ),
            subtitle: Text(
              callData[i].time,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
