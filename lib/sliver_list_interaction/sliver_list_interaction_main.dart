import 'package:flutter/material.dart';

void main() {
  runApp(const SliverListInteraction());
}

class SliverListInteraction extends StatelessWidget {
  const SliverListInteraction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // floating: true,
              pinned: true,
              forceElevated: true,
              // snap: true,
              stretch: true,
              onStretchTrigger: () async => print('hi'),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                stretchModes: [
                  StretchMode.fadeTitle,
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                ],
                background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.teal[800]!,
                        Colors.transparent,
                      ],
                    )),
                    child: Image.network(
                      'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
                      fit: BoxFit.cover,
                    )),
                title: Text('Sliver List Interaction'),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 100,
                (context, index) => ListTile(
                  title: Text('item number $index'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
