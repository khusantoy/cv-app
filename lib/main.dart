import 'package:cv_app/blocs/download_pdf_bloc.dart';
import 'package:cv_app/ui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DownloadPdfBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Khusanboy's CV",
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFE5FDFF),
          ),
          scaffoldBackgroundColor: const Color(0xFFE5FDFF),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
