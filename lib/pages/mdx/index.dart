import 'package:flutter/material.dart';
import 'package:flutter_sliver_test/api/http.dart';
// import 'package:flutter_sliver_test/pages/mdx/md_page.dart';

/// markdown widget renderer
class CustomMarkdownWidget extends StatefulWidget {
  const CustomMarkdownWidget({super.key});

  @override
  State<CustomMarkdownWidget> createState() => _CustomMarkdownWidgetState();
}

class _CustomMarkdownWidgetState extends State<CustomMarkdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: const SafeArea(child: MarkdownPage("assets/md.txt")),
        body: SafeArea(
          child: FutureBuilder(
            future: Http.get({
              "reviewStatus": 1,
              "current": 1,
              "needNotInterests": true,
              "hiddenContent": true,
              "sorterList": [
                {"field": "createTime", "asc": false}
              ],
              "showPost": 0,
              "needCursor": true,
              "cursorList": [
                {"field": "createTime", "asc": false},
                {"field": "id", "asc": false}
              ]
            }),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // return const MarkdownPage("assets/md.txt");
                return Text(snapshot.data.toString());
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
        bottomNavigationBar: _bottomNavigationBar());
  }

  Widget _bottomNavigationBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ElevatedButton(
            child: const Icon(Icons.portable_wifi_off_outlined),
            onPressed: () => print('dsad'),
          ),
          ElevatedButton(
            child: const Icon(Icons.dashboard_customize),
            onPressed: () => print('dsad'),
          ),
          ElevatedButton(
            child: const Icon(Icons.duo_sharp),
            onPressed: () => print('dsad'),
          ),
          ElevatedButton(
            child: const Icon(Icons.dashboard_outlined),
            onPressed: () => print('dsad'),
          ),
        ]),
      ),
    );
  }
}
