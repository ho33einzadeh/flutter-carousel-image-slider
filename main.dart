import 'package:flutter/material.dart';
//Please Enter package name(folder)
import 'package:'YOUR PACKAGE NAME'/Data.dart';
//Please Enter package name(folder)
import 'package:'YOUR PACKAGE NAME'/carousel/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final categoreis = AppDataBase.categories;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50,),
            _CategoryList(categoreis: categoreis),
          ],
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    Key? key,
    required this.categoreis,
  }) : super(key: key);

  final List<Category> categoreis;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: categoreis.length, 
      itemBuilder: (context,index,realIndex){
        return _Category(category: categoreis[realIndex]);
      }, 
      options: CarouselOptions(scrollDirection: Axis.horizontal,scrollPhysics: const BouncingScrollPhysics(),viewportFraction: 0.8,autoPlay: true,aspectRatio: 1.2,initialPage: 0,disableCenter: true,enableInfiniteScroll: false,enlargeStrategy: CenterPageEnlargeStrategy.height,enlargeCenterPage: true));
  }
}

class _Category extends StatelessWidget {
  const _Category({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    
    Padding(
      padding: const EdgeInsets.fromLTRB(32,0,8,16),
      child: Positioned.fill(
    child: Container(
      
      foregroundDecoration: BoxDecoration(
    
    borderRadius: BorderRadius.circular(32),
    gradient: const LinearGradient(
    end: Alignment.center,
    begin: Alignment.bottomCenter,
    colors: [ 
    Color(0xff0D253C),
    Colors.transparent,]
       
    ),
      ),
      
     child: ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset('assets/img/${category.imageFileName}',fit: BoxFit.cover,)),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(32),
     color: Colors.blue,
      ),
    ),
      ),
    ),
    
    Positioned(
      bottom: 165,
      left: 55,
      child: Text(category.title,style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),)),
      ],
    );
  }
}
