import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> descEvakuasi = [
    "Amankan tempat tiggal kamu sebelum kamu mulai mengungsi ke tempat yang lebih aman,  dan jangan panik!",
    "Jika kediaman kamu lebih dari satu lantai, pindahkan peralatan elektronik dan benda-benda berharga ke lantai atas.",
    "Matikan sumber aliran listrik untuk menghindari terjadinya konslet.",
    "Jangan menyentuh alat elektronik saat tubuh sedang basah atau berdiri di dalam air.",
    "Sediakan kantong darurat yang berisikan makanan instan dan obat-obatan sebelum kamu mulai mengungsi ketempat yang lebih aman.",
    "Jangan berenang di air banjir, demi mengantisipasi agar kamu tidak terseret arus banjir dan terkena penyakit.",
    "Hindari menerjang banjir dengan kendaraan. Hal tersebut dapat menyebabkan kerusakan pada kendaraan kamu."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mxakmxakmak"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            //PANDUAN EVAKUASI
            Container(
              margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Panduan Evakuasi",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: 480,
                    decoration: BoxDecoration(
                        color: Colors.grey[400].withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //1.SHIELD
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/shield.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[0].toUpperCase(),
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                        //2.TANGGA
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/stairs.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[1].toUpperCase(),
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                        //3.LISTRIK
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/electricity.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[2].toUpperCase(),
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                        //JANGAN SENTUH
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/dontTouch.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[3].toUpperCase(),
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                        //KANTONG MEDIS
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/bag.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 27,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[4].toUpperCase(),
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                        //JANGAN BERENANG
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/dontSwim.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[5].toUpperCase(),
                                  maxLines: 5,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                        //MOBIL
                        Row(
                          children: [
                            SvgPicture.asset(
                              'Images/Evakuasi/car.svg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                                  descEvakuasi[6].toUpperCase(),
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10.5,
                                    color: Colors.black54,
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ])),
          SliverToBoxAdapter(
            child: SizedBox(height: 30,),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index){
              return Container(
                margin: EdgeInsets.all(5),
                height: 200,
                color: Colors.amber,
                child: Text("TEST ${index+1}"),
              );},
              childCount: 10
            ),
          ),
        ],
      ),
    );
  }
}
