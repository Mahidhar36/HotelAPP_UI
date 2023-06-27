import 'package:app/hotelScreeen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hotdelas.dart';

class HotdealItem extends StatefulWidget {
  final Hotdeals hotdeal;

  const HotdealItem({Key? key, required this.hotdeal}) : super(key: key);

  @override
  State<HotdealItem> createState() => _HotdealItemState();
}

class _HotdealItemState extends State<HotdealItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HotelScreen(
                  hotdeal: widget.hotdeal,
                )));
      },
      child: Container(
          width: 340,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(widget.hotdeal.HotelImage), fit: BoxFit.fill),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 40,
              width: 80,
              margin: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "25% OFF",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const SizedBox(height: 40, width: 340),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(widget.hotdeal.HotelName,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(width: 200),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 13),
                      Text(
                        widget.hotdeal.HotelRating,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(children: [
                const Icon(
                  CupertinoIcons.placemark,
                  color: Colors.white,
                  size: 16,
                ),
                const SizedBox(width: 5),
                Text(widget.hotdeal.HotelLocation,
                    style:
                        const TextStyle(color: Colors.white70, fontSize: 12)),
                const SizedBox(width: 175),
                Text(widget.hotdeal.PriceperNight,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                const Text("/night",
                    style: TextStyle(color: Colors.white70, fontSize: 12))
              ]),
            )
          ])),
    );
  }
}
