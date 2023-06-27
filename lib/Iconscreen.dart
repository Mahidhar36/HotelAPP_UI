import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class ButtonData {
  final IconData icon;
  final String label;

  ButtonData({required this.icon, required this.label});
}

class ButtonList extends StatefulWidget {
  const ButtonList({super.key});

  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  int selectedButtonIndex = -1;

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    List<ButtonData> buttonDataList = [
      ButtonData(icon: CommunityMaterialIcons.office_building_outline, label: 'Hotel'),
      ButtonData(icon: Icons.flight_outlined, label: 'flight'),
      ButtonData(icon: Icons.place_outlined, label: 'place'),
      ButtonData(icon: CommunityMaterialIcons.food_turkey,label: 'food'),

    ];
    List<String> icons=[
      "lib/assets/hotel.png",
      "lib/assets/flight-mode.png",
      "lib/assets/location.png",
      "lib/assets/food-tray.png"
    ];
    List<String> icons1=[
      "lib/assets/hotel(1).png",
      "lib/assets/flight-mode(1).png",
      "lib/assets/location(1).png",
      "lib/assets/food-cover.png"
    ];

    return SizedBox(
      height:120,

      width:MediaQuery.of(context).size.width,
      child: ListView.builder(
      itemCount: buttonDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ( context,index){
            ButtonData buttonData = buttonDataList[index];

            return Container(
              height:100,
              width:75,

              margin: EdgeInsets.all(10.0),
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(8),

          ),

              child: ElevatedButton(
                onPressed: () {
                  selectButton(index);
                },
                style: ElevatedButton.styleFrom(
                  elevation: selectedButtonIndex == index ? 7 : 0,
                  primary: (selectedButtonIndex == index )? Colors.lightBlue:Colors.white,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                     side: BorderSide(
                  color: selectedButtonIndex == index ? Colors.lightBlue : Colors.black12,
                    width: 1,
                  ),
                  )
                ),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(buttonData.icon,size: (selectedButtonIndex == index)? 30:24,color: (selectedButtonIndex == index )? Colors.white:Colors.black,),
                    Text(buttonData.label,style: TextStyle(fontSize: (selectedButtonIndex == index)?13:10,color: (selectedButtonIndex == index )? Colors.white:Colors.black,),),
                  ],
                ),
              ),
            );
          },

      ),
    );
  }
}
