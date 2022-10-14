import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Carouselitem.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> list = [
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.lock,
              ),
              label: "Cart",
            ),
          ],
        ),
        //width: MediaQuery.of(context).size.width,
        //resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
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
                      const Icon(Icons.notifications),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CarouselWithDotsPage(imgList: list),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("category",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "more category",
                            ))
                      ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    //color: Colors.black,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 30,
                            ),
                            child: CircleAvatar(
                              radius: 31,
                              child: CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.favorite,
                                ),
                                backgroundColor: Colors.white,
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
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 215, 221, 237)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(children: [
                            Image.asset(
                              'assets/images/image1.png',
                              height: 100,
                              width: 100,
                            ),
                            const Text(
                              """FS - Nike Air 
Max 270 React...""",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(children: const [
                                Text(
                                  "299,43",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 73,
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(children: const [
                              Text(
                                "534,33",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "24% Off",
                                style: TextStyle(color: Colors.red),
                              ),
                            ]),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 215, 221, 237)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(children: [
                            Container(
                              child: Image.asset('assets/images/image1.png',
                                  height: 100, width: 100),
                            ),
                            const Text(
                              """FS - Nike Air 
Max 270 React...""",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(children: const [
                                Text(
                                  "299,43",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 73,
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "534,33",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(225, 215, 221, 237)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(children: [
                            Container(
                                margin: const EdgeInsets.only(left: 16),
                                child: Image.asset(
                                  'assets/images/Woman Bag.png',
                                  height: 100,
                                  width: 100,
                                )),
                            const Text(
                              """FS - Nike Air 
Max 270 React...""",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(children: const [
                                Text(
                                  "299,43",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 73,
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "534,33",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
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
                    margin: const EdgeInsets.only(left: 16),
                    height: 238,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 215, 221, 237)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        "assets/images/image1.png",
                                        height: 100,
                                        width: 100)),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  """FS - Nike Air 
Max 270 React...""",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  child: Row(children: const [
                                    Text(
                                      "299,43",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 73,
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "534,33",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "24% Off",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 215, 221, 237)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        "assets/images/image1.png",
                                        height: 100,
                                        width: 100)),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  """FS - Nike Air 
Max 270 React...""",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  child: Row(children: const [
                                    Text(
                                      "299,43",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 73,
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "534,33",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "24% Off",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 215, 221, 237)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        "assets/images/image1.png",
                                        height: 100,
                                        width: 100)),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  """FS - Nike Air 
Max 270 React...""",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  child: Row(children: const [
                                    Text(
                                      "299,43",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 73,
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "534,33",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "24% Off",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 215, 221, 237)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        "assets/images/image1.png",
                                        height: 100,
                                        width: 100)),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  """FS - Nike Air 
Max 270 React...""",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  child: Row(children: const [
                                    Text(
                                      "299,43",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 73,
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "534,33",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "24% Off",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 215, 221, 237)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(children: [
                            Container(
                                margin: const EdgeInsets.all(5),
                                child: Image.asset("assets/images/image1.png",
                                    height: 100, width: 100)),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              """FS - Nike Air 
Max 270 React...""",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: Row(children: const [
                            Text(
                              "299,43",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 73,
                            )
                          ]),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: const [
                            Text(
                              "534,33",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "24% Off",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 206,
                    color: Colors.deepPurpleAccent,
                    child: Stack(children: [
                      Container(
                        color: Colors.blue,
                        child: Image.asset('assets/images/image1.png'),
                      ),
                      Text("We Recommended"),
                      // Container(color: Colors.red)
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 700,
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      padding: const EdgeInsets.all(4.0),
                      childAspectRatio: 1 / 1.9,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 215, 221, 237)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(children: [
                            Container(
                              child: Image.asset(
                                'assets/images/image1.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            const Text(
                              """FS - Nike Air 
Max 270 React...""",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star_half,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(children: const [
                                Text(
                                  "\$299,43",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 73,
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(children: const [
                              Text(
                                "534,33",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "24% Off",
                                style: TextStyle(color: Colors.red),
                              ),
                            ]),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 215, 221, 237)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(children: [
                            Container(
                                margin: const EdgeInsets.all(5),
                                child: Image.asset("assets/images/image1.png")),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              """FS - Nike Air 
Max 270 React...""",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star_half,
                                  size: 15.0,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Row(children: const [
                                Text(
                                  "299,43",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  width: 73,
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "534,33",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "24% Off",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            )
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 215, 221, 237)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        "assets/images/image1.png")),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  """FS - Nike Air 
Max 270 React...""",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 16),
                                  child: Row(children: const [
                                    Text(
                                      "299,43",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 73,
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "534,33",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "24% Off",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 215, 221, 237)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Image.asset(
                                        "assets/images/image1.png")),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  """FS - Nike Air 
Max 270 React...""",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      size: 15.0,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Row(children: const [
                                    Text(
                                      "299,43",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 73,
                                    )
                                  ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "534,33",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "24% Off",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ]),
          ),
        )));
  }

  BuildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: const WormEffect(),
      );
}
