import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Everything in Flutter is a widget

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => ScreenOne(),
      //   '/screenTwo': (context) => ScreenTwo(),
      //   '/screenThree': (context) => ScreenThree(),
      //  },
      home: LifeCycleAndListScreen(),
    );
  }
}

class LifeCycleAndListScreen extends StatefulWidget {
  const LifeCycleAndListScreen({super.key});

  @override
  State<LifeCycleAndListScreen> createState() => _LifeCycleAndListScreenState();
}

class _LifeCycleAndListScreenState extends State<LifeCycleAndListScreen> {

  List<String> myItems = [];

  @override
  void initState() {
    super.initState();
    log('initState called');
    myItems = List.generate(50, (index) => 'Number ${index + 1}',);
  }
  
  @override
  void dispose() {
    log('Dispose called');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle & ListView'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: .symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(myItems[index]),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}

// class AlertsTutorialScreen extends StatelessWidget {
//   const AlertsTutorialScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Alerts & Messages'),
//         backgroundColor: Colors.purpleAccent,
//       ),
//
//       body: Center(
//         child: Column(
//           mainAxisAlignment: .center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('تم إضافة المنتج الى السلة '),
//                     backgroundColor: Colors.teal,
//                     duration: Duration(seconds: 2),
//                     action: SnackBarAction(label: 'تراجع', onPressed: () {}),
//                   ),
//                 );
//               },
//               child: Text('Show SnackBar'),
//             ),
//
//             SizedBox(height: 20),
//
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text('Important Message'),
//                       content: Text(
//                         'Are you sure you want to delete this item?',
//                       ),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text('Cancel'),
//                         ),
//
//                         TextButton(onPressed: () {}, child: Text('Delete')),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Text('Dialog Alert'),
//             ),
//
//             SizedBox(height: 20),
//
//             ElevatedButton(
//               onPressed: () {
//                 showModalBottomSheet(
//                   context: context,
//                   builder: (context) {
//                     return Container(
//                       height: 200,
//                       padding: .all(20),
//                       child: Column(
//                         children: [
//                           Text(
//                             'مشاركة عبر :',
//                             style: TextStyle(fontSize: 20, fontWeight: .bold),
//                           ),
//                           SizedBox(height: 10,),
//                           ListTile(
//                             title: Text('Facebook'),
//                             leading: Icon(Icons.facebook, color: Colors.blue),
//                             onTap: () {},
//                           ),
//
//                           ListTile(
//                             title: Text('Telegram'),
//                             leading: Icon(Icons.telegram, color: Colors.blue),
//                             onTap: () {},
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               },
//               child: Text('Bottom Sheet'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ScreenOne extends StatelessWidget {
//   const ScreenOne({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen One'),
//         backgroundColor: Colors.yellowAccent,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ScreenTwo()),
//             );
//           },
//           child: Text('Go to Screen Two (Push)'),
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenTwo extends StatelessWidget {
//   const ScreenTwo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Screen Two'), backgroundColor: Colors.purple),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: .center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Go Back (Pop)'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigator.pushReplacementNamed(context, '/screenThree');
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => ScreenThree()),
//                 );
//               },
//               child: Text('Go to Screen Three (PushReplacement)'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenThree extends StatelessWidget {
//   const ScreenThree({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Screen Three'), backgroundColor: Colors.teal),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go Back to Screen One (PushAndRemoveUntil)'),
//         ),
//       ),
//     );
//   }
// }

// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           MyCustomPage(
//             title: "مرحبا بك!",
//             description: "هذا هو تطبيقنا الجديد , اسحب لليسار للمتابعة",
//             bgColor: Colors.indigo,
//             icon: Icons.waving_hand,
//           ),
//           MyCustomPage(
//             title: 'مميزات رائعة',
//             description: "نقدم لك أفضل الخدمات بضغطة زر",
//             bgColor: Colors.teal,
//             icon: Icons.star,
//           ),
//            MyCustomPage(
//              title: 'هيا بنا نبدأ ',
//              description: " أنت الآن جاهز لاستخدام التطبيق",
//              bgColor: Colors.deepOrange,
//              icon: Icons.rocket_launch,
//            )
//         ],
//       ),
//     );
//   }
// }

class MyCustomPage extends StatelessWidget {
  final String title;
  final String description;
  final Color bgColor;
  final IconData icon;

