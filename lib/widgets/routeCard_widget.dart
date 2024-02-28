import 'package:flutter/material.dart';

class RouteCard extends StatelessWidget {
  String? title1;
  String? value1;
  String? title2;
  String? value2;
  String? title3;
  String? value3;
  String? title4;
  String? value4;
  RouteCard({this.title1,this.value2,this.title2,this.title3,this.title4,this.value1,this.value3,this.value4,super.key});

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
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title1!,style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),),
                        const SizedBox(height: 5,),
                        Text(value1!,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(title2!,style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text(value2!,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),)
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
                  Text(title3!, style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text(value3!,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(title4!, style: TextStyle(fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text(value4!,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
