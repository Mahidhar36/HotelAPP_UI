import 'package:app/Iconscreen.dart';
import 'package:app/modals/hotdelas.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'modals/Iconsreen1.dart';

class HotelScreen extends StatefulWidget {
  final Hotdeals hotdeal;

  const HotelScreen({Key? key, required this.hotdeal}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  String text =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
  bool readmore = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 230,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(widget.hotdeal.HotelImage),
                fit: BoxFit.fill,
              )),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: const CircleBorder()),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  Row(children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          backgroundColor: Colors.white,
                          shape: const CircleBorder()),
                      child: const Icon(
                        Icons.share,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          backgroundColor: Colors.white,
                          shape: const CircleBorder()),
                      child: const Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ])
                ]),
          ),
        ),
        Container(
            height: size.height - 190,
            margin: const EdgeInsets.only(top: 200),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "BaLi Motel",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const Text("Vung Tau",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.place_outlined,
                        size: 20,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.hotdeal.HotelLocation,
                        style: const TextStyle(
                            color: Colors.black87, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(
                      widget.hotdeal.HotelRating,
                      style: const TextStyle(color: Colors.black),
                    ),
                    const Text("(6.8K review)",
                        style: TextStyle(color: Colors.grey)),
                    const SizedBox(width: 100),
                    Text(
                      widget.hotdeal.PriceperNight,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "/night",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 3,
                    color: Colors.grey,
                    endIndent: 3,
                    indent: 3,
                  ),
                  Container(
                    height: size.height - 381,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            ReadMoreText(
                              text,
                              trimCollapsedText: "Read More",
                              trimExpandedText: "..Read Less",
                              trimLength: 175,
                              style: TextStyle(color: Colors.black),
                              colorClickableText: Colors.orange,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "What we offer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black),
                            ),
                            Row(children: [ButtonList1()]),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Hosted by",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 50,
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "lib/assets/face1.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Harleen Smith",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          widget.hotdeal.HotelRating,
                                          style: const TextStyle(
                                              color: Colors.black),
                                        ),
                                        const Text("(1.4K review)",
                                            style:
                                                TextStyle(color: Colors.grey)),
                                      ]),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 75,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      minimumSize: const Size(50, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  child: Container(
                                    height: 45,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "lib/assets/message.png"))),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Center(

                              child: ElevatedButton(

                                onPressed: () {},

                                child:Text("Book Now",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                               style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                               minimumSize: Size(300, 60)
                               )
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
