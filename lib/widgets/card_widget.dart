import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String? type;
  String? ozValue;
  String? percent;
  String? price;
  String? newPrice;
  String? newTitle;
  String? change;
  String? profit;
  Color? titleColor;
  Color? circleColor;
  Color? iconColor;
  CardWidget({this.type,this.circleColor,this.iconColor,this.titleColor,this.price,this.change,this.newPrice,this.newTitle,this.ozValue,this.percent,this.profit,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            const BoxShadow(spreadRadius: 0.5,color: Colors.grey,blurRadius: 1)
          ]
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: circleColor,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.cabin,color: iconColor,size: 25,),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(type!,style: TextStyle(fontSize: 17,color: titleColor,fontWeight: FontWeight.w500),),
                        const SizedBox(height: 5,),
                        Text(ozValue!,style: const TextStyle(fontSize: 12,color: Colors.grey),)
                      ],
                    ),
                  ],
                ),
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(price!,style: const TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                  const SizedBox(height: 5,),
                  Text(percent!,style: const TextStyle(fontSize: 12,color: Colors.grey),)
                ],
              ),
            ],
          ),
          const Divider(color: Colors.grey,height: 20,thickness: 0.3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(newTitle!, style: const TextStyle(fontSize: 12,color: Colors.grey),),
                  const SizedBox(height: 5,),
                  Text(newPrice!,style: const TextStyle(fontSize: 15,color: Colors.black,),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(change!, style: const TextStyle(fontSize: 12,color: Colors.grey),),
                  const SizedBox(height: 5,),
                  Text(profit!,style: const TextStyle(fontSize: 15,color: Colors.red,),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
