import 'package:flutter/material.dart';
import 'package:food_app/home_page/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _categoryImages = [
      'assets/images/slider-1.jpg',
      'assets/images/slider-2.jpg',
      'assets/images/slider-3.jpg',
      'assets/images/slider-2.jpg',
      'assets/images/slider-1.jpg',
    ];
    List _categoryName = [
      'Shrimp',
      'Noodles',
      'Burger',
      'Wrap',
      'SHrimp',
    ];
    List _productName = [
      'Original Fried Shrimp',
      'Spicy Chicken Noodles',
      'Fried Shrimp',
      'Chicken Noodles',
      'Original Fried Shrimp',
    ];
    List _productPrice = [
      6.9,
      7.9,
      8.9,
      9.9,
      2,
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // 1. Header
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ksecondaryColor,
                    child: Icon(
                      Icons.web_rounded,
                      color: kprimaryColor,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: kprimaryColor,
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/images/user.jpg"),
                    ),
                  )
                ],
              ),
            ),
            // 2. Location
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(-1),
                  leading: Icon(
                    Icons.location_on,
                    color: kprimaryColor,
                  ),
                  title: Text(
                    'Denpasar, IDN',
                    style: kHeading1,
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            // 3. Search Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                decoration: InputDecoration(
                    // contentPadding: const EdgeInsets.all(10),
                    fillColor: ksecondaryColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    hintText: "Search Your Food",
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
            // 4. Category Name Food Categories
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: RichText(
                text: TextSpan(style: kHeading2, children: [
                  const TextSpan(text: "Food "),
                  TextSpan(text: "Categories", style: kHeading1)
                ]),
              ),
            ),
            // 5. Category SLider
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Row(
                children: [
                  Chip(
                    padding: const EdgeInsets.all(8),
                    backgroundColor: kprimaryColor,
                    label: Text(
                      'All Food',
                      style: kcategoryname1,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Chip(
                              padding: const EdgeInsets.all(10),
                              backgroundColor: ksecondaryColor,
                              avatar: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage(_categoryImages[index]),
                              ),
                              label: Text(
                                _categoryName[index],
                                style: kcategoryname2,
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            // 6. Slider 1 Product Images
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: SizedBox(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 110,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                padding: EdgeInsets.only(left: 10),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 34,
                                      left: 0,
                                      child: Text(
                                        _productName[index],
                                        overflow: TextOverflow.ellipsis,
                                        style: kproductname,
                                      ),
                                    ),
                                    Positioned(
                                        top: 60,
                                        left: 0,
                                        child: Text(_categoryName[index])),
                                    Positioned(
                                      bottom: 0,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: ksecondaryColor,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: ksecondaryColor,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: ksecondaryColor,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: ksecondaryColor,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star_half_sharp,
                                            color: ksecondaryColor,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: kprimaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            // productImages border
                            Positioned(
                              top: 0,
                              left: 10,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundColor: kprimaryColor,
                                  child: CircleAvatar(
                                    radius: 67,
                                    backgroundImage:
                                        AssetImage(_categoryImages[index]),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: kwhiteCOlor,
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: kprimaryColor,
                                        fontSize: 17,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '\$ ${_productPrice[index]}')
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: _productPrice.length),
              ),
            ),
            // 7. Category Name Other Food
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(style: kHeading1, children: [
                      const TextSpan(text: "Other "),
                      TextSpan(text: "Foods", style: kHeading2)
                    ]),
                  ),
                  Text(
                    'See More >',
                    style: TextStyle(
                      color: kprimaryColor,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            // 8. Other Food Product Slider
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2.0,
                        child: Stack(
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(_categoryImages[index]),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: kprimaryColor,
                                radius: 30,
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        color: kprimaryColor,
                                        fontSize: 17,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '\$ ',
                                            style: TextStyle(
                                                color: ksecondaryColor,
                                                fontSize: 19)),
                                        TextSpan(
                                            text: '${_productPrice[index]}',
                                            style: TextStyle(
                                                color: kwhiteCOlor,
                                                fontSize: 19)),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: _productPrice.length),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: kprimaryColor,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.explore,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.bookmark,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.refresh,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.notifications_active,
            ),
          ),
        ],
      ),
    );
  }
}
