import 'package:flutter/material.dart';
import 'package:vgts_assessment/model/test_model.dart';
import 'package:vgts_assessment/services/http.dart';
import 'package:vgts_assessment/widgets/card_widget.dart';
import 'package:vgts_assessment/widgets/routeCard_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  test routes = test();

  fetchRoute()async{
    var fetch = await RouteRepository.fetchRoutes();
    print('fetched data print value ${routes}');
    setState(() {
      routes= fetch;
    });
    print('fetched route ${routes.routes?[0].bounds?.northeast?.lat}');
  }

  @override
  void initState() {
    fetchRoute();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   if (routes.routes == null) {
     return Center(child: CircularProgressIndicator(color: Colors.blue.shade500,));
   } else {
     return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 320,
                    margin: const EdgeInsets.only(bottom: 75.0),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    color: Colors.blue.shade500,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment : MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('\$22,650.51',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('Account Value',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 53),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    width: 115,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('0.97%',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w700),),
                                        Icon(Icons.arrow_drop_up,color: Colors.green.shade300,)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8,),
                                  const Text('Since last purchase',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300,color: Colors.white),)
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(color: Colors.white,height: 50,thickness: 0.7,),
                        Row(
                          mainAxisAlignment : MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Cash Balance',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text('\$384.87',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                                      Icon(Icons.warning_rounded,color: Colors.white,size: 20,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Account Value',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                                  SizedBox(height: 5,),
                                  Text('\$22,265.24',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 245,right: 0,left: 0,bottom: 0,
                    child:
                    CardWidget(type: 'Gold',circleColor:Colors.yellow.shade100 ,iconColor:Colors.yellowAccent.shade700 ,titleColor:Colors.yellowAccent.shade700,ozValue: '11.050 oz',price: '\$22,265.24',percent: '0.97%',newTitle: 'Metal Price',newPrice: '\$1,999.00',change: 'Change',profit: '-0.4',)
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              CardWidget(type: 'Silver',circleColor:Colors.grey.shade300 ,iconColor:Colors.grey.shade700 ,titleColor:Colors.grey.shade700,ozValue: '0.000 oz',price: '\$0.00',percent: '0.0%',newTitle: 'Metal Price',newPrice: '\$26.20',change: 'Change',profit: '-0.15',),
              const SizedBox(height: 20,),
              CardWidget(type: 'Platinum',circleColor: Colors.purple.shade50 ,iconColor: Colors.purple.shade400,titleColor:Colors.purple.shade400,ozValue: '0.000 oz',price: '\$0.00',percent: '0.0%',newTitle: 'Metal Price',newPrice: '\$1,102.30',change: 'Change',profit: '-0.08',),
              const Padding(
                padding: EdgeInsets.only(left: 10,top: 30),
                child: Align(alignment:Alignment.centerLeft,child: Text('Do More With OneGold',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10,top: 20,bottom: 10),
                child: Align(alignment:Alignment.centerLeft,child: Text('Bounds Data',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              RouteCard(title1: 'NorthEast Latitude',value1: routes.routes![0].bounds!.northeast!.lat.toString(),title2: 'NorthEast Longitude',value2: routes.routes![0].bounds!.northeast!.lng.toString(),
              title3: 'Southwest Latitude',value3: routes.routes![0].bounds!.southwest!.lat.toString(),
                title4: 'Southwest Longitude',value4:routes.routes![0].bounds!.northeast!.lng.toString() ,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10,top: 20,bottom: 10),
                child: Align(alignment:Alignment.centerLeft,child: Text('Legs Data',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              RouteCard(title1: 'Total Distance',value1: routes.routes![0].legs![0].distance!.text.toString(),title2: 'Total Duration',value2: routes.routes![0].legs![0].duration!.text.toString(),
                title3: 'Start Location',value3: routes.routes![0].legs![0].startLocation!.lat.toString(),
                title4: 'End Location',value4:routes.routes![0].legs![0].endLocation!.lat.toString() ,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10,top: 20),
                child: Align(alignment:Alignment.centerLeft,child: Text('Legs Steps',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: routes.routes?[0].legs?[0].steps?.length,
                  itemBuilder: (BuildContext context, int index) {
                    var steps = routes.routes![0].legs![0].steps?[index];
                  return RouteCard(title1: 'Distance',value1: steps!.distance!.text.toString(),title2: 'Duration',value2: steps!.duration!.text.toString(),
                    title3: 'Travel Mode',value3: steps.travelMode.toString(),
                    title4: 'Start Location',value4:steps.startLocation!.lat.toString() ,) ;
                },),
              )
            ],
          ),
        ),
      ),
    );
   }
  }
}