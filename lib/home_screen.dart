import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isScrollingUp = false;

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Pagination'),
      ),
      body: ListView(
        children: List.generate(
          200,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
              child: const Center(
                child: Icon(
                  Icons.numbers,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text('No $index'),
            subtitle: Text('This is the item in No.$index'),
          ),
        ),
      ),
    );
  }
}
