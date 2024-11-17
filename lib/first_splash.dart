import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Universitas Ibnu Sina',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 234, 236),
        title: const Text('Universitas Ibnu Sina'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 150,
                bottom: 20,
              ),
            ),
            Image.asset(
              'assets/ibnu.png',
              width: 150,
              height: 150,
            ),
            const Text(
              'Universitas Ibnu Sina',
              style: TextStyle(
                height: 2,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
        backgroundColor: const Color.fromARGB(255, 9, 197, 50),
        child: const Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wal.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Universitas Ibnu Sina"),
            backgroundColor: const Color.fromARGB(255, 232, 234, 236),
          ),
          body: Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50, left: 50),
                ),
                Image.asset(
                  'assets/ibnu.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(width: 20),
                const Text(
                  'UIS UNGGUL',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
