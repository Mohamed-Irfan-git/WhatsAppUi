import 'package:flutter/material.dart';
import 'package:mobile_app/tabs/call.dart';
import 'package:mobile_app/tabs/camera.dart';
import 'package:mobile_app/tabs/chat.dart';
import 'package:mobile_app/tabs/status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Color(0xff075e54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xff25d366),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff075e54),
          foregroundColor: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff075e54),
        )),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white),
            insets: EdgeInsets.only(bottom: 2),
          ),
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xff075e54),
              child: Icon(Icons.camera_alt),
            )
          : _tabController.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xff075e54),
                  child: Icon(Icons.message),
                )
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.edit,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color(0xff075e54),
                          child: Icon(Icons.camera_alt),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add_call),
                    ),
    );
  }
}
