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
              tabs: [
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
              ],
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
              PopupMenuButton(
                  color: Colors.blueGrey[800],
                  elevation: 20,
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(
                            "New group",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text(
                            "New broadcast",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text(
                            "WhatsApp Web",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: 3,
                        ),
                        PopupMenuItem(
                          child: Text(
                            "Starred messages",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: 4,
                        ),
                        PopupMenuItem(
                          child: Text(
                            "Settings",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: 5,
                        ),
                      ]),
              // IconButton(
              //   onPressed: () {
              //     print("more");
              //   },
              //   icon: Icon(Icons.more_vert),
              //   tooltip: 'More',
              // ),
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
                                PopupMenuButton(
                                    color: Colors.blueGrey[800],
                                    elevation: 20,
                                    icon: Icon(Icons.more_vert),
                                    itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Text(
                                              "Invite a friend",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            value: 1,
                                          ),
                                          PopupMenuItem(
                                            child: Text(
                                              "Contacts",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            value: 2,
                                          ),
                                          PopupMenuItem(
                                            child: Text(
                                              "Refresh",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            value: 3,
                                          ),
                                          PopupMenuItem(
                                            child: Text(
                                              "Help",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            value: 4,
                                          ),
                                        ]
                                ),
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