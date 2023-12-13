import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infrastructure Monitoring',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InfrastructurePage(),
        '/projectList': (context) => ProjectListPage(),
      },
    );
  }
}

class InfrastructurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inframate'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'images/city.jpeg', 
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                Text(
                  'Welcome to Inframate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Your go-to hub for monitoring infrastructure developments in your locality.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Project List Page
                    Navigator.pushNamed(context, '/projectList');
                  },
                  child: Text('Go to Project List'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project List'),
      ),
      body: Stack(
        children: <Widget>[
            Image.asset('images/city.jpeg',
            fit: BoxFit.cover,),
            Text(
              'List of Projects goes here.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              )
        ),
        ],
      ),
    );
  }
}
