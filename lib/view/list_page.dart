import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:listview_pagination/business_logic/list/list_bloc.dart';
import 'package:listview_pagination/injection_container.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var bloc = getIt<ListBloc>();

  @override
  void initState() {
    super.initState();
  }

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
