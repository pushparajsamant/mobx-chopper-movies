import 'package:flutter/material.dart';
import 'package:movie_db/screens/post.dart';
import 'package:provider/provider.dart';

import 'data/FetchApiData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      dispose: (context, FetchApiData service) => service.client.dispose(),
      create: (BuildContext context) => FetchApiData.create(),
      child: MaterialApp(
        home: Post(),
      ),
    );
  }
}
