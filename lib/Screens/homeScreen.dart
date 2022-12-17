import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_cubit.dart';
import 'package:lafyuu/Repository/category_repository.dart';

import 'package:lafyuu/Screens/Notification/notification.dart';
import 'package:lafyuu/Screens/categories/productsByCategory.dart';
import 'package:lafyuu/Thems/card.dart';
import 'package:lafyuu/Thems/carousel.dart';
import 'package:lafyuu/Model/categoryModel.dart';
import 'package:lafyuu/Thems/grid.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<CategoryModel> futureCategoryModel;
  bool isconnected = true;
  @override
  initState() {
    super.initState();

    final subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.none) {
        setState() {
          isconnected = false;
        }
      } else {
        setState() {
          isconnected = true;
        }
      }
    });
  }

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (isconnected == false) {
      return Container(
        child: Center(
          child: Text(
            "Internet is not connected",
          ),
        ),
      );
    }
    return BlocProvider(
      create: (context) => ProductCubit()..getAllProduct(),
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Search product ",
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        const Icon(Icons.favorite),
                        const SizedBox(width: 14),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationScreen(),
                              ),
                            );
                          },
                          child: const Icon(Icons.notifications),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CarouselModel(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "category",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "more category",
                              ))
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      //color: Colors.black,
                      child: FutureBuilder<List<CategoryModel>>(
                          future: CategoryRepository().fetchCategory(),
                          builder: (BuildContext context, snapshot) {
                            if (snapshot.hasError) {
                              return Center(
                                child: Text("${snapshot.hasError}"),
                              );
                            }
                            if (snapshot.hasData) {
                              return ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductsByCategory(
                                                categoryName:
                                                    snapshot.data![index].title,
                                              ),
                                            ));
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                        ),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 31,
                                              child: CircleAvatar(
                                                radius: 30,
                                                backgroundColor: Colors.white,
                                                child: Image.network(
                                                  snapshot
                                                      .data![index].urlImage,
                                                  width: 50,
                                                  height: 50,
                                                  color: Colors.redAccent,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              snapshot.data![index].title,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }
                            return const CircularProgressIndicator();
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Flash Sale"),
                        TextButton(
                            onPressed: () {}, child: const Text("See more"))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      height: 238,
                      //  color: Colors.blue,
                      child: ItemCard(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Mega Sale"),
                        TextButton(
                            onPressed: () {}, child: const Text("See more"))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 16,
                      ),
                      height: 238,
                      child: ItemCard(),
                    ),
                    Stack(children: [
                      Container(
                        color: Colors.blue,
                        child: Image.asset('assets/images/image6.png'),
                      ),
                      const Positioned(
                        bottom: 60.0,
                        left: 50.0,
                        child: Text(
                          """Recomended
Product""",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Positioned(
                          bottom: 30.0,
                          left: 50.0,
                          child: Text(
                            "We Recommended the best for you",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    ItemCardG(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  BuildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: const WormEffect(),
      );
}
