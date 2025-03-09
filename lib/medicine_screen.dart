import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  List imagess = [
    'assets/images/multi_vitamins.png',
    'assets/images/thayrosafe.png',
    'assets/images/medicines.png',
    'assets/images/lab_tests.png'
  ];
  List name1 = [
    "Multi Vitamins",
    "Thayrosafe",
    "Omega 3",
    "Sore Capsule",
  ];
  List name2 = [
    "90 Pills",
    "180 Pills",
    "132 Pills",
    "60 Pills",
  ];
  List name3 = [
    "\$217",
    "\$342",
    "\$165",
    "\$135",
  ];
  List name4 = [
    "\$287",
    "\$392",
    "\$185",
    "\$165",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    size: 30,
                    color: Colors.teal,
                  ),
                  Spacer(),
                  Text(
                    "Medicines",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: Colors.teal,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                height: 10,
              ),
              Column(
                children: List.generate(
                    4,
                    (index) => Container(
                          height: 130,
                          width: double.infinity,
                          margin:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 1),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage(imagess[index]),
                                height: 95,
                                width: 95,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    name1[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    name2[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        name3[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        name4[index],
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  LikeButton(),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.redAccent,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool likebutton_1 = true;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: likebutton_1 == true
          ? IconButton(
              onPressed: () {
                setState(() {
                  likebutton_1 = !likebutton_1;
                });
              },
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.teal,
              ))
          : IconButton(
              onPressed: () {
                setState(() {
                  likebutton_1 = !likebutton_1;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.teal,
              )),
    );
  }
}
