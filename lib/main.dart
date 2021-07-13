import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'This is karthik project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Center(child: Text("HELLO KARTHIK")),
        actions: [Icon(Icons.login), Icon(Icons.logout)],

        // leading: Icon(Icons.home),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 40,
              width: 300,
              color: Colors.green,
              child: Center(
                  child:
                      Text("Welcome karthik", style: TextStyle(fontSize: 20))),
            ),
            ListTile(
              title: Text("login"),
              trailing: Icon(Icons.login),
            ),
            Divider(thickness: 2, color: Colors.green),
            ListTile(
              title: Text("logout"),
              trailing: Icon(Icons.logout),
            ),
            Divider(thickness: 2, color: Colors.green),
            ListTile(
              title: Text("help"),
              trailing: Icon(Icons.help),
              onTap: () {
                print("clicked help button");
              },
            ),
            Divider(thickness: 2, color: Colors.green),
            ListTile(
              title: Text("support"),
              trailing: Icon(Icons.support),
            ),
          ],
        ),
      ),

      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 100.0, color: Colors.blue),
                Icon(Icons.local_gas_station,
                    size: 100.0, color: Colors.orange),
                Icon(Icons.signal_cellular_4_bar,
                    size: 100.0, color: Colors.lightGreen),
              ],
            ),
            Icon(Icons.face, size: 100.0, color: Colors.purple),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      print("clicked submit button");
                    },
                    child: Text("submit")),
              ],
            ),
            SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                  "https://static3.depositphotos.com/1002188/144/i/600/depositphotos_1448005-stock-photo-smile.jpg",
                )),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text("This is container",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            Column(children: [
              Text("Welcome To The page",
                  style: TextStyle(color: Colors.red, fontSize: 40)),
              Text("You have pushed the button this many times:",
                  style: TextStyle(fontSize: 20)),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
