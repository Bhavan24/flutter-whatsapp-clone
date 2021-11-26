import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.camera_alt_rounded),
    ),
    Tab(
      text: 'CHATS',
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'CALLS',
    ),
  ];

  static List<PopupMenuButton> popupItems = <PopupMenuButton>[
    popup_chat,
    popup_status,
    popup_calls,
    popup_selectContact,
  ];

  static texts(var txt) {
    return PopupMenuItem(
      child: Text(
        txt,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  static var popup_selectContact = PopupMenuButton(
      color: Colors.blueGrey[800],
      elevation: 20,
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
            texts("Invite a friend"),
            texts("Contacts"),
            texts("Refresh"),
            texts("Help"),
          ]);

  static var popup_chat = PopupMenuButton(
      color: Colors.blueGrey[800],
      elevation: 20,
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
            texts("New group"),
            texts("New broadcast"),
            texts("WhatsApp Web"),
            texts("Starred messages"),
            texts("Settings"),
          ]);

  static var popup_status = PopupMenuButton(
      color: Colors.blueGrey[800],
      elevation: 20,
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
            texts("Status privacy"),
            texts("Settings"),
          ]);

  static var popup_calls = PopupMenuButton(
      color: Colors.blueGrey[800],
      elevation: 20,
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
            texts("Clear call log"),
            texts("Settings"),
          ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: myTabs,
            ),
            title: const Text('WhatsApp'),
            backgroundColor: Colors.blueGrey[900],
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        backgroundColor: Colors.blueGrey,
                        appBar: AppBar(
                          backgroundColor: Colors.blueGrey[900],
                          title: Center(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: " Search...",
                                hintStyle: TextStyle(color: Colors.white38),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ));
                },
              ),
              popupItems[1],
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Scaffold(
                  backgroundColor: Colors.blueGrey,
                  body: Center(
                    child: Text('Your photo'),
                  ),
                  bottomNavigationBar: BottomAppBar(
                    color: Colors.blueGrey[700],
                    shape: const CircularNotchedRectangle(),
                    child: Container(height: 50.0),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    tooltip: 'Camera',
                    child: const Icon(
                      Icons.camera,
                      size: 50.0,
                    ),
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerDocked,
                ),
              ),
              Center(
                child: Scaffold(
                  backgroundColor: Colors.blueGrey,
                  body: Center(
                    child: Text('Chats'),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return Scaffold(
                            backgroundColor: Colors.blueGrey,
                            appBar: AppBar(
                              backgroundColor: Colors.blueGrey[900],
                              title: Text("Select Contact"),
                              actions: <Widget>[
                                IconButton(
                                  icon: const Icon(Icons.search),
                                  tooltip: 'Search',
                                  onPressed: () {
                                    print("search");
                                  },
                                ),
                                popup_selectContact,
                              ],
                            ),
                          );
                        },
                      ));
                    },
                    tooltip: 'Contacts',
                    child: Icon(Icons.chat),
                  ),
                ),
              ),
              Center(
                child: Scaffold(
                  backgroundColor: Colors.blueGrey,
                  body: Center(
                    child: Text('Status'),
                  ),
                  floatingActionButton: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          child: Icon(
                            Icons.edit,
                          ),
                          onPressed: () {},
                          heroTag: null,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton(
                          child: Icon(Icons.camera_alt),
                          onPressed: () {},
                          heroTag: null,
                        )
                      ]),
                ),
              ),
              Center(
                child: Scaffold(
                  backgroundColor: Colors.blueGrey,
                  body: Center(
                    child: Text('Calls'),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    tooltip: 'Camera',
                    child: Icon(Icons.phone_forwarded),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
