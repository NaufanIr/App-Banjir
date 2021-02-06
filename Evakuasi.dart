import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Evakuasi extends StatefulWidget {
  @override
  _EvakuasiState createState() => _EvakuasiState();
}

class _EvakuasiState extends State<Evakuasi> {
  ChewieController _chewieController;
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.asset('video/Banjir.mp4')
        ..setVolume(0.0),
      showControlsOnInitialize: false,
      aspectRatio: 15 / 9,
      autoInitialize: true,
      autoPlay: false,
      looping: true,
    );
  }

  @override
  void dispose() {
    _chewieController.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  List<String> descEvakuasi = [
    "Amankan tempat tiggal kamu sebelum kamu mulai mengungsi ke tempat yang lebih aman,  dan jangan panik!",
    "Jika kediaman kamu lebih dari satu lantai, pindahkan peralatan elektronik dan benda-benda berharga ke lantai atas.",
    "Matikan sumber aliran listrik untuk menghindari terjadinya konslet.",
    "Jangan menyentuh alat elektronik saat tubuh sedang basah atau berdiri di dalam air.",
    "Sediakan kantong darurat yang berisikan makanan instan dan obat-obatan sebelum kamu mulai mengungsi ketempat yang lebih aman.",
    "Jangan berenang di air banjir, demi mengantisipasi agar kamu tidak terseret arus banjir dan terkena penyakit.",
    "Hindari menerjang banjir dengan kendaraan. Hal tersebut dapat menyebabkan kerusakan pada kendaraan kamu."
  ];

  // Future<void> initializePlayer() async {
  //   _videoPlayerController = VideoPlayerController.asset('video/Banjir.mp4');
  //   await _videoPlayerController.initialize();
  //   _chewieController = ChewieController(
  //       videoPlayerController: _videoPlayerController,
  //       //aspectRatio: 16 / 9,
  //       //autoInitialize: true,
  //       autoPlay: true,
  //       looping: true,
  //   );
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        toolbarHeight: 65,
        title: Text('EVAKUASI',
            style: TextStyle(
                color: Colors.blue,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700)),
        backgroundColor: Colors.white,
      ),
      //BACKGROUND
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/Evakuasi/bgEvakuasi.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            //VIDEO
            Flexible(
              flex: 19,
              child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      height: 233,
                      width: MediaQuery.of(context).size.width,
                      child: _chewieController
                                  .videoPlayerController.initialize !=
                              null
                          ? Chewie(controller: _chewieController)
                          : Container(
                              height: 240,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.black87,
                              child:
                                  Center(child: CircularProgressIndicator())),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 5,
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //KONTEN
            Flexible(
                flex: 40,
                child: CustomScrollView(
                  slivers: [
                    //PANDUAN EVAKUASI
                    SliverToBoxAdapter(
                      child: Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    ),
                    //PEMISAH
                    SliverToBoxAdapter(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, left: 5, bottom: 5),
                        child: Text("Posko Evakuasi",
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    //POSKO EVAKUASI
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, i) {
                        return GestureDetector(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 5, right: 5, bottom: 10),
                            padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[400].withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                //GAMBAR POSKO
                                SvgPicture.asset(
                                  'Images/Evakuasi/camp.svg',
                                  height: 45,
                                  width: 45,
                                ),
                                //PEMISAH
                                SizedBox(
                                  width: 20,
                                ),
                                //DETAIL
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //HEADER
                                      Text(
                                        "Posko Banjir SDTA Jakarta Timur",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 11.5,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      //NO.TELP
                                      Text(
                                        "700 m - Telepon : (021) 4800976",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      //DETAILS
                                      Text(
                                        "Jalan Sentral Timur, RT.11/RW.8, Pulo Gebang, Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13940",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 10,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //PEMISAH
                                Container(
                                  height: 45,
                                  width: 1.3,
                                  color: Colors.grey,
                                  margin: EdgeInsets.only(left: 15),
                                ),
                                //BUTTON ARROW
                                IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.grey,
                                      size: 35,
                                    ),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                          onTap: () {},
                        );
                      }, childCount: 2),
                    ),
                    //MARGIN TO NAVBAR
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 70,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
