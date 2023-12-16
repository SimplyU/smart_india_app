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
        '/loginAffiliation': (context) => LoginAffiliationPage(),
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
        title: Text('Welcome to Inframate'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'images/city.jpeg', // Replace with your image path
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
                    fontSize: 28.0,
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
                    // Navigate to Login Affiliation Page
                    Navigator.pushNamed(context, '/loginAffiliation');
                  },
                  child: Text('Login with Affiliated ID'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginAffiliationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Affiliated Login'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'images/city_2.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Affiliated ID',
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Project List Page
                      Navigator.pushNamed(context, '/projectList');
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
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
      body: Center(
        child: Text(
          'List of Projects goes here.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
