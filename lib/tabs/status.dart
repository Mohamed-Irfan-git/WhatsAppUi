import 'package:flutter/material.dart';
import 'package:mobile_app/modal/status_model.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: SizedBox(
                  width: 70,
                  height: 70,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.network(
                            "https://randomuser.me/api/portraits/men/16.jpg"),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: Color(0xff25d366),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Tap To Add Status Update",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  color: const Color.fromARGB(255, 151, 140, 140),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: statusData.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      Divider(
                        height: 5,
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(statusData[i].pic),
                        ),
                        title: Row(
                          children: [
                            Text(
                              statusData[i].name,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        subtitle: Container(
                          child: Text(
                            statusData[i].time,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  )),
        )
      ],
    );
  }
}
