import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  // List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  // gradient container version 1
  // final List<Color> colors = [Colors.blue, Colors.pink];

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,

        // drawer of the page
        // drawer: Drawer(
        //   // backgroundColor: Colors.pink,
        //   child: Builder(builder: (context) {
        //     return ListView(
        //       children: <Widget>[
        //         DrawerHeader(
        //           decoration: BoxDecoration(
        //             // border: Border.all(
        //             //   color: Colors.black,
        //             //   width: 5,
        //             // ),
        //             // borderRadius: BorderRadius.circular(90),
        //             gradient: LinearGradient(
        //               begin: Alignment.centerLeft,
        //               end: Alignment.centerRight,
        //               colors: [Colors.blue, Colors.red],
        //             ),
        //             color: Colors.lime,
        //             // image: DecorationImage(
        //             //     image: AssetImage("img/drawer-background.svg"),
        //             //     fit: BoxFit.cover),
        //           ),
        //           child: Text('Drawer Header'),
        //         ),
        //         ListTile(
        //           title: Text('Do Nothing'),
        //           onTap: () {},
        //         ),
        //         ListTile(
        //           title: Text('Back'),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ],
        //     );
        //   }),
        // ),

        // top of the page
        // appBar: AppBar(
        //   centerTitle: true,
        //   leading: Builder(
        //     builder: (context) => IconButton(
        //       icon: Icon(Icons.menu),
        //       onPressed: () => (),
        //       tooltip: "Menu",
        //     ),
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.settings),
        //       onPressed: () => (),
        //       tooltip: "Settings",
        //     ),
        //     IconButton(
        //       icon: Icon(Icons.home),
        //       onPressed: () => (),
        //       tooltip: "Home",
        //     ),
        //   ],
        //   title: Text("My App"),
        //   backgroundColor: Colors.blueGrey[600],
        // ),

        // body of the page
        // version1
        // body: GradientContainer(colors),
        // version 2
        body: GradientContainer(Colors.blue, Colors.pink),

        // body: Padding(
        //   padding: EdgeInsets.all(20),
        //   child: Container(
        //     constraints: BoxConstraints(
        //       maxHeight: double.infinity,
        //       maxWidth: double.infinity,
        //     ),
        //     color: Colors.deepPurple,
        //     alignment: Alignment.center,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: <Widget>[
        //         Flexible(
        //           child: Padding(
        //             padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        //             child: Container(
        //               constraints: BoxConstraints(
        //                 maxHeight: 150,
        //                 maxWidth: double.infinity,
        //               ),
        //               color: Colors.green,
        //               alignment: Alignment.center,
        //               child: Text(
        //                 "Hello, World!",
        //                 textAlign: TextAlign.center,
        //                 style: TextStyle(
        //                   // fontSize: 30,
        //                   color: Colors.white,
        //                   fontWeight: FontWeight.bold,
        //                   backgroundColor: Colors.purpleAccent,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //         Flexible(
        //           child: Container(
        //             color: Colors.teal,
        //             child: Text(
        //               "middle one",
        //               textAlign: TextAlign.center,
        //             ),
        //           ),
        //         ),
        //         Flexible(
        //           child: Padding(
        //             padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        //             child: Container(
        //               constraints: BoxConstraints(
        //                 maxHeight: 150,
        //                 maxWidth: double.infinity,
        //               ),
        //               color: Colors.red,
        //               alignment: Alignment.center,
        //               child: Text(
        //                 "Hello, World!",
        //                 textAlign: TextAlign.center,
        //                 style: TextStyle(
        //                   // fontSize: 30,
        //                   color: Colors.white,
        //                   fontWeight: FontWeight.bold,
        //                   backgroundColor: Colors.purpleAccent,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => (),
        //   hoverColor: Colors.green,
        //   splashColor: Colors.red,
        //   enableFeedback: false,
        // ),

        // bottom of the page
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: "Home",
        //       tooltip: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: "Settings",
        //       tooltip: "Settings",
        //     ),
        //   ],
        //   backgroundColor: Colors.cyan,
        // ),
      ),
    ),
  );
}

// created new file gradient_container.dart

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key})
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//           colors: [Colors.pink.withGreen(150), Colors.blue],
//         ),
//       ),
//       child: Center(
//         child: Text(
//           "Hello, World!",
//           style: TextStyle(fontSize: 30, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
