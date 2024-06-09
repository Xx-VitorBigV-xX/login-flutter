import 'package:flutter/material.dart';
import 'package:loginuix/components/my_button.dart';
import 'package:loginuix/components/my_textfild.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
 const  MyApp({super.key});
  // text editing controllers

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child:Center(
            child:Column(
              children: [
                const SizedBox(height:50),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height:50),
                //welcome back, you've been missed!
                Text(
                    'Welcome back you\'ve been  missed!',
                        style: TextStyle(color: Colors.grey[700],
                        fontSize:16,
                        )
                ),
                const SizedBox(height: 25),

                //username textfield
                 MyTextFild(
                     controller:widget.usernameController,
                     hintText: 'Username',
                     obscureText: false
                 ),
                //password textfield
                const SizedBox(height: 10),
                 MyTextFild(controller: widget.passwordController,
                     hintText: 'Password',
                     obscureText: true
                 ),
                const SizedBox(height: 10,),
                //forgot password?
                Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color:Colors.grey[600])
                    )
                  ],
                )),

                //sing in button
                MyButton()
                //or continue with
                // goole + apple sing in buttons
                // not a member? register now,
    ])
        )

      )
    );

  }
}
