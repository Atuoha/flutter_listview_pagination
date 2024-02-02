import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:listview_pagination/business_logic/list/list_bloc.dart';
import 'package:listview_pagination/data/model/list_item.dart';
import 'package:listview_pagination/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/list/list.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ListBloc bloc = getIt<ListBloc>();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    bloc.add(FetchNextPageEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Pagination'),
      ),
      body:
      BlocBuilder(
          bloc: bloc,
          builder: (context, ListState state) {
            if (state.listItems.isEmpty) {
              const Center(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 10),
                    Text(
                      'List is empty',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }

            return NotificationListener<ScrollNotification>(
              onNotification: handleScrollNotification,
              child: ListView.builder(
                itemCount: calculateListItemCount(state),
                controller: scrollController,
                itemBuilder: (context, index) {
                  ListItem item = state.listItems[index];

                  if (state.listItems.isEmpty) {
                    return  const Center(
                      child: Column(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 10),
                          Text(
                            'List is empty',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return index >= state.listItems.length
                      ?   const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(item.colorCode),
                            child: const Center(
                              child: Icon(
                                Icons.numbers,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          title: Text(item.title),
                          subtitle: Text(item.subTitle),
                        );
                },
              ),
            );
          }),
    );
  }

  bool handleScrollNotification(ScrollNotification scrollNotification) {
    if (scrollNotification is ScrollEndNotification &&
        scrollController.position.extentAfter == 0) {
      bloc.add(FetchNextPageEvent());
    }
    return false;
  }

  int calculateListItemCount(ListState state) {
    if (!state.hasReachedEndOfResult) {
      return state.listItems.length;
    } else {
      return state.listItems.length + 1;
    }
  }
}
