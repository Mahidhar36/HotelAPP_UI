import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ButtonData {
  final IconData icon;
  final String label;

  ButtonData({required this.icon, required this.label});
}

class ButtonList1 extends StatefulWidget {
  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList1> {
  int selectedButtonIndex = -1;

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    List<ButtonData> buttonDataList = [
      ButtonData(icon: Ionicons.bed, label: 'Hotel'),
      ButtonData(icon: Icons.dinner_dining_outlined, label: 'flight'),
      ButtonData(icon: Icons.favorite, label: 'Favori'),
      ButtonData(icon: Icons.settings, label: 'food'),

    ];
    List<String> images=["lib/assets/bedimage.jpg","lib/assets/food-delivery.png","lib/assets/bathtub.png","lib/assets/air-conditioner.png"];

    return SizedBox(
      height:120,

      width:320,
      child: ListView.builder(
        itemCount: buttonDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ( context,index){
          ButtonData buttonData = buttonDataList[index];

          return Container(
            height:50,
            width:65,

            margin: EdgeInsets.all(9.0),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(8),

            ),

            child: ElevatedButton(
              onPressed: () {
                selectButton(index);
              },
              style: ElevatedButton.styleFrom(
                  elevation: selectedButtonIndex == index ? 5 : 0,
                  primary: Colors.white,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color:  Colors.black12,
                      width: 1,
                    ),
                  )
              ),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 20,width:30,decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index])
                    )
                  ),),
                  Text(buttonData.label,style: TextStyle(fontSize: (selectedButtonIndex == index)?13:10,color: Colors.black),),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
