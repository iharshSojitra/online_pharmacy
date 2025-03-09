import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int digit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.teal,
                        size: 35,
                      )),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.teal,
                        size: 35,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Image(
                image: AssetImage('assets/images/medicines.png'),
                height: 250,
                width: 250,
              )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 410,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Multi Vitamins",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "90 Pills",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("4.0"),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              InkResponse(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_circle_outline_outlined,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      digit++;
                                    });
                                  },
                                ),
                              ),
                              Text('${digit}'),
                              InkResponse(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (digit > 0) {
                                        digit--;
                                      }
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Product Detail",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Multivitamins are used to provide vitamin\nthat are not taken in through the det.\nMultivitamins are also used to treat vitamin\ndeficiencies caused by illness, pregnancy and\nmany other conditions",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$217",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "\$287",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(18)),
                            child: LikeButton(),
                          ),
                          Spacer(),
                          Container(
                            height: 60,
                            width: 265,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                ),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "Add to Basket",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                color: Colors.white,
              ))
          : IconButton(
              onPressed: () {
                setState(() {
                  likebutton_1 = !likebutton_1;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              )),
    );
  }
}
