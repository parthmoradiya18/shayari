import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/data.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class forpagen extends StatefulWidget {
  List shayrilist = [];
  int curind = 0;

  forpagen(this.shayrilist, this.curind);

  @override
  State<forpagen> createState() => _forpagenState();
}

class _forpagenState extends State<forpagen> {
//
// WidgetsToImageController to access widget
//
  WidgetsToImageController controller = WidgetsToImageController();
  Uint8List? bytes;

  Color back_clr = Colors.redAccent;
  bool temp = false;
  int cindex = 0;

  Color mytxtclr = Colors.white;
  String fontdata = "f1";
  String emojidata = "";
  double fontsize = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_permission();
    emojidata = mydata.emoji[widget.curind];
    // size = fontsize.toString();
  }

  get_permission() async {
    var status = await Permission.storage.status;

    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.storage,
      ].request();
      print(statuses[Permission.location]);
    }
  }

  @override
  Widget build(BuildContext context) {
    double totl_hight = MediaQuery.of(context).size.height;
    double status_bar = MediaQuery.of(context).padding.top;
    double app_bar = kToolbarHeight;
    double height = totl_hight - status_bar - app_bar;

    return Scaffold(
      appBar: AppBar(
        title: Text("the four"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: (temp == false) ? back_clr : null,
                      gradient: (temp == true)
                          ? LinearGradient(colors: [
                              mydata.colorLi[cindex],
                              mydata.colorLi[cindex + 1]
                            ])
                          : null,
                    ),
                    child: Text(
                      "${emojidata}\n${widget.shayrilist[widget.curind]}\n${emojidata}",
                      style: TextStyle(
                          fontSize: fontsize,
                          fontWeight: FontWeight.bold,
                          color: mytxtclr,
                          fontFamily: fontdata),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  color: Colors.brown,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                barrierColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: height,
                                    child: GridView.builder(
                                      itemCount: mydata.colorLi.length - 1,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10,
                                              crossAxisCount: 2),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            cindex = index;
                                            temp = true;
                                            setState(() {});
                                          },
                                          child: Container(
                                            child: Text(
                                              '${mydata.emoji[widget.curind]}\n${widget.shayrilist[widget.curind]}\n${mydata.emoji[widget.curind]}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                mydata.colorLi[index],
                                                mydata.colorLi[index + 1]
                                              ]),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("image/expand.png"),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              temp = true;
                              int r =
                                  Random().nextInt(mydata.colorLi.length - 1);
                              cindex = r;
                              setState(() {});
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("image/reload.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 100,
                                        width: double.infinity,
                                        child: GridView.builder(
                                          itemCount: mydata.colorLi.length,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 8,
                                                  mainAxisSpacing: 5,
                                                  crossAxisSpacing: 5),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                back_clr =
                                                    mydata.colorLi[index];
                                                setState(() {});
                                              },
                                              child: Container(
                                                color: mydata.colorLi[index],
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    "Background",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 100,
                                        width: double.infinity,
                                        child: GridView.builder(
                                          itemCount: mydata.colorLi.length,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 8),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                mytxtclr =
                                                    mydata.colorLi[index];
                                                setState(() {});
                                              },
                                              child: Container(
                                                color: mydata.colorLi[index],
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    "Text Color",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  bytes = await controller.capture();
                                  var path = await ExternalPath
                                          .getExternalStoragePublicDirectory(
                                              ExternalPath
                                                  .DIRECTORY_DOWNLOADS) +
                                      "/shayari";
                                  Directory dir = Directory(path);
                                  if (!await dir.exists()) {
                                    dir.create();
                                  }
                                  int r = Random().nextInt(10000);
                                  String imgs = "${r}.jpg";
                                  File f = File("${dir.path}/${imgs}");
                                  await f.writeAsBytes(bytes!);
                                  Share.shareXFiles([XFile("${f.path}")],
                                      text: 'Great picture');

                                  setState(() {});
                                },
                                child: Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    "Share",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            // (bytes != null)? Image.memory(width: 100,bytes!): Text("no image")
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 100,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                fontdata = mydata.font[index];
                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 70,
                                                height: 10,
                                                margin: EdgeInsets.all(10),
                                                alignment: Alignment.center,
                                                color: Colors.pink,
                                                child: Text(
                                                  "Font",
                                                  style: TextStyle(
                                                      fontFamily: fontdata,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            );
                                          },
                                          itemCount: mydata.font.length,
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    "Font",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                          height: 300,
                                          color: Colors.blueGrey,
                                          width: double.infinity,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 6,
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: ListView.separated(
                                                      itemBuilder:
                                                          (context, index) {
                                                        return InkWell(
                                                          onTap: () {
                                                            emojidata = mydata
                                                                .emoji[index];
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "${mydata.emoji[index]}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20)),
                                                          ),
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return Divider(
                                                            color: Colors.white,
                                                            height: 50,
                                                            thickness: 2);
                                                      },
                                                      itemCount:
                                                          mydata.emoji.length),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  alignment: Alignment.topRight,
                                                  color: Colors.blueGrey,
                                                  height: double.infinity,
                                                  child: InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Icon(
                                                        Icons.close,
                                                        color: Colors.red,
                                                        size: 40,
                                                      )),
                                                ),
                                              )
                                            ],
                                          ));
                                    },
                                  );
                                },
                                child: Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    "Emoji",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    barrierColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                                setState1) {
                                          return Container(
                                            height: 100,
                                            width: double.infinity,
                                            child: Slider(
                                              min: 5,
                                              max: 50,
                                              value: fontsize,
                                              onChanged: (double value) {
                                                fontsize = value;
                                                setState(() {
                                                  setState1(() {});
                                                });
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    "Text Size",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
