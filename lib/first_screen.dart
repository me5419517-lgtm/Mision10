import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {

  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
int count = 0;
class _FirstScreenState extends State<FirstScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Text(
              '$count',
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  width: 56,
                  height: 56,
                  child: FloatingActionButton(
                    heroTag: 'minus',
                    onPressed: () {
                      setState(() {
                        if (count > 0) count--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(width: 40),
                SizedBox(
                  width: 56,
                  height: 56,
                  child: FloatingActionButton(
                    heroTag: 'plus',
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}