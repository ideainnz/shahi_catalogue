import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shahi_catalogue/about_us.dart';
import 'package:shahi_catalogue/constants/constants.dart';
import 'package:shahi_catalogue/contact_us.dart';
import 'package:shahi_catalogue/csr.dart';
import 'package:shahi_catalogue/dashboard.dart';
import 'package:shahi_catalogue/export_products.dart';
import 'package:shahi_catalogue/media.dart';
import 'package:shahi_catalogue/products.dart';
import 'package:shahi_catalogue/providers/export_product_provider.dart';
import 'package:shahi_catalogue/providers/product_provider.dart';
import 'package:shahi_catalogue/providers/product_stats_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider<ExportProductProvider>(
          create: (_) => ExportProductProvider(),
        ),
        ChangeNotifierProvider<ProductStatsProvider>(
          create: (_) => ProductStatsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shahi e-Catalogue',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.red,
          primaryColor: Color(Constants.appColor),
          brightness: Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => DashboardScreen(),
          '/products': (context) => ProductsScreen(),
          '/export_products': (context) => ExportProductsScreen(),
          '/media': (context) => MediaScreen(),
          '/csr': (context) => CSRScreen(),
          '/about': (context) => AboutUsScreen(true),
          '/contact': (context) => ContactUsScreen(),
        },
        // home: MyHomePage(title: 'Shahi Products e-Catalogue'),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // return const ProductsScreen();
//     return DashboardScreen();
//   }
// }
