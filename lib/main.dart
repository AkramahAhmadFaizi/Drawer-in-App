import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'new_page.dart';

void main() => runApp(
  MaterialApp(
    title: "App Page",
    home: HomePage(),
    theme: ThemeData(
        primarySwatch: Colors.pink,
      primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey : null,
    ),
  //     routes: <String, WidgetBuilder>{
  //         "/a": (BuildContext context) => NewPage("New Page"),
  // }
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Akramah Faizi"),
                accountEmail: Text("akramahfiaiz@gmailc.om"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.black12 : Colors.white,
                  child: Text("A"),
                ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.black12 : Colors.teal,
                  child: Text("S"),
                )
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
              // onTap: (){
              //   Navigator.of(context).pop();
              //   Navigator.of(context).pushNamed("/a");
              // }
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        NewPage("Page one"),
                ));
              },
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_downward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      NewPage("Page two"),
                ));
              },
                // onTap: (){
                //   Navigator.of(context).pop();
                //   Navigator.of(context).pushNamed("/a");
                // }
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),

          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
