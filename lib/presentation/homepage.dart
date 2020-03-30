import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/store/article_store.dart';
import 'package:provider/provider.dart';
import 'hot_page.dart';
import 'new_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final TextEditingController _filter = new TextEditingController();

  @override
  void initState() {
    super.initState();

    print('update');
    _controller = new TabController(vsync: this, initialIndex: 0, length: 2);
    _controller.addListener(_onTabChange);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _onTextChange(searchText) {
    Provider.of<ArticleStore>(context).onSearchTextChange(searchText);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 10,
          title: TextField(
            cursorColor: Colors.white,
            onChanged: (data) {
              _onTextChange(data);
            },
            controller: _filter,
            decoration: new InputDecoration(
                prefixIcon: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Search articles'),
          ),
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text('Hot')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text('New')),
              ),
            ],
          ),
//          title: Text('Test App'),
        ),
        body: TabBarView(
          controller: _controller,
          children: [HotPage(), NewPage()],
        ),
      ),
    );
  }

  _onTabChange() {
    Provider.of<ArticleStore>(context).onTabChange(_controller.index);
  }
}
