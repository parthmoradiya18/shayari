import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/data.dart';
import 'package:shayari/fourpagen.dart';

class thirdpage extends StatefulWidget {
  List shayrilist;
  int curind;

  thirdpage(this.shayrilist, this.curind);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  PageController? controller;

  @override
  void initState() {
    controller = PageController(initialPage: widget.curind);
  }

  bool temp = false;
  int clrided = 0;
  Color cl = Colors.pink;
  String emoj = "";

  @override
  Widget build(BuildContext context) {
    double all_scr = MediaQuery.of(context).size.height;
    double tit_scr = MediaQuery.of(context).padding.top;
    double app_bar = kTextTabBarHeight;
    double height = all_scr - tit_scr - app_bar;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("shayri app"),
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white),
        actions: [
          InkWell(
              onTap: () {
                Share.share("${widget.shayrilist[widget.curind]}",
                    subject: 'Look what I made!');
                setState(() {});
              },
              child: Icon(Icons.share, size: 30)),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text("Settings")),
                    PopupMenuItem(child: Text("Rate Us")),
                    PopupMenuItem(child: Text("Share")),
                    PopupMenuItem(child: Text("More App1")),
                    PopupMenuItem(child: Text("More App2")),
                  ])
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (contex) {
                      return Container(
                        color: Colors.blue,
                        height: height,
                        child: GridView.builder(
                          itemCount: 15,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                temp = true;
                                clrided = index;
                                Navigator.pop(context);
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
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
                                    mydata.colorLi[index + 1],
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
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("image/expand.png"))),
                ),
              ),
              Container(
                height: 20,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  "${widget.curind + 1}/${widget.shayrilist.length}",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
              InkWell(
                onTap: () {
                  int r = Random().nextInt(mydata.colorLi.length - 1);

                  clrided = r;
                  temp = true;
                  setState(() {});
                },
                child: Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("image/reload.png"))),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 400,
                width: double.infinity,
                child: PageView.builder(
                  itemCount: widget.shayrilist.length,
                  controller: controller,
                  onPageChanged: (next) {
                    widget.curind = next;
                    setState(() {});
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: (temp == false) ? cl : null,
                          gradient: (temp == true)
                              ? LinearGradient(colors: [
                                  mydata.colorLi[clrided],
                                  mydata.colorLi[clrided + 1]
                                ])
                              : null),
                      child: Text(
                        "${widget.shayrilist[widget.curind]}",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          Expanded(
              child: Container(
            color: Colors.green,
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    FlutterClipboard.copy("${widget.shayrilist[widget.curind]}")
                        .then((value) => print('copied'));
                    Fluttertoast.showToast(
                        msg: "shayari copied",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "image/abc_ic_menu_copy_mtrl_am_alpha.png"))),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    if (widget.curind != 0) {
                      widget.curind--;
                      controller!.jumpToPage(widget.curind);
                      setState(() {});
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/ic_action_previous.png"))),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return forpagen(widget.shayrilist, widget.curind);
                      //return edit(widget.curind,widget.shayrilist);
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/pencil2.png"))),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    if (widget.curind < widget.shayrilist.length - 1) {
                      widget.curind++;
                      controller!.jumpToPage(widget.curind);
                      setState(() {});
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("image/ic_action_next_item.png"))),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Share.share("${widget.shayrilist[widget.curind]}",
                        subject: 'Look what I made!');
                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/ic_action_share.png"))),
                  ),
                )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
