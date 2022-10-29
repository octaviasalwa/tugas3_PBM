import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Travel Destination',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map> menuFavorites = [
    {'label': 'Hotel', 'image': 'assets/hotel.png', 'color': Colors.blue},
    {'label': 'Ticket', 'image': 'assets/ticket.png', 'color': Colors.blue},
    {'label': 'Eats', 'image': 'assets/eats.png', 'color': Colors.blue},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Travel Destination'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  for (final menuFavorite in menuFavorites)
                    Material(
                      borderRadius: BorderRadius.circular(16),
                      child: InkWell(
                        splashColor: menuFavorite['color'].withOpacity(0.2),
                        highlightColor: menuFavorite['color'].withOpacity(0.2),
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: menuFavorite['color'],
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                  Image.asset('assets/hotel.png')
                                ],
                              ),
                            ),
                            Text(menuFavorite['label'])
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              Material(
                borderRadius: BorderRadius.circular(16),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Icon(Icons.more_horiz),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('More'),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
    // ignore: todo
    // TODO: implement build
    //throw UnimplementedError();
  }
}
