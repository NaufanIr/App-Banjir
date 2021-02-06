import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.white,
        title: Container(
          height: 35,
          width: 133,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 35,
                child: Image(
                  image: AssetImage(
                    "Images/Home/LogoApp.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Text("BANJIR",
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        actions: [
          Container(
            height: 20,
            width: 97,
            //color: Colors.amber,
            child: Center(
              child: Text(
                "Jl.BKT I, RT10/RW11, Pondok... ",
                style: TextStyle(fontSize: 10, color: Colors.black),
                textAlign: TextAlign.end,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.place,
                color: Colors.redAccent,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //LAYOUT MAPS
            Stack(
              children: [
                //GOOGLE MAPS
                Container(
                  height: MediaQuery.of(context).size.height / 3.3,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blueAccent,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-6.2198284, 106.9456426),
                      zoom: 15,
                    ),
                  ),
                ),
                //SEARCH BAR FOR MAPS
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.black45,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    cursorColor: Colors.white10,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                        hintText: "Cari Lokasi ...",
                        hintStyle: TextStyle(color: Colors.white60),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search, color: Colors.white),
                          onPressed: () {},
                        )),
                  ),
                )
              ],
            ),

            //STATUS BAR
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 5,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    padding: EdgeInsets.only(right: 10, left: 10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("STATUS : "),
                              Text(
                                "SIAGA",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.orangeAccent),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("CURAH HUJAN : "),
                              Text(
                                "TINGGI",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.redAccent),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 5,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
