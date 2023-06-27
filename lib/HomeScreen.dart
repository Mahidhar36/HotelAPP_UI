import 'package:app/Iconscreen.dart';
import 'package:app/modals/HotelItem.dart';
import 'package:app/modals/hotdelaitem.dart';
import 'package:flutter/material.dart';
import 'modals/hotdelas.dart';
import 'modals/itemmodal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Hotel> hotels = [
      Hotel(
          HotelImage: "lib/assets/hotel1.jpg",
          HotelName: "Santorini",
          HotelLocation: 'Indonesia',
          PriceperNight: "\$480",
          HotelRating: "4.9"),
      Hotel(
          HotelImage: "lib/assets/hotel2.jpg",
          HotelName: "Hotel Royal",
          HotelLocation: 'Spain',
          PriceperNight: "\$280",
          HotelRating: "4.8"),
      Hotel(
          HotelImage: "lib/assets/hotel3.jpg",
          HotelName: "Grand",
          HotelLocation: 'India',
          PriceperNight: "\$350",
          HotelRating: "4.6"),
      Hotel(
          HotelImage: "lib/assets/hotel4.jpg",
          HotelName: "Purgatory",
          HotelLocation: 'Japan',
          PriceperNight: "\$430",
          HotelRating: "4.7"),
    ];
    List<Hotdeals> hotdeals = [
      Hotdeals(
          HotelImage: "lib/assets/hotel1.jpg",
          HotelName: "Santorini",
          HotelLocation: 'Indonesia',
          PriceperNight: "\$480",
          HotelRating: "4.9"),
      Hotdeals(
          HotelImage: "lib/assets/hotel2.jpg",
          HotelName: "Hotel Royal",
          HotelLocation: 'Spain',
          PriceperNight: "\$280",
          HotelRating: "4.8"),
      Hotdeals(
          HotelImage: "lib/assets/hotel3.jpg",
          HotelName: "Grand",
          HotelLocation: 'India',
          PriceperNight: "\$350",
          HotelRating: "4.6"),
      Hotdeals(
          HotelImage: "lib/assets/hotel4.jpg",
          HotelName: "Purgatory",
          HotelLocation: 'Japan',
          PriceperNight: "\$430",
          HotelRating: "4.7"),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Where you",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "wanna go?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ButtonList(),
            Container(
                margin: const EdgeInsets.only(top: 10),
                height: 290,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Popular Hotels",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 5),
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 15),
                            ),
                          )
                        ]),
                    Container(
                      height: 260,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: hotels.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final Hotel hotel = hotels[index];
                          return HotelItem(hotel: hotel);
                        },
                      ),
                    ),
                  ],
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Hot Deals",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 180,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.only(top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotdeals.length,
                      itemBuilder: (context, index) {
                        final Hotdeals hotdeal = hotdeals[index];
                        return HotdealItem(hotdeal: hotdeal);
                      }),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
