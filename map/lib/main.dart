import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/blocs/menu_bloc/menu_bloc.dart';
import 'package:map/blocs/object_bloc/draw_objects_bloc.dart';
import 'package:map/ui/page/map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DrawObjectsBloc()
              ..add(
                LoadObjects(),
              ),
          ),
          BlocProvider(
            create: (context) => MenuBloc()
              ..add(
                MainMenuEvent(),
              ),
          )
        ],
        child: const MaterialApp(
          title: 'Welcome to Flutter',
          debugShowCheckedModeBanner: false,
          home: MapPage(),
        ));
  }
}
