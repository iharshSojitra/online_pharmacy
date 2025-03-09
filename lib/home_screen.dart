import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int select = -1;
  List name1 = [
    "Consultation",
    "Medicines",
    "Lab Tests",
    "Helth",
  ];
  List image1 = [
    'assets/images/consultation.png',
    'assets/images/medicines.png',
    'assets/images/lab_tests.png',
    'assets/images/helth.png',
  ];
  List image2 = [
    'assets/images/multi_vitamins.png',
    'assets/images/thayrosafe.png'
  ];
  List name2 = [
    "Multi Vitamins",
    "thayrosafe",
  ];
  List name3 = [
    "90 Pills",
    "180 Pills",
  ];
  List name4 = [
    "\$217",
    "\$342",
  ];
  List name5 = [
    "\$287",
    "\$392",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      //color: Colors.grey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.sort,
                            color: Colors.teal,
                            size: 40,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Online\nPharmacy",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -50,
                      top: -80,
                      child: Image.asset(
                        "assets/images/pills.png",
                        height: 230,
                        width: 230,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25)),
                            prefixIcon: Icon(Icons.search),
                            fillColor: Colors.orange.shade200,
                            filled: true,
                            hintText: "Search for drugs,doctors,etc..."),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Shop by category",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 107,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    select = index;
                                  });
                                },
                                child: Container(
                                  height: 85,
                                  width: 85,
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: select == index
                                        ? Colors.redAccent
                                        : Colors.orange.shade200,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Image(
                                      image: AssetImage(image1[index]),
                                      height: 55,
                                      width: 55,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(name1[index]),
                            ],
                          );
                        },
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Popular Products",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      size: 28,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 270,
                        width: 210,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                like(),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            Center(
                              child: Image(
                                image: AssetImage(image2[index]),
                                height: 100,
                                width: 100,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name2[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    name3[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        name4[index],
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        name5[index],
                                        style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  bool like1 = true;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: like1 == true
          ? IconButton(
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.teal,
              ),
              onPressed: () {
                setState(() {
                  like1 = !like1;
                });
              },
            )
          : IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.teal,
              ),
              onPressed: () {
                setState(() {
                  like1 = !like1;
                });
              },
            ),
    );
  }
}
