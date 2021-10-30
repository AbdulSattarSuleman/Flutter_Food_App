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
              padding: const EdgeInsets.all(20),
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
              padding: const EdgeInsets.all(20),
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
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 100,
                        child: Stack(
                          children: [
                            // productImages border
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: kprimaryColor,
                              child: CircleAvatar(
                                radius: 67,
                                backgroundImage: AssetImage(_categoryImages[0]),
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
                                        TextSpan(text: '${_productPrice[0]}')
                                      ]),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: kprimaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
