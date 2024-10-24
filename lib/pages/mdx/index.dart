import 'package:flutter/material.dart';
import 'package:flutter_sliver_test/pages/mdx/md_page.dart';

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
        body: const SafeArea(child: MarkdownPage("assets/md.txt")),
        bottomNavigationBar: _bottomNavigationBar());
  }

  Widget _bottomNavigationBar() {
    return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
