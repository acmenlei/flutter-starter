
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // title: const Text("我是Sliver AppBar"),
              // floating: true,
              // 向上滚动显示AppBar
              pinned: true,
              stretch: true,
              // 允许拉伸效果
              // 向上滚动的时候提前显示AppBar（配合floating使用）
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              // 到顶后撑开高度
              expandedHeight: 200,
              flexibleSpace: const FlexibleSpaceBar(
                background: FlutterLogo(), // 撑开高度所展示的内容
                title: Text("FlexibleSpaceBar 标题"),
                stretchModes: [
                  // 配合 stretch 使用
                  StretchMode.blurBackground, // 向下拉伸后模糊背景
                  StretchMode.zoomBackground, // 向下拉伸后放大背景
                  StretchMode.fadeTitle, // 向下拉伸后渐渐隐藏标题
                ],
              ),
            ),
            // SliverToBoxAdapter(
            //   child: PhysicalModel(
            //     color: Colors.purple,
            //     shadowColor: Colors.red,
            //     elevation: 20,
            //     child: CircleAvatar(
            //       child: Text("Leading"),
            //     ),
            //   ),
            // ),
            SliverPersistentHeader(
              delegate: _MyDelegate(title: "标题测试"),
              pinned: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Container(
                height: 200,
                color: Colors.primaries[index % 18],
                child: Text("$index"),
              );
            }, childCount: 2)),
            SliverGrid(
                delegate: SliverChildBuilderDelegate((builder, index) {
                  return Container(
                    height: 20,
                    color: Colors.primaries[index % 18],
                  );
                }, childCount: 25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5)),
            // SliverFillViewport(
            //     delegate: SliverChildBuilderDelegate((builder, index) {
            //   return Container(color: Colors.primaries[index % 18]);
            // }, childCount: 5))
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _MyDelegate extends SliverPersistentHeaderDelegate {
  final String title;

  _MyDelegate({required this.title});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        height: 50, color: Colors.yellow, child: FittedBox(child: Text(title)));
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50;

  @override
  // TODO: implement minExtent
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant _MyDelegate oldDelegate) {
    return oldDelegate.title != title;
  }
}