  const MyCustomPage({
    super.key,
    required this.title,
    required this.description,
    required this.bgColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Icon(icon, size: 100, color: Colors.white),
          SizedBox(height: 20),
          Text(title, style: TextStyle(fontSize: 35, fontWeight: .bold)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              textAlign: .center,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

// class TabBarTutorial extends StatelessWidget {
//   const TabBarTutorial({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Tab Bar Tutorial'),
//           backgroundColor: Colors.teal,
//           foregroundColor: Colors.white,
//
//           bottom: TabBar(
//             indicatorColor: Colors.white,
//             indicatorWeight: 4,
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.white54,
//             tabs: [
//               Tab(icon: Icon(Icons.chat), text: 'Chats'),
//               Tab(icon: Icon(Icons.update), text: 'Status'),
//               Tab(icon: Icon(Icons.call), text: 'Calls'),
//             ],
//           ),
//         ),
//
//         body: TabBarView(children: [
//           Center(child: Text('Chats')),
//           Center(child: Text('Status')),
//           Center(child: Text('Calls')),
//         ]),
//       ),
//     );
//   }
// }

// class BottomNavTutorial extends StatefulWidget {
//   const BottomNavTutorial({super.key});
//
//   @override
//   State<BottomNavTutorial> createState() => _BottomNavTutorialState();
// }
//
// class _BottomNavTutorialState extends State<BottomNavTutorial> {
//
//   int _currentIndex = 0;
//
//   final List<Widget> _pages = [
//     const Center(child: Text('Home Page', style: TextStyle(fontSize: 30))),
//     const Center(child: Text('Favorite Page', style: TextStyle(fontSize: 30))),
//     const Center(child: Text('Profile Page', style: TextStyle(fontSize: 30))),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Bottom Nav Tutorial')),
//       body: _pages[_currentIndex],
//
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//           items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//       ],),
//     );
//   }
// }

// class AppBarAndDrawer extends StatelessWidget {
//   const AppBarAndDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppBar And Drawer'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
//         ],
//       ),
//
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               accountName: Text('Aya Hamoudeh'),
//               accountEmail: Text('aya@gmail.com'),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSKhRll_Y8h7zHDijKGWSsORuVFfLlvM2nkc52-p_WGg&s=10',
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profile'),
//               onTap: () {},
//             ),
//
//             Divider(),
//
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {},
//             ),
//
//             SizedBox(height: 20),
//
//             ElevatedButton(onPressed: () {}, child: Text("Logout")),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FormValidationTutorial extends StatefulWidget {
//   const FormValidationTutorial({super.key});
//
//   @override
//   State<FormValidationTutorial> createState() => _FormValidationTutorialState();
// }
//
// class _FormValidationTutorialState extends State<FormValidationTutorial> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   String? savedUserName;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Form Validation Tutorial')),
//       body: Padding(
//         padding: .all(20),
//         child: Form(
//           key: _formKey,
//           autovalidateMode: .onUserInteraction,
//
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'UserName',
//                   border: OutlineInputBorder(),
//                 ),
//
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your username';
//                   }
//                   if (value.length < 4) {
//                     return 'Username must be at least 4 characters';
//                   }
//                   return null;
//                 },
//
//                 onSaved: (newValue) {
//                   savedUserName = newValue;
//                 },
//               ),
//
//               SizedBox(height: 20),
//
//               ElevatedButton(onPressed: () {
//                 if(_formKey.currentState!.validate()) {
//                   _formKey.currentState!.save();
//
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                           content: Text('أهلا, تم الحفظ بنجاح $savedUserName'))
//                   );
//                 }
//
//               }, child: Text('Send Data')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TextFieldTutorial extends StatelessWidget {
//   const TextFieldTutorial({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Text Field Tutorial'),
//       ),
//
//
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 hintText: 'example@gmail.com',
//                 prefixIcon: Icon(Icons.email),
//                 border: OutlineInputBorder(
//                   borderRadius: .circular(10)
//                 )
//               ),
//             ),
//
//             SizedBox(height: 20),
//
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: Icon(Icons.lock),
//                   suffixIcon: Icon(Icons.visibility_off),
//                   border: OutlineInputBorder(
//                       borderRadius: .circular(10)
//                   )
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CounterScreen extends StatefulWidget {
//   const CounterScreen({super.key});
//
//   @override
//   State<CounterScreen> createState() => _CounterScreenState();
// }
//
// class _CounterScreenState extends State<CounterScreen> {
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Center(
//         child: Text('The Number is : $counter', style: TextStyle(fontSize: 30)),
//       ),
//
//
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//       ),
//     );
//   }
// }

/// Hamza
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My profile'),
//           backgroundColor: Color(0xFF72CFF8),
//           foregroundColor: Colors.black,
//           centerTitle: true,
//           leading: Icon(Icons.arrow_back),
//           actions: [Icon(Icons.settings)],
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 padding: .all(16),
//                 width: 140,
//                 height: 130,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF0B132B),
//                   borderRadius: .circular(24),
//                   border: .all(color: Color(0xFF72CFF8), width: 1.5),
//                 ),
//                 child: Icon(Icons.person, size: 60, color: Colors.white),
//               ),
//
//               Text(
//                 'Creative Developer',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF72CFF8),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     padding: .all(16),
//                     width: 115,
//                     height: 115,
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey,
//                       borderRadius: BorderRadius.all(.circular(24)),
//                       border: Border.all(color: Colors.lightBlue),
//                     ),
//                     child: Column(
//                       children: [
//                         Icon(
//                           Icons.check_circle_outline_rounded,
//                           color: Colors.purple,
//                           size: 23,
//                         ),
//                         Text(
//                           'TASKS',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         Text(
//                           "142",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: .all(15),
//                     width: 110,
//                     height: 110,
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey,
//                       borderRadius: BorderRadius.all(.circular(24)),
//                       border: Border.all(color: Colors.lightBlue),
//                     ),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           Icon(
//                             Icons.emoji_events_outlined,
//                             color: Colors.purple,
//                             size: 24,
//                           ),
//                           Text(
//                             'LEVEL',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           Text(
//                             '42',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: .all(15),
//                     width: 110,
//                     height: 110,
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey,
//                       borderRadius: BorderRadius.all(.circular(24)),
//                       border: Border.all(color: Colors.lightBlue),
//                     ),
//
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           Icon(
//                             Icons.star_border_outlined,
//                             color: Colors.purple,
//                             size: 24,
//                           ),
//                           Text(
//                             'POINT',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           Text(
//                             '42',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
