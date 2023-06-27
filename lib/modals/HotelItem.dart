import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'itemmodal.dart';

class HotelItem extends StatefulWidget {
  final Hotel hotel;
  const HotelItem( {Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height:250,
      width:160,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        image: DecorationImage(
          image: AssetImage(widget.hotel.HotelImage),
          fit: BoxFit.fill
        )
      ),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(widget.hotel.HotelName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,top: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
               const  Icon(CupertinoIcons.placemark ,color: Colors.white70,size: 18,),
               const SizedBox(width:5),
                Text(widget.hotel.HotelLocation,style: TextStyle(color: Colors.white70,fontSize: 15),)
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:10),
            child: Row(
              children: [
                Text(widget.hotel.PriceperNight,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                const Text("/night",style: TextStyle(color: Colors.white,fontSize: 14)),
                const SizedBox(width:30),

                   Row(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children:[
                      const Icon(Icons.star,size: 15,color: Colors.orange,),
                      Text(widget.hotel.HotelRating,style: TextStyle(color: Colors.white,fontSize: 13),)
                    ]
                  ),

              ],
            ),
          )
        ]
      )
    );
  }
}
