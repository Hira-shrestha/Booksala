import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_store/auth/landing_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:library_store/books/presentation/pages/book_list.dart';
import 'package:library_store/graphql/client.dart';
import 'package:library_store/mybooks/presentation/cubit/my_books_cubit.dart';
import 'package:library_store/tab/tabbar_controller.dart';

void main() async {
  GetIt getIt = GetIt.I;

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final tokenBox = await Hive.openBox('tokenBox');
  final isLoggedIn = await Hive.openBox("isLoggedIn");
  getIt.registerSingleton<Box>(tokenBox, instanceName: 'tokenBox');
  getIt.registerSingleton<Box>(isLoggedIn, instanceName: 'isLoggedIn');
  final networkClient = NetworkClient();
  networkClient.setup();
  getIt.registerSingleton<NetworkClient>(networkClient);

  // runApp(MyApp(networkClient: networkClient));
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<MyBooksCubit>(
          create: (context) => MyBooksCubit(),
        ),
      ],
      child: MyApp(networkClient: networkClient),
    ),
  );
}

class MyApp extends StatelessWidget {
  final NetworkClient networkClient;

  const MyApp({super.key, required this.networkClient});

  bool getLoginStatus() {
    Box isLoggedIn = GetIt.I<Box>(instanceName: "isLoggedIn");
    bool? loginStatus = isLoggedIn.get("isLoggedIn");
    return loginStatus ?? false;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: (getLoginStatus() != true)
          ? const LandingScreen()
          : const TabBarController(),
    );
  }
}
