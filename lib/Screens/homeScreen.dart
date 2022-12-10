import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/Product_Cubit/product_cubit.dart';
import 'package:lafyuu/Repository/category_repository.dart';

import 'package:lafyuu/Screens/Notification/notification.dart';
import 'package:lafyuu/Screens/categories/productsByCategory.dart';
import 'package:lafyuu/Thems/card.dart';
import 'package:lafyuu/Thems/grid.dart';
import 'package:lafyuu/Thems/carousel.dart';
import 'package:lafyuu/Model/categoryModel.dart';

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
  //List listOfCategory = [];
  @override
  Widget build(BuildContext context) {
    //  final List<String> list = [
    //  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    //  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    //  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    //];
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
                            // Within the `FirstRoute` widget

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
                    //  CarouselWithDotsPage(imgList: list),
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
                          future: fetchCategory(),
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

                                    // GestureDetector(
                                    //    onTap: () {},
                                    //     child: Image.asset('assets/images/ManShirt.png')),
                                    //  const SizedBox(width: 10),
                                    //    Image.asset('assets/images/ManShirt.png'),
                                    //  const SizedBox(width: 10),
                                    //  Image.asset('assets/images/ManShirt.png'),
                                    //  const SizedBox(
                                    //  width: 10,
                                    //  ),
                                    // Image.asset('assets/images/ManShirt.png'),
                                    //  const SizedBox(width: 10),
                                    //  Image.asset('assets/images/ManShirt.png'),
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

                      //   child: ListView(
                      //  scrollDirection: Axis.horizontal,
                      //   children: [
                      //    GestureDetector(
                      // Within the `FirstRoute` widget
                      // onTap: () {
                      //  Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ProductDetails(),
                      //   ),
                      //    );
                      //   },
                      //   child: Container(
                      //   margin: const EdgeInsets.all(10),
                      //   decoration: BoxDecoration(
                      //    border: Border.all(
                      //       color:
                      //         const Color.fromARGB(255, 215, 221, 237)),
                      //   borderRadius: BorderRadius.circular(15),
                      //  ),
                      //  child: Column(children: [
                      //     Image.asset(
                      //      'assets/images/image1.png',
                      //        height: 100,
                      //         width: 100,
                      //          ),
                      //          const Text(
                      //        """FS - Nike Air
//Max 270 React...""",
                      //     style: const TextStyle(
                      //          fontWeight: FontWeight.bold,
                      //       fontSize: 12,
                      //       ),
                      //     ),
                      //    const SizedBox(
                      //     height: 8,
                      //    ),
                      //   Container(
                      //       margin: const EdgeInsets.only(left: 16),
                      //     child: Row(children: const [
                      //     Text(
                      //       "299,43",
                      //       style: TextStyle(
                      //         color: Colors.blueAccent,
                      //          fontWeight: FontWeight.bold,
                      //          fontSize: 12,
                      //          ),
                      //        ),
                      //        SizedBox(
                      //         width: 73,
                      //        )
                      //     ]),
                      //    ),
                      //    const SizedBox(
                      //   height: 8,
                      //   ),
                      //   Row(children: const [
                      //   Text(
                      //    "534,33",
                      //  style: TextStyle(
                      //    decoration: TextDecoration.lineThrough,
                      //     color: Colors.grey),
                      //    ),
                      //    SizedBox(
                      //      width: 8,
                      //      ),
                      //       Text(
                      //          "24% Off",
                      //          style: TextStyle(color: Colors.red),
                      //        ),
                      //        ]),
                      //         ]),
                      //       ),
                      //      ),
                      //        Container(
                      //          margin: const EdgeInsets.all(10),
                      //          decoration: BoxDecoration(
                      //               border: Border.all(
                      //                  color: const Color.fromARGB(255, 215, 221, 237)),
                      //              borderRadius: BorderRadius.circular(15),
                      //            ),
                      //           child: Column(children: [
                      //             Container(
                      //               child: Image.asset('assets/images/image1.png',
                      //                  height: 100, width: 100),
                      //             ),
                      //                const Text(
                      //                    """FS - Nike Air
//Max 270 React...""",
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //        fontSize: 12,
                      //      ),
                      //      ),
                      //     const SizedBox(
                      //       height: 8,
                      //     ),
                      //    Container(
                      //     margin: const EdgeInsets.only(left: 16),
                      //     child: Row(children: const [
                      //      Text(
                      //       "299,43",
                      //       style: TextStyle(
                      //          color: Colors.blue,
                      //          fontWeight: FontWeight.bold,
                      //            fontSize: 12,
                      //           ),
                      //         ),
                      //        SizedBox(
                      //          width: 73,
                      //         )
                      //      ]),
                      //    ),
                      //     const SizedBox(
                      //      height: 8,
                      //   ),
                      //  Row(
                      //     children: const [
                      //       Text(
                      //        "534,33",
                      //         style: TextStyle(
                      //            decoration: TextDecoration.lineThrough,
                      //             color: Colors.grey),
                      //       ),
                      //       SizedBox(
                      //          width: 8,
                      //        ),
                      //        Text(
                      //           "24% Off",
                      //           style: TextStyle(color: Colors.red),
                      //          ),
                      //        ],
                      //      ),
                      //     ]),
                      //  ),
                      //   Container(
                      //     margin: const EdgeInsets.all(10),
                      //    decoration: BoxDecoration(
                      //     border: Border.all(
                      //         color: const Color.fromARGB(225, 215, 221, 237)),
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      //   child: Column(children: [
                      //       Container(
                      //         margin: const EdgeInsets.only(left: 16),
                      //        child: Image.asset(
                      //         'assets/images/Woman Bag.png',
                      //        height: 100,
                      //        width: 100,
                      //        )),
                      //          const Text(
                      //              """FS - Nike Air
//Max 270 React...""",
                      //     style: const TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 12,
                      //    ),
                      //   ),
                      //   const SizedBox(
                      //     height: 8,
                      //    ),
                      //  Container(
                      //  margin: const EdgeInsets.only(left: 16),
                      //  child: Row(children: const [
                      //    Text(
                      //     "299,43",
                      //    style: TextStyle(
                      //      color: Colors.blue,
                      //      fontWeight: FontWeight.bold,
                      //       fontSize: 12,
                      //      ),
                      //    ),
                      //    SizedBox(
                      //     width: 73,
                      //     )
                      //   ]),
                      //   ),
                      //  const SizedBox(
                      //     height: 8,
                      //  ),
                      //   Row(
                      //   children: const [
                      //   Text(
                      //    "534,33",
                      //   style: TextStyle(
                      //      decoration: TextDecoration.lineThrough,
                      //      color: Colors.grey),
                      //   ),
                      //  SizedBox(
                      //    width: 8,
                      //   ),
                      //     Text(
                      //       "24% Off",
                      //      style: TextStyle(color: Colors.red),
                      //      ),
                      //   ],
                      //    ),
                      //  ]),
                      //    ),
                      //    ],
                      //   ),
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
