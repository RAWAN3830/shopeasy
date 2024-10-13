import 'package:dummyjson_calling/presentation/tabs/home_screen/home_screen.dart';
import 'package:dummyjson_calling/infra/Provider_service/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ApiProvider()),
      ],
      child:  MaterialApp(
                debugShowCheckedModeBanner: false,
                theme:  ThemeData.dark(useMaterial3: true),
               home: const HomeScreen(),

            ),

    );
  }
}

